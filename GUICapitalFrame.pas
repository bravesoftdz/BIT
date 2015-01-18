unit GUICapitalFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DataModule, cxCalendar,
  dxSkinsdxBarPainter, dxBar, GUIListForm, cxDropDownEdit, cxDBLookupComboBox,
  cxMaskEdit, cxTextEdit, cxSplitter, ExtCtrls, TeEngine, Series, TeeProcs,
  Chart, ADODB;

type
  TCapitalFrame = class(TFrame)
    CapitalView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    cxSplitter1: TcxSplitter;
    Chart1: TChart;
    CapitalViewname: TcxGridDBColumn;
    CapitalViewJan: TcxGridDBColumn;
    CapitalViewFeb: TcxGridDBColumn;
    CapitalViewMar: TcxGridDBColumn;
    CapitalViewApr: TcxGridDBColumn;
    CapitalViewMay: TcxGridDBColumn;
    CapitalViewJun: TcxGridDBColumn;
    CapitalViewJul: TcxGridDBColumn;
    CapitalViewAug: TcxGridDBColumn;
    CapitalViewSep: TcxGridDBColumn;
    CapitalViewOct: TcxGridDBColumn;
    CapitalViewNov: TcxGridDBColumn;
    CapitalViewDcm: TcxGridDBColumn;
    ChartQR: TADOQuery;
    ChartQRMonth: TIntegerField;
    ChartQRYear: TIntegerField;
    ChartQRSumProfit: TFMTBCDField;
    UpdateQR: TADOQuery;
    InsertQR: TADOQuery;
    DateQR: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    Series2: TLineSeries;
    Series1: TLineSeries;
    DeleteQR: TADOQuery;
    procedure UpdateDataBtnClick(Sender: TObject);
    procedure VinnikViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
  private
    Style1,Style2:TcxStyle;
    FIniFileName:string;
    function GetEditValue(Source:variant):variant;
  public
    procedure ShowByYear(Year:integer);
    procedure Calculate(Year:integer);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}


constructor TCapitalFrame.Create(AOwner: TComponent);
var i:integer;
begin
  inherited;
  Style1:=TcxStyle.Create(self);
  Style1.Color:=$00DFDFDF;
  Style2:=TcxStyle.Create(self);
  Style2.Color:=clwhite;
  FIniFileName:=MainDM.IniFileName;
  try
    CapitalView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'CapitalView');
  except
  end;
  for i := 0 to CapitalView.ColumnCount - 1 do
     CapitalView.Columns[i].Visible:=true;
end;

destructor TCapitalFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    CapitalView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'CapitalView');
  except
  end;
  inherited;
end;

procedure TCapitalFrame.VinnikViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TCapitalFrame.ShowByYear(Year:integer);
var i:integer;
begin
  try
    MainDM.CapitalQR.Close;
    for i:=0 to MainDM.CapitalQR.Parameters.Count-1 do
      MainDM.CapitalQR.Parameters[i].Value := Year;
    MainDM.CapitalQR.Open;

    MainDM.CapitalQR.Last;
    Series1.Clear;

    for i := 1 to 12 do
    begin
      Series1.AddXY(i,MainDM.CapitalQR.Fields[i].AsInteger,LongMonthNames[i]);
    end;

  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TCapitalFrame.UpdateDataBtnClick(Sender: TObject);
begin
  MainDM.CloseConnections;
  MainDM.OpenConnections;
end;

function TCapitalFrame.GetEditValue(Source:variant):variant;
begin
  if not varisnull(source) then
    Result:= source
  else
    Result:=0;
end;

procedure TCapitalFrame.Calculate(Year:integer);
var Query:TADOQuery;
    i:integer;
    sand,finances,expenses: double;
begin
  Query:=TADOQuery.Create(self);
  try
   try
    Query.Connection:=MainDM.DBConnect;
    if DateQR.Active then DateQR.Close;
  //  DateQR.Parameters.ParamByName('Full').Value := integer(FullProcess);
    DateQR.Open;

    DeleteQR.ExecSQL;

    for i := 0 to DateQR.RecordCount - 1 do
     begin
      Query.SQL.Clear;
      // песок
      Query.SQL.Add('select ISNULL(sum(CommonProfit),0) from MainTransactions');
      Query.SQL.Add(' where Month(MainTransactions.TransactDate)=:Month');
      Query.SQL.Add(' and YEAR(MainTransactions.TransactDate)=:Year');
      Query.Parameters.ParamByName('Month').Value:=DateQR.FieldByName('Month').AsInteger;
      Query.Parameters.ParamByName('Year').Value:=DateQR.FieldByName('Year').AsInteger;
      Query.Open;
      sand:=Query.Fields[0].AsFloat;
      // финансы
      Query.SQL.Clear;
      Query.SQL.Add('select ISNULL(sum(FinValue),0) from Finances');
      Query.SQL.Add(' where Month(Finances.FinDate)=:Month');
      Query.SQL.Add(' and YEAR(Finances.FinDate)=:Year');
      Query.Parameters.ParamByName('Month').Value:=DateQR.FieldByName('Month').AsInteger;
      Query.Parameters.ParamByName('Year').Value:=DateQR.FieldByName('Year').AsInteger;
      Query.Open;
      finances:=Query.Fields[0].AsFloat;
      // расходы
      Query.SQL.Clear;
      Query.SQL.Add('select ISNULL(sum(ExpenseValue),0) from Expenses');
      Query.SQL.Add(' where Month(Expenses.ExpenseDate)=:Month');
      Query.SQL.Add(' and YEAR(Expenses.ExpenseDate)=:Year');
      Query.SQL.Add(' and ClearProfitException=0');
      Query.Parameters.ParamByName('Month').Value:=DateQR.FieldByName('Month').AsInteger;
      Query.Parameters.ParamByName('Year').Value:=DateQR.FieldByName('Year').AsInteger;
      Query.Open;
      expenses:=Query.Fields[0].AsFloat;
      // финансовые расходы
      Query.SQL.Clear;
      Query.SQL.Add('select ISNULL(sum(FinExpValue),0) from FinExpenses');
      Query.SQL.Add(' where Month(FinExpenses.FinExpDate)=:Month');
      Query.SQL.Add(' and YEAR(FinExpenses.FinExpDate)=:Year');
      Query.SQL.Add(' and ClearProfitException=0');
      Query.Parameters.ParamByName('Month').Value:=DateQR.FieldByName('Month').AsInteger;
      Query.Parameters.ParamByName('Year').Value:=DateQR.FieldByName('Year').AsInteger;
      Query.Open;
      expenses:=expenses+Query.Fields[0].AsFloat;
      // зарплата
      Query.SQL.Clear;
      Query.SQL.Add('select ISNULL(sum(SalaryValue),0) from Salary');
      Query.SQL.Add(' where Month(Salary.SalaryDate)=:Month');
      Query.SQL.Add(' and YEAR(Salary.SalaryDate)=:Year');
      Query.SQL.Add(' and ClearProfitException=0');
      Query.Parameters.ParamByName('Month').Value:=DateQR.FieldByName('Month').AsInteger;
      Query.Parameters.ParamByName('Year').Value:=DateQR.FieldByName('Year').AsInteger;
      Query.Open;
      expenses:=expenses+Query.Fields[0].AsFloat;

      Query.SQL.Clear;
      Query.SQL.Add('select ISNULL(sum(InvExpValue),0) from InvestExpenses');
      Query.SQL.Add(' where Month(InvestExpenses.InvExpDate)=:Month');
      Query.SQL.Add(' and YEAR(InvestExpenses.InvExpDate)=:Year');
      Query.SQL.Add(' and ClearProfitException=0');
      Query.Parameters.ParamByName('Month').Value:=DateQR.FieldByName('Month').AsInteger;
      Query.Parameters.ParamByName('Year').Value:=DateQR.FieldByName('Year').AsInteger;
      Query.Open;
      expenses:=expenses+Query.Fields[0].AsFloat;

      InsertQR.Parameters.ParamByName('Month').Value:=DateQR.FieldByName('Month').AsInteger;
      InsertQR.Parameters.ParamByName('Year').Value:=DateQR.FieldByName('Year').AsInteger;
      InsertQR.Parameters.ParamByName('Sand').Value:=sand;
      InsertQR.Parameters.ParamByName('Finances').Value:=finances;
      InsertQR.Parameters.ParamByName('Expenses').Value:=expenses;
      try
        InsertQR.ExecSQL;
      except
        UpdateQR.Parameters.ParamByName('Month').Value:=DateQR.FieldByName('Month').AsInteger;
        UpdateQR.Parameters.ParamByName('Year').Value:=DateQR.FieldByName('Year').AsInteger;
        UpdateQR.Parameters.ParamByName('Sand').Value:=sand;
        UpdateQR.Parameters.ParamByName('Finances').Value:=finances;
        UpdateQR.Parameters.ParamByName('Expenses').Value:=expenses;
        try
          UpdateQR.ExecSQL;
        except
          on e:Exception do
           MainDM.MessageForm.ShowError('Ошибка обновления записей '+e.message);
        end;
     end;
     DateQR.Next;
     end;
   except
    on e:Exception do
           MainDM.MessageForm.ShowError('Ошибка обновления записей '+e.message);
   end;
  finally
    Query.Free;
  end;
end;

end.
