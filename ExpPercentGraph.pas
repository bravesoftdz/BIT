unit ExpPercentGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinsdxBarPainter, dxBar,
  cxClasses, TeEngine, Series, ExtCtrls, TeeProcs, Chart, DBChart, Printers;

type
  TExpGraphForm = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ExpChart: TDBChart;
    Series1: TPieSeries;
    procedure dxBarButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  ExpGraphForm: TExpGraphForm;

implementation

uses DataModule;

{$R *.dfm}

procedure TExpGraphForm.dxBarButton1Click(Sender: TObject);
var PD:TPrintDialog;
begin
  PD:=TPrintDialog.Create(self);
  try
    if PD.Execute then
     begin
        ExpChart.PrintOrientation(poLandscape);
        ExpChart.PrintProportional:=True;
        ExpChart.PrintRect(Rect(20, 20,Printer.PageWidth-21,Printer.PageHeight-21));
     end;
  finally
    PD.Free;
  end;
end;

end.
