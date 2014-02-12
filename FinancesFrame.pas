unit FinancesFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DataModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, dxSkinsdxBarPainter, ActnList, dxBar, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, TeEngine, Series,
  ExtCtrls, TeeProcs, Chart, cxSplitter, cxGridLevel, cxGrid, ADODB;

type
  TFinanceFrame = class(TFrame)
    cxGrid2: TcxGrid;
    cxGrid2Level2: TcxGridLevel;
    cxSplitter1: TcxSplitter;
    FinancesView: TcxGridDBTableView;
    dxBarManager1: TdxBarManager;
    EditBar: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    FinancesViewid: TcxGridDBColumn;
    FinancesViewFinValue: TcxGridDBColumn;
    FinancesViewFinDate: TcxGridDBColumn;
    FinancesViewFinNote: TcxGridDBColumn;
    ChartQR: TADOQuery;
    ChartQRMonth: TIntegerField;
    ChartQRYear: TIntegerField;
    ChartQRSumValue: TFloatField;
    Chart1: TChart;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series1: TBarSeries;
    PM: TdxBarPopupMenu;
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton3Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure FinancesViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
  private
    FEditable:boolean;
    FIniFileName:string;
    Style1,Style2:TcxStyle;
    function GetFocusedRecordID: integer;
    procedure SetFEditable(const Value: boolean);
    property FocusedRecordID:integer read GetFocusedRecordID;
  public
    property Editable:boolean read FEditable write SetFEditable;
    procedure ShowAll;
    procedure ShowByDates(BeginDate,EndDate:TDate);
    procedure RefreshGraph;
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

constructor TFinanceFrame.Create(AOwner: TComponent);
var i:integer;
begin
  inherited;
  Style1:=TcxStyle.Create(self);
  Style1.Color:=$00DFDFDF;
  Style2:=TcxStyle.Create(self);
  Style2.Color:=clwhite;
  Editable:=false;
  FIniFileName:=MainDM.IniFileName;
  try
    FinancesView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'FinancesView');
  except
  end;
  for i := 0 to FinancesView.ColumnCount - 1 do
     FinancesView.Columns[i].Visible:=true;
  FinancesViewID.Visible:=false;
end;

destructor TFinanceFrame.Destroy;
begin
   try
    FinancesView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'FinancesView');
  except
  end;
  inherited;
end;

procedure TFinanceFrame.dxBarButton1Click(Sender: TObject);
begin
  MainDM.CloseConnections;
  MainDM.OpenConnections;
  RefreshGraph;
end;

procedure TFinanceFrame.dxBarButton2Click(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
        FinancesView.DataController.DeleteFocused;
  RefreshGraph;
end;

procedure TFinanceFrame.dxBarButton3Click(Sender: TObject);
begin
    try
      FinancesView.DataController.Insert;
      FinancesView.DataController.BeginUpdate;
      FinancesViewFinDate.EditValue:=FormatDateTime('yyyy-mm-dd',now);
      FinancesView.DataController.PostEditingData;
      FinancesView.DataController.EndUpdate;
    //  RefreshGraph;
   except
     on e:exception do
       MainDM.MessageForm.ShowError('Ошибка добавления новой записи: '+e.message);
   end;
end;

procedure TFinanceFrame.dxBarButton4Click(Sender: TObject);
var RecordID:integer;
  i: Integer;
begin
   if FocusedRecordID>-1 then
   if MainDM.MessageForm.ShowQuestion('Дублировать текущую запись?',2)=mrYes then
   begin
     try
     RecordID:=FocusedRecordID+1;
       FinancesView.DataController.Insert;
       for i := 1 to FinancesView.ColumnCount-1 do
         begin
           if not varisnull(FinancesView.DataController.Values[RecordID,i]) then
             FinancesView.Columns[i].EditValue:=FinancesView.DataController.Values[RecordID,i];
         end;
       FinancesView.DataController.PostEditingData;
      // RefreshGraph;
   except
       on e:exception do
       MainDM.MessageForm.ShowError('Невозможно продублировать запись. Ошибка: '+e.message);
     end;
   end;
end;

procedure TFinanceFrame.dxBarButton5Click(Sender: TObject);
begin
  try
    FinancesView.DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TFinanceFrame.FinancesViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

function TFinanceFrame.GetFocusedRecordID: integer;
begin
    if FinancesView.DataController.RecordCount=0 then
       Result:=-1
  else
       Result:=FinancesView.DataController.FocusedRecordIndex;
end;

procedure TFinanceFrame.RefreshGraph;
var ChSeries:TChartSeries;
    i:integer;
    AYear,AMonth,ADay : word;
    year :integer;
begin
  if ChartQR.Active then
    ChartQR.Close;
  ChartQR.Open;
  Series3.Clear;
  Series4.Clear;
  Series1.Clear;

  DecodeDate(Now,AYear,AMonth,ADay);
  year:=integer(AYear);

  for i := 0 to ChartQR.RecordCount - 1 do
    begin
     if ChartQRYear.AsInteger = year-2 then
         Series3.AddXY(ChartQRMonth.AsInteger,ChartQRSumValue.AsFloat);
      if ChartQRYear.AsInteger = year-1 then
          Series4.AddXY(ChartQRMonth.AsInteger,ChartQRSumValue.AsFloat);
      if ChartQRYear.AsInteger = year then
          Series1.AddXY(ChartQRMonth.AsInteger,ChartQRSumValue.AsFloat);
      ChartQR.Next;
    end;
  //добавляем значения на ось Х с подписями
  Chart1.BottomAxis.Items.Clear;
  for i := 1 to 12 do
    begin
      Chart1.BottomAxis.Items.Add(i);
      Chart1.BottomAxis.Items.Item[i-1].Text:=LongMonthNames[i];
    end;
end;

procedure TFinanceFrame.SetFEditable(const Value: boolean);
begin
  FEditable := Value;
  if FEditable then
    begin
       EditBar.Visible:=True;
       FinancesView.PopupMenu := PM;
       FinancesView.OptionsData.Editing:=True;
    end
    else
    begin
       EditBar.Visible:=False;
       FinancesView.PopupMenu := nil;
       FinancesView.OptionsData.Editing:=False;
    end;
end;

procedure TFinanceFrame.ShowAll;
begin
   FinancesView.DataController.Filter.Root.Clear;
   FinancesView.DataController.Filter.Active:=True;
end;

procedure TFinanceFrame.ShowByDates(BeginDate, EndDate: TDate);
var BD,ED:TDateTime;
begin
  try
    BD:=StrToDateTime(DateToStr(BeginDate)+' 00:00:00');
    ED:=StrToDateTime(DateToStr(EndDate)+' 23:59:59');
    FinancesView.DataController.Filter.Root.Clear;
    FinancesView.DataController.Filter.Root.AddItem(FinancesViewFinDate,foGreaterEqual,BD,'');
    FinancesView.DataController.Filter.Root.AddItem(FinancesViewFinDate,foLessEqual,ED,'');
    FinancesView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

end.
