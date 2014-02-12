unit PlansFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, DataModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom,
  dxSkinscxPCPainter, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB,
  cxDBData, TeEngine, Series, ExtCtrls, Chart, DBChart, cxSplitter,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridDBTableView,
  cxClasses, cxGridCustomView, cxGrid, cxDropDownEdit, cxDBLookupComboBox, ADODB,
  dxSkinsdxBarPainter, dxBar, GUIPlanForm, GUIPlanGraph, ActnList, Printers, TeeProcs;

type
  TPlanFrame = class(TFrame)
    cxGrid2: TcxGrid;
    cxSplitter1: TcxSplitter;
    PlansViewID: TcxGridDBColumn;
    PlansViewPlanMonth: TcxGridDBColumn;
    PlansViewPlanOwner: TcxGridDBColumn;
    PlansViewPlanYear: TcxGridDBColumn;
    PlansViewPlanType: TcxGridDBColumn;
    PlansViewPlanValue: TcxGridDBColumn;
    PlansViewCurrentCost: TcxGridDBColumn;
    PlansViewCurrentPercent: TcxGridDBColumn;
    cxGrid2DBTableView1: TcxGridDBTableView;
    cxGrid2DBTableView1ID: TcxGridDBColumn;
    cxGrid2DBTableView1PlanMonth: TcxGridDBColumn;
    cxGrid2DBTableView1PlanOwner: TcxGridDBColumn;
    cxGrid2DBTableView1PlanYear: TcxGridDBColumn;
    cxGrid2DBTableView1PlanType: TcxGridDBColumn;
    cxGrid2DBTableView1PlanValue: TcxGridDBColumn;
    cxGrid2DBTableView1CurrentCost: TcxGridDBColumn;
    cxGrid2DBTableView1CurrentPercent: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    dxBarManager1Bar1: TdxBar;
    cxGrid2Level2: TcxGridLevel;
    PlanView: TcxGridTableView;
    PlanViewMonth: TcxGridColumn;
    PlanViewYear: TcxGridColumn;
    PlanViewManager: TcxGridColumn;
    PlanViewType: TcxGridColumn;
    PlanViewPlanValue: TcxGridColumn;
    PlanViewDoneValue: TcxGridColumn;
    PlanViewPercentDone: TcxGridColumn;
    PlanViewID: TcxGridColumn;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ActionList1: TActionList;
    InsertPlan: TAction;
    UpdateData: TAction;
    CopyPlan: TAction;
    DeletePlan: TAction;
    AppendRecord: TAction;
    Chart1: TChart;
    Series3: TBarSeries;
    Series4: TBarSeries;
    PM: TdxBarPopupMenu;
    ManagerPlansQR: TADOQuery;
    ManagerPlansPlanOwner: TIntegerField;
    ManagerPlansPlanValue: TBCDField;
    ManagerPlansDoneValue: TFloatField;
    ManagerPlansQRuserfio: TWideStringField;
    ManagerPlansQRRow: TLargeintField;
    CommonPlanQR: TADOQuery;
    CommonPlanQRPlanValue: TBCDField;
    CommonPlanQRDoneValue: TFloatField;
    old: TADOQuery;
    IntegerField1: TIntegerField;
    BCDField1: TBCDField;
    FloatField1: TFloatField;
    WideStringField1: TWideStringField;
    LargeintField1: TLargeintField;
    procedure InsertPlanExecute(Sender: TObject);
    procedure PlanViewFocusedRecordChanged(Sender: TcxCustomGridTableView;
      APrevFocusedRecord, AFocusedRecord: TcxCustomGridRecord;
      ANewItemRecordFocusingChanged: Boolean);
    procedure dxBarButton1Click(Sender: TObject);
    procedure dxBarButton4Click(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure dxBarButton5Click(Sender: TObject);
    procedure PlanViewCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure PlanViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
  private
    Style1,Style2:TcxStyle;
    FIniFileName:string;
    procedure DrawGraphs;
    function GetCurrentCost(Month,Year,Owner:integer):double;
  public
    procedure Refresh;
    procedure Print;
    procedure ShowPlan(BeginDate,EndDate:TDateTime);
    procedure ShowManagerPlan(BeginDate,EndDate:TDateTime);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

constructor TPlanFrame.Create(AOwner: TComponent);
begin
  inherited;
  Style1:=TcxStyle.Create(self);
  Style1.Color:=$00DFDFDF;
  Style2:=TcxStyle.Create(self);
  Style2.Color:=clwhite;
  FIniFileName:=MainDM.IniFileName;
  try
    PlanView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'PlanView');
  except
  end;
end;

destructor TPlanFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    PlanView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'PlanView');
  except
  end;
  inherited;
end;

procedure TPlanFrame.DrawGraphs;
begin
   Chart1.Series[0].Clear;
   Chart1.Series[1].Clear;
   Chart1.Title.Text.Clear;
   if PlanView.DataController.RecordCount>0 then
   begin
     Chart1.Series[0].Visible:=True;
     Chart1.Series[1].Visible:=True;
     if not varisnull(PlanViewPlanValue.EditValue) then
       Chart1.Series[0].AddXY(1,PlanViewPlanValue.EditValue);
     if not varisnull(PlanViewDoneValue.EditValue) then
       Chart1.Series[1].AddXY(1,PlanViewDoneValue.EditValue);
     Chart1.Title.Text.Add('План на '+vartostr(PlanViewMonth.EditValue)+' '+
     vartostr(PlanViewYear.EditValue)+' г. ');
     if PlanViewType.EditValue='частный' then
      Chart1.Title.Text.Add('для '+vartostr(PlanViewManager.EditValue))
   end
   else
   begin
     Chart1.Series[0].Visible:=False;
     Chart1.Series[1].Visible:=False;
   end;
end;

procedure TPlanFrame.dxBarButton1Click(Sender: TObject);
begin
  Refresh;
end;

procedure TPlanFrame.dxBarButton2Click(Sender: TObject);
var id:integer;
    Query:TADOQuery;
begin
  if PlanView.DataController.FocusedRecordIndex>-1 then
    begin
       if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
       begin
         id:=PlanView.DataController.Values[PlanView.DataController.FocusedRecordIndex,0];
         Query:=TADOQuery.Create(self);
          try
            Query.Connection:=MainDM.DBConnect;
            Query.SQL.Add('Delete from Plans where id=:id');
            Query.Parameters.ParamByName('id').Value:=id;
            Query.ExecSQL;
            Refresh;
          finally
            Query.Free;
          end;
       end;
    end
  else
    MainDM.MessageForm.ShowError('Выберите строку для изменения')
end;

procedure TPlanFrame.dxBarButton4Click(Sender: TObject);
var id: Integer;
    Query:TADOQuery;
begin
   id:=PlanView.DataController.Values[PlanView.DataController.FocusedRecordIndex,0];
   if PlanView.DataController.FocusedRecordIndex>-1 then
   if MainDM.MessageForm.ShowQuestion('Дублировать текущую запись?',2)=mrYes then
   begin
     try
       Query:=TADOQuery.Create(self);
          try
            Query.Connection:=MainDM.DBConnect;
            Query.SQL.Add('Insert into Plans (PlanType,PlanOwner,PlanMonth,PlanYear,PlanValue)');
            Query.SQL.Add(' select PlanType,PlanOwner,PlanMonth,PlanYear,PlanValue from Plans where id=:id');
            Query.Parameters.ParamByName('id').value:=id;
            Query.ExecSQL;
            Refresh;
        //    DrawGraphs;
          finally
            Query.Free;
          end;
     except
       on e:exception do
       MainDM.MessageForm.ShowError('Невозможно продублировать запись. Ошибка: '+e.message);
     end;
   end;
end;

procedure TPlanFrame.dxBarButton5Click(Sender: TObject);
  var PlanF:TPlanForm;
    id:integer;
begin
  if PlanView.DataController.FocusedRecordIndex>-1 then
    begin
    PlanF:=TPlanForm.Create(nil);
    try
      id:=PlansViewID.EditValue;
      if PlanF.ShowPlan(id)=mrOK then
        begin
          Refresh;
        //  DrawGraphs;
        end;
    finally
      PlanF.Free;
    end;
  end
  else
    MainDM.MessageForm.ShowError('Выберите строку для изменения')
end;

procedure TPlanFrame.InsertPlanExecute(Sender: TObject);
var PlanF:TPlanForm;
begin
  PlanF:=TPlanForm.Create(nil);
  try
    if PlanF.ShowNew=mrOK then
      begin
        Refresh;
     //   DrawGraphs;
      end;
  finally
    PlanF.Free;
  end;
end;

procedure TPlanFrame.PlanViewCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var PlanF:TPlanForm;
    id:integer;
begin
 if PlanView.DataController.FocusedRecordIndex>-1 then
    begin
    PlanF:=TPlanForm.Create(nil);
    try
      id:=PlanView.DataController.Values[PlanView.DataController.FocusedRecordIndex,0];
      if PlanF.ShowPlan(id)=mrOK then
        Refresh;
    finally
      PlanF.Free;
    end;
  end
  else
    MainDM.MessageForm.ShowError('Выберите строку для изменения')
end;

procedure TPlanFrame.PlanViewFocusedRecordChanged(
  Sender: TcxCustomGridTableView; APrevFocusedRecord,
  AFocusedRecord: TcxCustomGridRecord; ANewItemRecordFocusingChanged: Boolean);
begin
 // DrawGraphs;
end;

procedure TPlanFrame.PlanViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TPlanFrame.Print;
var PD:TPrintDialog;
begin
  PD:=TPrintDialog.Create(self);
  try
    if PD.Execute then
     begin
        Chart1.PrintRect(Rect(20, 20,Printer.PageWidth-21,Printer.PageHeight-21));
       // Chart1.Print;
     end;
  finally
    PD.Free;
  end;
end;

procedure TPlanFrame.Refresh;
var
  i: Integer;
  Month,PlanType,PlanOwner:integer;
begin
  try
    if PlanView.DataController.RecordCount>0 then
    for I := PlanView.DataController.RecordCount-1 to 0 do
       PlanView.DataController.DeleteRecord(i);
    PlanView.DataController.RecordCount:=0;
  except
  end;
  MainDM.CommonPlansQR.Close;
  MainDM.CommonPlansQR.Open;
  MainDM.CommonPlansQR.First;
  for i := 0 to MainDM.CommonPlansQR.RecordCount - 1 do
    begin
     try
      PlanView.DataController.RecordCount:=PlanView.DataController.RecordCount+1;
      PlanView.DataController.FocusedRecordIndex:=PlanView.DataController.RecordCount-1;
      except
         on e:Exception do
            MainDM.MessageForm.ShowError('Ошибка отображения 1'+e.message);
         end;
      try
        PlanViewID.EditValue:=MainDM.CommonPlansQR.FieldByName('ID').Value;
        Month:= -1;
        if not varisnull(MainDM.CommonPlansQR.FieldByName('PlanMonth').Value) then
        begin
         try
           Month:=MainDM.CommonPlansQR.FieldByName('PlanMonth').Value;
           PlanViewMonth.EditValue:=MainDM.MonthCB.Properties.Items[Month];
         except
           on e:Exception do
            MainDM.MessageForm.ShowError('Ошибка отображения 2'+e.message);
         end;
        end;
        PlanViewYear.EditValue:=MainDM.CommonPlansQR.FieldByName('PlanYear').Value;
        PlanType:=MainDM.CommonPlansQR.FieldByName('PlanType').Value;
        try
          PlanViewType.EditValue:=MainDM.PlanTypesCB.Properties.Items[PlanType];
        except
           on e:Exception do
            MainDM.MessageForm.ShowError('Ошибка отображения 3'+e.message);
         end;


        if not varisnull(MainDM.CommonPlansQR.FieldByName('PlanOwner').Value) then
        begin
         PlanOwner:=MainDM.CommonPlansQR.FieldByName('PlanOwner').Value;
        if MainDM.UsersQuery.Locate('ID',PlanOwner,[]) then
        PlanViewManager.EditValue:= MainDM.UsersQuery.FieldByName('UserFIO').Value;
        end
        else
        PlanOwner:=-1;
        PlanViewPlanValue.EditValue:=MainDM.CommonPlansQR.FieldByName('PlanValue').Value;
        if PlanType=1 then // общий
        PlanViewDoneValue.EditValue:=GetCurrentCost(Month,PlanViewYear.EditValue,-1)
        else
        PlanViewDoneValue.EditValue:=GetCurrentCost(Month,PlanViewYear.EditValue,PlanOwner);
        PlanViewPercentDone.EditValue:=trunc(PlanViewDoneValue.EditValue/PlanViewPlanValue.EditValue*100);
      except
        on e:Exception do
            MainDM.MessageForm.ShowError('Ошибка отображения 4 '+e.message);
      end;
      MainDM.CommonPlansQR.Next;
    end;
  if PlanView.DataController.RecordCount>0 then
    if PlanView.DataController.FocusedRecordIndex=-1 then
      PlanView.DataController.FocusedRecordIndex:=0;
end;

procedure TPlanFrame.ShowManagerPlan(BeginDate,EndDate:TDateTime);
begin
 if ManagerPlansQR.Active then
    ManagerPlansQR.Close;
  ManagerPlansQR.Parameters.ParamByName('bd').Value := BeginDate;
  ManagerPlansQR.Parameters.ParamByName('ed').Value := EndDate;
  ManagerPlansQR.Open;
  Series3.Clear;
  Series4.Clear;
  Series3.Visible:=True;
  Series4.Visible:=True;
  Chart1.Title.Text.Clear;
  Chart1.Title.Text.Add('План на период с '+DateTimetostr(BeginDate)+' по '+
     DateTimetostr(EndDate)+' г. ');

  while not ManagerPlansQR.Eof do
    begin
        Series3.AddXY(ManagerPlansQRRow.AsInteger,ManagerPlansPlanValue.AsFloat,ManagerPlansQRuserfio.AsString);
        Series4.AddXY(ManagerPlansQRRow.AsInteger,ManagerPlansDoneValue.AsFloat);
        ManagerPlansQR.Next;
    end;
end;

procedure TPlanFrame.ShowPlan;
begin
  if CommonPlanQR.Active then
    CommonPlanQR.Close;
  CommonPlanQR.Parameters.ParamByName('bd').Value := BeginDate;
  CommonPlanQR.Parameters.ParamByName('ed').Value := EndDate;
  CommonPlanQR.Parameters.ParamByName('bd1').Value := BeginDate;
  CommonPlanQR.Parameters.ParamByName('ed1').Value := EndDate;
  CommonPlanQR.Open;
  Series3.Clear;
  Series4.Clear;
  Series3.Visible:=True;
  Series4.Visible:=True;
  Chart1.Title.Text.Clear;
  Chart1.Title.Text.Add('План на период с '+DateTimetostr(BeginDate)+' по '+
     DateTimetostr(EndDate)+' г. ');

  while not CommonPlanQR.Eof do
    begin
        Series3.AddXY(1,CommonPlanQRPlanValue.AsFloat);
        Series4.AddXY(1,CommonPlanQRDoneValue.AsFloat);
        CommonPlanQR.Next;
    end;
end;

function TPlanFrame.GetCurrentCost(Month,Year,Owner:integer):double;
var Query:TADOQuery;
    TempResult:double;
begin
  TempResult:=0;
  Query:=TADOQuery.Create(self);
  try
   try
    Query.Connection:=MainDM.DBConnect;
 {   if Owner=-1 then  // винниково - только в общем
     begin
      Query.SQL.Add('select ISNULL(sum(VCommonCost),0) from VinnikTransactions');
      Query.SQL.Add(' where Month(VinnikTransactions.VTransactDate)=:Month');
      Query.SQL.Add(' and YEAR(VinnikTransactions.VTransactDate)=:Year');
      Query.Parameters.ParamByName('Month').Value:=Month;
      Query.Parameters.ParamByName('Year').Value:=Year;
      Query.Open;
      TempResult:=Query.Fields[0].AsFloat;
     end;
    Query.SQL.Clear; }
    Query.SQL.Add('select ISNULL(sum(CommonProfit),0) from MainTransactions');
    Query.SQL.Add(' where Month(MainTransactions.TransactDate)=:Month');
    Query.SQL.Add(' and YEAR(MainTransactions.TransactDate)=:Year');
    Query.SQL.Add(' and OrganizationID<>1');
    Query.SQL.Add(' and TransporterID not in (Select id from Transporters');
    Query.SQL.Add(' where lower(TransporterName) like :TranspName)');
    Query.Parameters.ParamByName('Month').Value:=Month;
    Query.Parameters.ParamByName('Year').Value:=Year;
    Query.Parameters.ParamByName('TranspName').Value:='самовывоз';
     if Owner<>-1 then  // для частного
     begin
       Query.SQL.Add(' and MainTransactions.ManagerID=:Owner');
       Query.Parameters.ParamByName('Owner').Value:=Owner;
     end;
    Query.Open;
    TempResult:=TempResult+Query.Fields[0].AsFloat;
   except
   end;
  finally
    Result:=TempResult;
    Query.Free;
  end;
end;

end.
