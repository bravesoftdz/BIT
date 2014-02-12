unit GraphCommonProfitFinances;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinsdxBarPainter, dxBar,
  cxClasses, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DB, ADODB, Printers;

type
  TCommonProfitGraphFormFinances = class(TFrame)
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
    ChartQRClearProfit: TFloatField;
    Chart1: TChart;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series1: TBarSeries;
    procedure dxBarButton1Click(Sender: TObject);
  private
  public
      procedure ShowGraph;
  end;


implementation

{$R *.dfm}

procedure TCommonProfitGraphFormFinances.dxBarButton1Click(Sender: TObject);
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

procedure TCommonProfitGraphFormFinances.ShowGraph;
var i:integer;
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
         Series3.AddXY(ChartQRMonth.AsInteger,ChartQRClearProfit.AsFloat);
      if ChartQRYear.AsInteger = year-1 then
          Series4.AddXY(ChartQRMonth.AsInteger,ChartQRClearProfit.AsFloat);
      if ChartQRYear.AsInteger = year then
          Series1.AddXY(ChartQRMonth.AsInteger,ChartQRClearProfit.AsFloat);
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

end.
