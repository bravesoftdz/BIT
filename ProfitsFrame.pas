unit ProfitsFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinsdxBarPainter, DB,
  ADODB, dxBar, cxClasses, TeEngine, Series, ExtCtrls, TeeProcs, Chart,
  DataModule, Printers;

type
  TProfitFrame = class(TFrame)
    Chart1: TChart;
    Series1: TBarSeries;
    Series3: TBarSeries;
    Series4: TBarSeries;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ChartQR: TADOQuery;
    ChartQRMonth: TIntegerField;
    ChartQRYear: TIntegerField;
    ChartQRSumValue: TFloatField;
    DateQR: TADOQuery;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    UpdateQR: TADOQuery;
    InsertQR: TADOQuery;
    DeleteQR: TADOQuery;
    procedure dxBarButton1Click(Sender: TObject);
  private
  public
    procedure CountProfits(FullProcess: boolean = false);
    procedure RefreshGraph;
  end;

implementation

{$R *.dfm}

procedure TProfitFrame.CountProfits(FullProcess: boolean = false);
var Query:TADOQuery;
    TempResult:double;
    i:integer;
begin
  TempResult:=0;
  Query:=TADOQuery.Create(self);
  try
   try
    Query.Connection:=MainDM.DBConnect;
    if DateQR.Active then DateQR.Close;
   // DateQR.Parameters.ParamByName('Full').Value := integer(FullProcess);
    DateQR.Open;

   // DeleteQR.Parameters.ParamByName('ProfitMonth').Value:=DateQR.FieldByName('Month').AsInteger;
   // DeleteQR.Parameters.ParamByName('ProfitYear').Value:=DateQR.FieldByName('Year').AsInteger;
    DeleteQR.ExecSQL;

    for i := 0 to DateQR.RecordCount - 1 do
     begin
      Query.SQL.Clear;
      Query.SQL.Add('select ISNULL(sum(CommonProfit),0) from MainTransactions');
      Query.SQL.Add(' where Month(MainTransactions.TransactDate)=:Month');
      Query.SQL.Add(' and YEAR(MainTransactions.TransactDate)=:Year');
      Query.Parameters.ParamByName('Month').Value:=DateQR.FieldByName('Month').AsInteger;
      Query.Parameters.ParamByName('Year').Value:=DateQR.FieldByName('Year').AsInteger;
      Query.Open;
      try
        InsertQR.Parameters.ParamByName('ProfitMonth').Value:=DateQR.FieldByName('Month').AsInteger;
        InsertQR.Parameters.ParamByName('ProfitYear').Value:=DateQR.FieldByName('Year').AsInteger;
        InsertQR.Parameters.ParamByName('ProfitValue').Value:=Query.Fields[0].AsFloat;
        InsertQR.ExecSQL;
      except
        UpdateQR.Parameters.ParamByName('ProfitMonth').Value:=DateQR.FieldByName('Month').AsInteger;
        UpdateQR.Parameters.ParamByName('ProfitYear').Value:=DateQR.FieldByName('Year').AsInteger;
        UpdateQR.Parameters.ParamByName('ProfitValue').Value:=Query.Fields[0].AsFloat;
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
   end;
  finally
    Query.Free;
  end;
end;

procedure TProfitFrame.dxBarButton1Click(Sender: TObject);
var PD:TPrintDialog;
begin
  PD:=TPrintDialog.Create(self);
  try
    if PD.Execute then
     begin
        Chart1.PrintOrientation(poLandscape);
        Chart1.PrintRect(Rect(20, 20,Printer.PageWidth-21,Printer.PageHeight-21));
     end;
  finally
    PD.Free;
  end;
end;

procedure TProfitFrame.RefreshGraph;
var ChSeries:TChartSeries;
    i:integer;
    AYear,AMonth,ADay : word;
    year :integer;
begin
  CountProfits;
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
         Series3.AddXY(ChartQRMonth.AsInteger,ChartQRSumValue.AsFloat,
                                  LongMonthNames[ChartQRMonth.AsInteger]);
      if ChartQRYear.AsInteger = year-1 then
          Series4.AddXY(ChartQRMonth.AsInteger,ChartQRSumValue.AsFloat,LongMonthNames[ChartQRMonth.AsInteger]);
      if ChartQRYear.AsInteger = year then
          Series1.AddXY(ChartQRMonth.AsInteger,ChartQRSumValue.AsFloat,LongMonthNames[ChartQRMonth.AsInteger]);
      ChartQR.Next;
    end;
end;

end.
