unit GUIMaterial;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Menus, StdCtrls,
  cxButtons, cxMaskEdit, cxTextEdit, cxDropDownEdit, cxLookupEdit,
  cxDBLookupEdit, cxDBLookupComboBox, cxLabel, DB, ADODB, cxDBEdit, GUIListForm,
  dxSkinDarkRoom, dxSkinBlack;

type
  TMaterialForm = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    GroupQuery: TADOQuery;
    GroupDS: TDataSource;
    MatQuery: TADOQuery;
    MatDS: TDataSource;
    matGroupComboBox: TcxLookupComboBox;
    matComboBox: TcxLookupComboBox;
    CostDBEdit: TcxDBTextEdit;
    procedure matGroupComboBoxPropertiesEditValueChanged(Sender: TObject);
    procedure matComboBoxPropertiesEditValueChanged(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    FSalePrice:double;
    procedure OnMatGroupsClick(Sender: TObject; AButtonIndex: Integer);
    procedure OnMaterialsClick(Sender: TObject; AButtonIndex: Integer);
  public
    property SalePrice:double read FSalePrice;
    function ShowMaterial(id:integer):integer;
  end;

var
  MaterialForm: TMaterialForm;

implementation

{$R *.dfm}

procedure TMaterialForm.FormCreate(Sender: TObject);
var Abut1,Abut2:TcxEditButton;
begin
  Abut1:=MatGroupComboBox.Properties.Buttons.Add;
  Abut1.Kind:= bkEllipsis;
  MatGroupComboBox.Properties.OnButtonClick:=OnMatGroupsClick;

  Abut2:=MatComboBox.Properties.Buttons.Add;
  Abut2.Kind:= bkEllipsis;
  MatComboBox.Properties.OnButtonClick:=OnMaterialsClick;
end;

procedure TMaterialForm.matComboBoxPropertiesEditValueChanged(Sender: TObject);
begin
  try
    MatQuery.Locate('ID',matComboBox.EditValue,[]);
  except
    MainDM.MessageForm.ShowError('Невозможно отобразить список')
  end;
end;

procedure TMaterialForm.matGroupComboBoxPropertiesEditValueChanged(
  Sender: TObject);
begin
   try
     MatQuery.Close;
     MatQuery.SQL.Text:='Select * from Materials where MaterialGroup=:MaterialGroup';
     MatQuery.Parameters[0].Value:=matGroupComboBox.EditValue;
     MatQuery.Open;
     matComboBox.EditValue:=MatQuery.FieldByName('ID').Value;
   except
     MainDM.MessageForm.ShowError('Невозможно отобразить список')
   end;
end;

procedure TMaterialForm.OnMaterialsClick(Sender: TObject;
  AButtonIndex: Integer);
var ListForm:TListForm;
    CurrID,MatID,GroupID:integer;
begin
  try
  if AButtonIndex=1 then
  begin
    ListForm:=TListForm.Create(self);
    try
      if not varisnull(TcxCustomEdit(Sender).EditValue) then
       CurrID:=TcxCustomEdit(Sender).EditValue
      else
       CurrID:=0;
      if not varisnull(matGroupComboBox.EditValue) then
        begin
        GroupID:=matGroupComboBox.EditValue;
        MatID:=ListForm.ShowMaterials(GroupID,CurrID);
        MatQuery.Close;
        MatQuery.Open;
        if MatID>0 then
          begin
            MatcomboBox.EditValue:=MatID;
            TcxCustomEdit(Sender).PostEditValue;
          end;
      end
      else
        MainDM.MessageForm.ShowNotify('Пожалуйста, укажите группу материалов')
    finally
      ListForm.Free;
    end;
  end
  else
    MatcomboBox.InitiateAction;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TMaterialForm.OnMatGroupsClick(Sender: TObject;
  AButtonIndex: Integer);
var ListForm:TListForm;
    CurrID,GroupID:integer;
begin
  try
  if AButtonIndex=1 then
  begin
    ListForm:=TListForm.Create(self);
    try
      if not varisnull(TcxCustomEdit(Sender).EditValue) then
       CurrID:=TcxCustomEdit(Sender).EditValue
      else
       CurrID:=0;
      GroupID:=ListForm.ShowMatGroups(CurrID);
      GroupQuery.Close;
      GroupQuery.Open;
      if GroupID>0 then
        begin
          MatGroupComboBox.EditValue:=GroupID;
          TcxCustomEdit(Sender).PostEditValue;
        end;
    finally
      ListForm.Free;
    end;
  end
  else
    MatGroupComboBox.InitiateAction;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

function TMaterialForm.ShowMaterial(id: integer): integer;
begin
  Result:=0;
  try
    MatQuery.Open;
    GroupQuery.Open;
    MatQuery.Locate('ID',id,[]);
    matComboBox.EditValue:=MatQuery.FieldByName('ID').Value;
    matGroupComboBox.EditValue:=MatQuery.FieldByName('MaterialGroup').Value;
    if showModal=mrOK then
       begin
        if not varisnull(MatQuery.FieldByName('ID').Value) then
           Result:=MatQuery.FieldByName('ID').Value;
        if not varisnull(MatQuery.FieldByName('Cost').Value) then
          FSalePrice:=MatQuery.FieldByName('Cost').Value;
       end;
    MatQuery.Close;
    GroupQuery.Close;
  except
    MainDM.MessageForm.ShowError('Невозможно отобразить список')
  end;
end;

end.
