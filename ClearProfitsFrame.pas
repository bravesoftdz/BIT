unit ClearProfitsFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinsdxBarPainter, dxBar,
  cxClasses, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DB, ADODB;

type
  TFrame1 = class(TFrame)
    Chart1: TChart;
    Series3: TBarSeries;
    Series4: TBarSeries;
    Series1: TBarSeries;
    Series2: TBarSeries;
    Series5: TBarSeries;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
