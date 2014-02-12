unit CashesOrgFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DataModule, cxCalendar,
  dxSkinsdxBarPainter, dxBar, GUIListForm, cxDropDownEdit, cxDBLookupComboBox,
  cxMaskEdit, cxTextEdit, cxSplitter, ExtCtrls, ADODB,
  CashesForm;

type
  TCashOrgFrame = class(TFrame)
    CashOrgView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxBarManager1: TdxBarManager;
    EditBar: TdxBar;
    UpdateDataBtn: TdxBarButton;
    dxBarButton2: TdxBarButton;
    InsertVTransactBtn: TdxBarButton;
    CopyVTransactBtn: TdxBarButton;
    ApplyVTransactBtn: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton1: TdxBarButton;
    CashOrgQR: TADOQuery;
    CashOrgDS: TDataSource;
    CashOrgQRSumPlus: TFloatField;
    CashOrgQRSumMinus: TFloatField;
    CashOrgViewSumPlus: TcxGridDBColumn;
    CashOrgViewSumMinus: TcxGridDBColumn;
    CashOrgQRDif: TFloatField;
    CashOrgViewDif: TcxGridDBColumn;
    CashOrgQROrgName: TWideStringField;
    CashOrgViewOrgName: TcxGridDBColumn;
    CashOrgQROrgId: TIntegerField;
    CashOrgViewOrgId: TcxGridDBColumn;
    dxBarSubItem1: TdxBarSubItem;
    dxBarButton3: TdxBarButton;
    procedure CopyVTransactBtnClick(Sender: TObject);
    procedure ApplyVTransactBtnClick(Sender: TObject);
    procedure UpdateDataBtnClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure VinnikViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
  private
    FEditable:boolean;
    FIniFileName:string;
    Style1,Style2:TcxStyle;
    FBeginDate,FEndDate:TDate;
    FFilterDif: boolean;
    function GetEditValue(Source:variant):variant;
    function GetFocusedRecordID: integer;
    procedure SetFEditable(const Value: boolean);
    function GetSelectedID: integer;
    procedure SetFilterDif(const Value: boolean);
    property FocusedRecordID:integer read GetFocusedRecordID;
  public
    property FilterDif:boolean read FFilterDif write SetFilterDif;
    property Editable:boolean read FEditable write SetFEditable;
    property SelectedID:integer read GetSelectedID;
    procedure ShowAll;
    procedure ShowByDates(BeginDate,EndDate:TDate);
    procedure ShowDetail;
    procedure ShowNew;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

procedure TCashOrgFrame.ApplyVTransactBtnClick(Sender: TObject);
begin
  try
    CashOrgView.DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TCashOrgFrame.CopyVTransactBtnClick(Sender: TObject);
begin
  ShowDetail;
end;

constructor TCashOrgFrame.Create(AOwner: TComponent);
var i:integer;
begin
  inherited;
  Style1:=TcxStyle.Create(self);
  Style1.Color:=$00DFDFDF;
  Style2:=TcxStyle.Create(self);
  Style2.Color:=clwhite;
  Editable:=false;
  FFilterDif := false;
  FIniFileName:=MainDM.IniFileName;
  try
    CashOrgView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'CashOrgView');
  except
  end;
end;

destructor TCashOrgFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    CashOrgView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'CashOrgView');
  except
  end;
  inherited;
end;

procedure TCashOrgFrame.dxBarButton1Click(Sender: TObject);
var BD,ED:TDateTime;
begin

end;

procedure TCashOrgFrame.dxBarButton2Click(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
        CashOrgView.DataController.DeleteFocused
end;

procedure TCashOrgFrame.dxBarButton3Click(Sender: TObject);
begin
  ShowNew;
end;

function TCashOrgFrame.GetFocusedRecordID: integer;
begin
  if CashOrgView.DataController.RecordCount=0 then
       Result:=-1
  else
       Result:=CashOrgView.DataController.FocusedRecordIndex;
end;

function TCashOrgFrame.GetSelectedID: integer;
begin
   if CashOrgView.DataController.RecordCount >0 then
     Result := CashOrgViewOrgId.EditValue
   else
     Result := -1;
end;

procedure TCashOrgFrame.VinnikViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TCashOrgFrame.SetFEditable(const Value: boolean);
begin
 
end;

procedure TCashOrgFrame.SetFilterDif(const Value: boolean);
begin
  FFilterDif := Value;
  ShowByDates(FBeginDate,FEndDate);
end;

procedure TCashOrgFrame.ShowAll;
begin
  CashOrgView.DataController.Filter.Root.Clear;
  CashOrgView.DataController.Filter.Active:=True;
end;

procedure TCashOrgFrame.ShowByDates(BeginDate, EndDate: TDate);
var BD,ED:TDateTime;
begin
 FBeginDate := BeginDate;
 FEndDate := EndDate;
 CashOrgQR.Close;
 CashOrgQR.Parameters.ParamByName('bd').Value := BeginDate;
 CashOrgQR.Parameters.ParamByName('ed').Value := EndDate;
 CashOrgQR.Parameters.ParamByName('bd1').Value := BeginDate;
 CashOrgQR.Parameters.ParamByName('ed1').Value := EndDate;
 CashOrgQR.Parameters.ParamByName('FilterDif').Value := integer(FilterDif);
 CashOrgQR.Parameters.ParamByName('FilterDif1').Value := integer(FilterDif);
 CashOrgQR.Open;
end;

procedure TCashOrgFrame.ShowDetail;
var f:TCashForm;
begin
  f:=TCashForm.Create(nil);
  try
    if f.ShowOrg(GetSelectedID,FBeginDate,FEndDate)=mrOK then
      UpdateDataBtnClick(nil);
  finally
    f.Free;
  end;
end;

procedure TCashOrgFrame.ShowNew;
var f:TCashForm;
begin
  f:=TCashForm.Create(nil);
  try
    if f.ShowOrg(-1,FBeginDate,FEndDate,true)=mrOK then
      UpdateDataBtnClick(nil);
  finally
    f.Free;
  end;
end;

procedure TCashOrgFrame.UpdateDataBtnClick(Sender: TObject);
begin
  CashOrgQR.Close;
  CashOrgQR.Open;
end;

function TCashOrgFrame.GetEditValue(Source:variant):variant;
begin
  if not varisnull(source) then
    Result:= source
  else
    Result:=0;
end;

end.
