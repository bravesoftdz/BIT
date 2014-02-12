unit GUIMainTransactForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Menus, StdCtrls,
  cxButtons, cxGroupBox, cxMaskEdit, cxDropDownEdit, cxLookupEdit, DB,
  cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxCalendar, cxLabel, ADODB,
  TypesAndConstants, ExtCtrls, GUIListForm;

type
  TMainTransactForm = class(TForm)
    cxLabel1: TcxLabel;
    DateEdit: TcxDateEdit;
    cxLabel2: TcxLabel;
    matGroupComboBox: TcxLookupComboBox;
    cxLabel5: TcxLabel;
    CostEdit: TcxMaskEdit;
    cxMaskEdit1: TcxMaskEdit;
    cxLabel6: TcxLabel;
    cxLabel7: TcxLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    cxGroupBox1: TcxGroupBox;
    cxGroupBox2: TcxGroupBox;
    cxLabel3: TcxLabel;
    matComboBox: TcxLookupComboBox;
    cxLabel4: TcxLabel;
    OrgComboBox: TcxLookupComboBox;
    cxGroupBox3: TcxGroupBox;
    cxMaskEdit3: TcxMaskEdit;
    cxLabel9: TcxLabel;
    cxLabel10: TcxLabel;
    cxLabel11: TcxLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    cxMaskEdit4: TcxMaskEdit;
    cxLookupComboBox4: TcxLookupComboBox;
    cxLabel13: TcxLabel;
    cxGroupBox4: TcxGroupBox;
    cxMaskEdit6: TcxMaskEdit;
    cxLabel14: TcxLabel;
    cxLookupComboBox6: TcxLookupComboBox;
    cxLabel18: TcxLabel;
    cxGroupBox5: TcxGroupBox;
    cxMaskEdit7: TcxMaskEdit;
    cxLabel15: TcxLabel;
    cxLookupComboBox5: TcxLookupComboBox;
    cxLabel19: TcxLabel;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    ScrollBox1: TScrollBox;
    Panel1: TPanel;
    OrgConfigure: TcxButton;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure OrgConfigureClick(Sender: TObject);
  private
    FTransact: TMainTransact;
    procedure SetTransact(const Value: TMainTransact);
    { Private declarations }
  public
    property Transact:TMainTransact read FTransact write SetTransact;
    function ShowTransact(id:integer):integer;
  end;

var
  MainTransactForm: TMainTransactForm;

implementation

{$R *.dfm}

{ TMainTransactForm }

procedure TMainTransactForm.FormCreate(Sender: TObject);
begin
  MainDM.OrganizationsQuery.Open;
  MainDM.MaterialsQuery.Open;
end;

procedure TMainTransactForm.FormDestroy(Sender: TObject);
begin
   MainDM.MaterialsQuery.Close;
   MainDM.OrganizationsQuery.Close;
end;

procedure TMainTransactForm.OrgConfigureClick(Sender: TObject);
var OrgListForm:TListForm;
    ShowResultID:integer;
begin
  OrgListForm:=TListForm.create(self);
  try
    ShowResultID:=OrgListForm.ShowOrganization(OrgComboBox.ItemIndex);
    if ShowResultID>0 then
       OrgComboBox.EditValue:=ShowResultID;
  finally
    OrgListForm.Free;
  end;
end;

procedure TMainTransactForm.SetTransact(const Value: TMainTransact);
begin
  FTransact := Value;
end;

function TMainTransactForm.ShowTransact(id: integer): integer;
var Query:TADOQuery;
begin
   Query:=TADOQuery.Create(nil);
   try
     Query.Connection:=MainDM.DBConnect;
     Query.SQL.Text:='Select * from MainTransactions where ID='+inttostr(id);
     try
       Query.Open;
       DateEdit.Date:=now;
       OrgComboBox.ItemIndex:=Query.FieldByName('OrganizationID').AsInteger-1;
     //  MatGroupComboBox.ItemIndex:=Query.FieldByName('OrganizationID').AsInteger-1;
       MatComboBox.ItemIndex:=Query.FieldByName('MaterialID').AsInteger-1;
       Result:=ShowModal;
     except
       //error
     end;
   finally
     Query.Free;
   end;
end;

end.
