unit CashesTranspFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DataModule, cxCalendar,
  dxSkinsdxBarPainter, dxBar, GUIListForm, cxDropDownEdit, cxDBLookupComboBox,
  cxMaskEdit, cxTextEdit, cxSplitter, ExtCtrls, ADODB, CashesForm;

type
  TCashTranspFrame = class(TFrame)
    CashTranspView: TcxGridDBTableView;
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
    CashTranspQR: TADOQuery;
    CashTranspDS: TDataSource;
    CashTranspQRTransporterName: TWideStringField;
    CashTranspQRSumPlus: TFloatField;
    CashTranspQRSumMinus: TFloatField;
    CashTranspQRDif: TFloatField;
    CashTranspViewTransporterName: TcxGridDBColumn;
    CashTranspViewSumPlus: TcxGridDBColumn;
    CashTranspViewSumMinus: TcxGridDBColumn;
    CashTranspViewDif: TcxGridDBColumn;
    CashTranspQRTranspId: TIntegerField;
    CashTranspViewTranspId: TcxGridDBColumn;
    procedure InsertVTransactBtnClick(Sender: TObject);
    procedure CopyVTransactBtnClick(Sender: TObject);
    procedure ApplyVTransactBtnClick(Sender: TObject);
    procedure UpdateDataBtnClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure VinnikViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure dxBarButton1Click(Sender: TObject);
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

procedure TCashTranspFrame.ApplyVTransactBtnClick(Sender: TObject);
begin
  try
    CashTranspView.DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TCashTranspFrame.CopyVTransactBtnClick(Sender: TObject);
begin
   ShowDetail;
end;

constructor TCashTranspFrame.Create(AOwner: TComponent);
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
    CashTranspView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'CashTranspView');
  except
  end;
end;

destructor TCashTranspFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    CashTranspView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'CashTranspView');
  except
  end;
  inherited;
end;

procedure TCashTranspFrame.dxBarButton1Click(Sender: TObject);
var BD,ED:TDateTime;
begin

end;

procedure TCashTranspFrame.dxBarButton2Click(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
        CashTranspView.DataController.DeleteFocused
end;

function TCashTranspFrame.GetFocusedRecordID: integer;
begin
  if CashTranspView.DataController.RecordCount=0 then
       Result:=-1
  else
       Result:=CashTranspView.DataController.FocusedRecordIndex;
end;

function TCashTranspFrame.GetSelectedID: integer;
begin
   if CashTranspView.DataController.RecordCount >0  then
     Result := CashTranspViewTranspId.EditValue
   else
     Result := -1;
end;

procedure TCashTranspFrame.InsertVTransactBtnClick(Sender: TObject);
var RecCount,RecIndex:integer;
begin
 ShowNew;
end;

procedure TCashTranspFrame.VinnikViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TCashTranspFrame.SetFEditable(const Value: boolean);
begin

end;

procedure TCashTranspFrame.SetFilterDif(const Value: boolean);
begin
  FFilterDif := Value;
  ShowByDates(FBeginDate,FEndDate);
end;

procedure TCashTranspFrame.ShowAll;
begin

end;

procedure TCashTranspFrame.ShowByDates(BeginDate, EndDate: TDate);
var BD,ED:TDateTime;
begin
  FBeginDate := BeginDate;
  FEndDate := EndDate;
  CashTranspQR.Close;
  CashTranspQR.Parameters.ParamByName('bd').Value := BeginDate;
  CashTranspQR.Parameters.ParamByName('ed').Value := EndDate;
  CashTranspQR.Parameters.ParamByName('bd1').Value := BeginDate;
  CashTranspQR.Parameters.ParamByName('ed1').Value := EndDate;
  CashTranspQR.Parameters.ParamByName('FilterDif').Value := integer(FilterDif);
  CashTranspQR.Parameters.ParamByName('FilterDif1').Value := integer(FilterDif);
  CashTranspQR.Open;
end;

procedure TCashTranspFrame.ShowDetail;
var f:TCashForm;
begin
  f:=TCashForm.Create(nil);
  try
    if f.ShowTransp(GetSelectedID,FBeginDate,FEndDate)= mrOK then
      UpdateDataBtnClick(nil);
  finally
    f.Free;
  end;
end;

procedure TCashTranspFrame.ShowNew;
var f:TCashForm;
    r:integer;
begin
  f:=TCashForm.Create(nil);
  try
    if f.ShowTransp(-1,FBeginDate,FEndDate, true)= mrOK then
      UpdateDataBtnClick(nil);
  finally
    f.Free;
  end;
end;

procedure TCashTranspFrame.UpdateDataBtnClick(Sender: TObject);
begin
  CashTranspQR.Close;
  CashTranspQR.Open;
end;

function TCashTranspFrame.GetEditValue(Source:variant):variant;
begin
  if not varisnull(source) then
    Result:= source
  else
    Result:=0;
end;

end.
