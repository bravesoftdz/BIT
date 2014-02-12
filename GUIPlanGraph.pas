unit GUIPlanGraph;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinsdxBarPainter,
  cxClasses, dxBar, TeEngine, Series, ExtCtrls, TeeProcs, Chart, ADODB,
  DataModule, DB;

type
  TPlanGraphForm = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    PrintButton: TdxBarButton;
    PlanChart: TChart;
    CommonPlan: TADOQuery;
    PrivatePlan: TADOQuery;
  private
    { Private declarations }
  public
    procedure ShowPlan(id:integer);
  end;

var
  PlanGraphForm: TPlanGraphForm;

implementation

{$R *.dfm}

{ TPlanGraphForm }

procedure TPlanGraphForm.ShowPlan(id: integer);
var ChSeries:TChartSeries;
    i:integer;
begin
   ChSeries:=TChartSeries.Create(PlanChart);
   try
   CommonPlan.Parameters.ParamByName('id').Value:=id;
   CommonPlan.Parameters.ParamByName('id1').Value:=id;
   CommonPlan.Open;
   PrivatePlan.Parameters.ParamByName('id').Value:=id;
   PrivatePlan.Parameters.ParamByName('id1').Value:=id;
   PrivatePlan.Open;

   if CommonPlan.RecordCount>0 then
     begin

       PlanChart.AddSeries(ChSeries);
       PlanChart.Series[0].AddXY(1,
                              CommonPlan.FieldByName('PlanValue').AsInteger);
       PlanChart.SeriesList.Add(&ChSeries);
       PlanChart.Series[1].AddXY(1,
                              CommonPlan.FieldByName('CurrentCost').AsInteger);
    end;

   for i:= 0 to PrivatePlan.RecordCount-1 do
     begin
       PlanChart.AddSeries(ChSeries);

       PlanChart.Series[PlanChart.SeriesCount-1].AddXY(i+2,
                              PrivatePlan.FieldByName('PlanValue').AsInteger);
       PlanChart.AddSeries(ChSeries);
       PlanChart.Series[PlanChart.SeriesCount-1].AddXY(i+2,
                              PrivatePlan.FieldByName('CurrentCost').AsInteger);
       PrivatePlan.Next;
    end;

   ShowModal;


   finally
     ChSeries.Free;
   end;
end;

end.
