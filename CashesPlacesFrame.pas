unit CashesPlacesFrame;

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
  TCashPlacesFrame = class(TFrame)
    CashPlaceView: TcxGridDBTableView;
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
    CashPlaceQR: TADOQuery;
    CashPlaceDS: TDataSource;
    CashPlaceQRPlaceName: TWideStringField;
    CashPlaceQRSumPlus: TFloatField;
    CashPlaceQRSumMinus: TFloatField;
    CashPlaceQRDif: TFloatField;
    CashPlaceViewPlaceName: TcxGridDBColumn;
    CashPlaceViewSumPlus: TcxGridDBColumn;
    CashPlaceViewSumMinus: TcxGridDBColumn;
    CashPlaceViewDif: TcxGridDBColumn;
    CashPlaceQRPlaceId: TIntegerField;
    CashPlaceViewPlaceId: TcxGridDBColumn;
    procedure InsertVTransactBtnClick(Sender: TObject);
    procedure CopyVTransactBtnClick(Sender: TObject);
    procedure ApplyVTransactBtnClick(Sender: TObject);
    procedure UpdateDataBtnClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure VinnikViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
  private
    FEditable:boolean;
    FIniFileName:string;
    Style1,Style2:TcxStyle;
    FBeginDate,FEndDate:TDate;
    FFilterDif: boolean;
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

procedure TCashPlacesFrame.ApplyVTransactBtnClick(Sender: TObject);
begin
  try
    CashPlaceView.DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TCashPlacesFrame.CopyVTransactBtnClick(Sender: TObject);
begin
   ShowDetail;
end;

constructor TCashPlacesFrame.Create(AOwner: TComponent);
var Abut,Abut2,Abut3,ABut4:TcxEditButton;
    i:integer;
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
    CashPlaceView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'CashPlaceView');
  except
  end;
end;

destructor TCashPlacesFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    CashPlaceView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'CashPlaceView');
  except
  end;
  inherited;
end;

procedure TCashPlacesFrame.dxBarButton2Click(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
        CashPlaceView.DataController.DeleteFocused
end;

function TCashPlacesFrame.GetFocusedRecordID: integer;
begin
  if CashPlaceView.DataController.RecordCount=0 then
       Result:=-1
  else
       Result:=CashPlaceView.DataController.FocusedRecordIndex;
end;

function TCashPlacesFrame.GetSelectedID: integer;
begin
   if CashPlaceView.DataController.RecordCount >0 then
     Result := CashPlaceViewPlaceId.EditValue
   else
     Result := -1;
end;

procedure TCashPlacesFrame.InsertVTransactBtnClick(Sender: TObject);
begin
  ShowNew;
end;

procedure TCashPlacesFrame.VinnikViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TCashPlacesFrame.SetFEditable(const Value: boolean);
begin
end;

procedure TCashPlacesFrame.SetFilterDif(const Value: boolean);
begin
  FFilterDif := Value;
  ShowByDates(FBeginDate,FEndDate);
end;

procedure TCashPlacesFrame.ShowAll;
begin
  CashPlaceView.DataController.Filter.Root.Clear;
  CashPlaceView.DataController.Filter.Active:=True;
end;

procedure TCashPlacesFrame.ShowByDates(BeginDate, EndDate: TDate);
begin
 FBeginDate := BeginDate;
 FEndDate := EndDate;
 CashPlaceQR.Close;
 CashPlaceQR.Parameters.ParamByName('bd').Value := BeginDate;
 CashPlaceQR.Parameters.ParamByName('ed').Value := EndDate;
 CashPlaceQR.Parameters.ParamByName('bd1').Value := BeginDate;
 CashPlaceQR.Parameters.ParamByName('ed1').Value := EndDate;
 CashPlaceQR.Parameters.ParamByName('FilterDif').Value := integer(FilterDif);
 CashPlaceQR.Parameters.ParamByName('FilterDif1').Value := integer(FilterDif);
 CashPlaceQR.Open;
end;

procedure TCashPlacesFrame.ShowDetail;
var f:TCashForm;
begin
  f:=TCashForm.Create(nil);
  try
    if f.ShowPlace(GetSelectedID,FBeginDate,FEndDate)=mrOK then
      UpdateDataBtnClick(nil);
  finally
    f.Free;
  end;
end;

procedure TCashPlacesFrame.ShowNew;
var f:TCashForm;
begin
  f:=TCashForm.Create(nil);
  try
    if f.ShowPlace(-1,FBeginDate,FEndDate,true)=mrOK then
      UpdateDataBtnClick(nil);
  finally
    f.Free;
  end;
end;

procedure TCashPlacesFrame.UpdateDataBtnClick(Sender: TObject);
begin
  CashPlaceQR.Close;
  CashPlaceQR.Open;
end;

end.
