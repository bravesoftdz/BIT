unit CashesForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinscxPCPainter, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxEdit, DB, cxDBData, Menus, StdCtrls, cxButtons, ExtCtrls,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, dxSkinsdxBarPainter, ImgList,
  dxBar, cxCheckBox, DataModule, cxTextEdit, dxSkinDarkRoom, ADODB, dxSkinBlack,
  cxBlobEdit, cxButtonEdit, GUIPrivilegeForm;

type
  TCashForm = class(TForm)
    OrgView: TcxGridDBTableView;
    OrgLevel: TcxGridLevel;
    ListGrid: TcxGrid;
    Panel1: TPanel;
    Panel2: TPanel;
    OKButton: TcxButton;
    CancelButton: TcxButton;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    AddButton: TdxBarButton;
    ChangeButton: TdxBarButton;
    DeleteButton: TdxBarButton;
    dxBarButton4: TdxBarButton;
    UpdateButton: TdxBarButton;
    TransporterLevel: TcxGridLevel;
    PlacesLevel: TcxGridLevel;
    TransporterView: TcxGridDBTableView;
    dxBarButton1: TdxBarButton;
    PlacesView: TcxGridDBTableView;
    OrgViewid: TcxGridDBColumn;
    OrgViewNote: TcxGridDBColumn;
    OrgViewTransactDate: TcxGridDBColumn;
    OrgViewTransactValue: TcxGridDBColumn;
    TransporterViewId: TcxGridDBColumn;
    TransporterViewTransactDate: TcxGridDBColumn;
    TransporterViewTransactValue: TcxGridDBColumn;
    TransporterViewTranspId: TcxGridDBColumn;
    PlacesViewId: TcxGridDBColumn;
    PlacesViewTransactDate: TcxGridDBColumn;
    PlacesViewTransactValue: TcxGridDBColumn;
    PlacesViewPlaceId: TcxGridDBColumn;
    OrgViewOrgId: TcxGridDBColumn;
    TransporterViewNote: TcxGridDBColumn;
    PlacesViewNote: TcxGridDBColumn;
    procedure AddButtonClick(Sender: TObject);
    procedure DeleteButtonClick(Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure UpdateButtonClick(Sender: TObject);
    procedure OKButtonClick(Sender: TObject);
  private
    InputIndex:integer;
  public
    function ShowOrg(id:integer; BeginDate,EndDate:TDateTime; new:boolean = false):integer;
    function ShowTransp(id:integer; BeginDate,EndDate:TDateTime; new:boolean = false):integer;
    function ShowPlace(id:integer; BeginDate,EndDate:TDateTime; new:boolean = false):integer;
  end;

var
  CashForm: TCashForm;

implementation

{$R *.dfm}

{ TCashForm }

procedure TCashForm.AddButtonClick(Sender: TObject);
begin
     TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Insert;
     if ListGrid.ActiveLevel = OrgLevel then
      begin
        if InputIndex<>-1 then OrgViewOrgId.EditValue := InputIndex;
        OrgViewTransactDate.EditValue := FormatDateTime('dd.mm.yyyy',now);
      end;
     if ListGrid.ActiveLevel = TransporterLevel then
      begin
        if InputIndex<>-1 then TransporterViewTranspId.EditValue := InputIndex;
        TransporterViewTransactDate.EditValue :=  FormatDateTime('dd.mm.yyyy',now);
      end;
     if ListGrid.ActiveLevel = PlacesLevel then
      begin
        if InputIndex<>-1 then PlacesViewPlaceId.EditValue := InputIndex;
        PlacesViewTransactDate.EditValue :=  FormatDateTime('dd.mm.yyyy',now);
      end;
     OKButton.Enabled:=True;
end;

procedure TCashForm.UpdateButtonClick(Sender: TObject);
begin
  ListGrid.ActiveLevel.GridView.DataController.Refresh;

end;

procedure TCashForm.OKButtonClick(Sender: TObject);
begin
  try
    TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Post(True);
    ModalResult:=mrOK;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка обновления '+e.message);
  end;
end;


procedure TCashForm.DeleteButtonClick(Sender: TObject);
var RecordID:integer;
begin
  try
    if ListGrid.ActiveView.DataController.FocusedRecordIndex>-1 then
    if ListGrid.ActiveView.DataController.Values[ListGrid.ActiveView.DataController.FocusedRecordIndex,0]>0 then
    begin
    if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
      begin
         RecordID:=TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Values[
           TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.FocusedRecordIndex,0];
         if ListGrid.ActiveView.DataController.RecordCount=0 then
            OKButton.Enabled:=False
         else
            TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
      end;
    end
    else
     TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.DeleteFocused;
  except
        on e:exception do
        MainDM.MessageForm.ShowError('Невозможно удалить запись. Ошибка: '+e.Message);
  end;
end;

procedure TCashForm.dxBarButton1Click(Sender: TObject);
begin
  try
    TcxGridDBTableView(ListGrid.ActiveLevel.GridView).DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

function TCashForm.ShowTransp(id: integer; BeginDate,EndDate:TDateTime; new:boolean): integer;
begin
   try
     InputIndex:=id;
     MainDM.CashTranspQR.Close;
     MainDM.CashTranspQR.Parameters.ParamByName('transp_id').Value := id;
     MainDM.CashTranspQR.Parameters.ParamByName('bd').Value := BeginDate;
     MainDM.CashTranspQR.Parameters.ParamByName('ed').Value := EndDate;
     MainDM.CashTranspQR.Open;
     self.Caption:='Перевозчики';
     ListGrid.ActiveLevel:=TransporterLevel;
     if new then
       AddButtonClick(self);
     Result:=showModal;

   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить. Ошибка: '+e.message);
   end;
end;

function TCashForm.ShowOrg(id: integer; BeginDate,EndDate:TDateTime; new:boolean): integer;
begin
   try
     InputIndex:=id;
     MainDM.CashOrgQR.Close;
     MainDM.CashOrgQR.Parameters.ParamByName('org_id').Value := id;
     MainDM.CashOrgQR.Parameters.ParamByName('bd').Value := BeginDate;
     MainDM.CashOrgQR.Parameters.ParamByName('ed').Value := EndDate;
     MainDM.CashOrgQR.Open;
     self.Caption:='Клиенты';
     ListGrid.ActiveLevel:=OrgLevel;
     if new then
       AddButtonClick(self);
     Result:=showModal;
   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить. Ошибка: '+e.message);
   end;
end;

function TCashForm.ShowPlace(id: integer; BeginDate,EndDate:TDateTime; new:boolean): integer;
begin
    try
     InputIndex:=id;
     MainDM.CashPlaceQR.Close;
     MainDM.CashPlaceQR.Parameters.ParamByName('place_id').Value := id;
     //MainDM.CashPlaceQR.Parameters.ParamByName('place_id1').Value := id;
     MainDM.CashPlaceQR.Parameters.ParamByName('bd').Value := BeginDate;
     MainDM.CashPlaceQR.Parameters.ParamByName('ed').Value := EndDate;
     MainDM.CashPlaceQR.Open;
     self.Caption:='Карьеры';
     ListGrid.ActiveLevel:=PlacesLevel;
     if new then
       AddButtonClick(self);
     Result:=showModal;
   except
     on e:exception do
     MainDM.MessageForm.ShowError('Невозможно отобразить. Ошибка: '+e.message);
   end;
end;

end.
