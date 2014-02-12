unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, PlansFrame, Series,  MainFrame, ReportCreator, DBCtrls, frxClass,
  GUIListForm, ADODB, TypesAndConstants, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom,
  dxSkinscxPCPainter, dxSkinsdxBarPainter, cxShellComboBox, cxCalendar, cxImage,
  cxButtonEdit, cxCheckBox, cxPropertiesStore, ActnList, Menus, dxBar,
  cxBarEditItem, cxClasses, dxRibbon, dxStatusBar, dxRibbonStatusBar, cxPC,
  ExtCtrls, FileCtrl, cxGrid,cxGridCustomTableView, VinnikFrame, dxBarExtItems,
  cxSplitter,IniFiles, FinancesFrame, cxCheckGroup,
  ProfitsFrame, DateUtils, FinanceExpFrame, InvestmentExpFrame,cxFilter,
  GUISalFrame, ExpensesFrame, GraphSaleProfit, GraphCommonProfit, GraphFinProfit,
  GraphExpenses, GraphClearProfit, ComCtrls, cxDBExtLookupComboBox,
  GUICapitalFrame, cxDropDownEdit, GUIPoint5ReportForm, CashesOrgFrame,
  CashesTranspFrame, CashesPlacesFrame,CashesForm, cxCalc, cxSpinEdit,
  GraphCommonProfitSand, GraphCommonProfitFinances;

type
  TMainForm = class(TForm)
    dxBarManager1: TdxBarManager;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    N2: TMenuItem;
    ServiceMenu: TMenuItem;
    N4: TMenuItem;
    Panel1: TPanel;
    N5: TMenuItem;
    DeleteAction: TdxBarButton;
    ActionList1: TActionList;
    UpdateMainTransact: TAction;
    MMOrgListBtn: TMenuItem;
    MMUsersBtn: TMenuItem;
    MainViewBar: TdxBar;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton7: TdxBarButton;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N12: TMenuItem;
    DoBackUp: TAction;
    cxBarEditItem1: TcxBarEditItem;
    dxBarButton8: TdxBarButton;
    N3: TMenuItem;
    N11: TMenuItem;
    N18: TMenuItem;
    N19: TMenuItem;
    cxPropertiesStore1: TcxPropertiesStore;
    dxBarLargeButton1: TdxBarLargeButton;
    dxBarButton9: TdxBarButton;
    cxBarEditItem2: TcxBarEditItem;
    cxBarEditItem3: TcxBarEditItem;
    cxBarEditItem4: TcxBarEditItem;
    cxBarEditItem5: TcxBarEditItem;
    dxBarButton10: TdxBarButton;
    dxBarButton11: TdxBarButton;
    dxBarLargeButton2: TdxBarLargeButton;
    cxBarEditItem6: TcxBarEditItem;
    cxBarEditItem7: TcxBarEditItem;
    dxBarButton12: TdxBarButton;
    ChangeModeBox: TcxBarEditItem;
    dxBarManager1Bar2: TdxBar;
    SaleReportButton: TdxBarLargeButton;
    BuyingReportButton: TdxBarLargeButton;
    TranspReportBtn: TdxBarLargeButton;
    CrossReportButton: TdxBarLargeButton;
    ManagerReportBtn: TdxBarLargeButton;
    dxBarLargeButton3: TdxBarLargeButton;
    dxRibbonStatusBar1: TdxRibbonStatusBar;
    dxBarButton13: TdxBarButton;
    dxBarLargeButton4: TdxBarLargeButton;
    Ribbon: TdxRibbon;
    DataTab: TdxRibbonTab;
    PlansTab: TdxRibbonTab;
    dxBarManager1Bar4: TdxBar;
    PrintPlanBtn: TdxBarLargeButton;
    dxBarManager1Bar5: TdxBar;
    dxBarButton14: TdxBarButton;
    dxBarButton15: TdxBarButton;
    cxBarEditItem8: TcxBarEditItem;
    cxBarEditItem9: TcxBarEditItem;
    cxBarEditItem10: TcxBarEditItem;
    dxBarDateCombo1: TdxBarDateCombo;
    dxBarButton16: TdxBarButton;
    cxBarEditItem11: TcxBarEditItem;
    dxBarContainerItem1: TdxBarContainerItem;
    cxBarEditItem12: TcxBarEditItem;
    cxBarEditItem13: TcxBarEditItem;
    dxBarLargeButton5: TdxBarLargeButton;
    cxBarEditItem14: TcxBarEditItem;
    dxBarManager1Bar6: TdxBar;
    dxBarButton17: TdxBarButton;
    cxBarEditItem15: TcxBarEditItem;
    ChangeModeVinnik: TcxBarEditItem;
    dxBarSubItem1: TdxBarSubItem;
    dxBarContainerItem2: TdxBarContainerItem;
    VBeginDateEdit: TcxBarEditItem;
    VEndDateEdit: TcxBarEditItem;
    dxBarButton18: TdxBarButton;
    dxBarLargeButton6: TdxBarLargeButton;
    dxBarLargeButton7: TdxBarLargeButton;
    cxBarEditItem16: TcxBarEditItem;
    cxBarEditItem17: TcxBarEditItem;
    dxBarColorCombo1: TdxBarColorCombo;
    N6: TMenuItem;
    ExpensesTab: TdxRibbonTab;
    PageControl: TcxPageControl;
    MainPage: TcxTabSheet;
    MainDataFrame: TMainDataFrame;
    PlanPage: TcxTabSheet;
    VinnikPage: TcxTabSheet;
    VFrame: TVFrame;
    ExpensesPage: TcxTabSheet;
    dxBarManager1Bar7: TdxBar;
    dxBarButton19: TdxBarButton;
    ChangeModeExp: TcxBarEditItem;
    ExpBeginDateEdit: TcxBarEditItem;
    ExpEndDateEdit: TcxBarEditItem;
    ChangeModeExp1: TcxBarEditItem;
    cxSplitter1: TcxSplitter;
    MMUserTypesBtn: TMenuItem;
    VinniksTab: TdxRibbonTab;
    GraphTab: TdxRibbonTab;
    GraphPage: TcxTabSheet;
    FinanceTab: TdxRibbonTab;
    FinancePage: TcxTabSheet;
    FinanceFrame: TFinanceFrame;
    dxBarManager1Bar3: TdxBar;
    dxBarButton20: TdxBarButton;
    cxBarEditItem18: TcxBarEditItem;
    ChangeModeFinance: TcxBarEditItem;
    FinFrameBeginDate: TcxBarEditItem;
    FinFrameEndDate: TcxBarEditItem;
    BarBeginDateEdit: TcxBarEditItem;
    BarEndDateEdit: TcxBarEditItem;
    dxBarManager1Bar8: TdxBar;
    ProfitGraphBtn: TdxBarLargeButton;
    ClearProfitsGraphBtn: TdxBarLargeButton;
    SaleProfitGraphBtn: TdxBarLargeButton;
    FinProfitGraphBtn: TdxBarLargeButton;
    ProfitFrame: TProfitFrame;
    dxBarManager1Bar9: TdxBar;
    SumExpReportBtn: TdxBarLargeButton;
    cxSplitter2: TcxSplitter;
    FinExpFrame: TFinExpFrame;
    cxSplitter3: TcxSplitter;
    InvExpFrame: TInvestExpFrame;
    dxBarButton21: TdxBarButton;
    ExpReportBtn: TdxBarLargeButton;
    FinExpReportBtn: TdxBarLargeButton;
    InvExpReportBtn: TdxBarLargeButton;
    SalExpReportBtn: TdxBarLargeButton;
    SalaryFrame: TSalFrame;
    dxBarButton22: TdxBarButton;
    dxBarLargeButton12: TdxBarLargeButton;
    ExpenseFrame: TExpFrame;
    CommonProfitGraphBtn: TdxBarLargeButton;
    ExpensesGraphBtn: TdxBarLargeButton;
    SaleProfitGraphFrame: TSaleProfitGraphForm;
    FinGraphFrame: TFinGraphForm;
    ExpensesGraphFrame: TExpensesGraphForm;
    ClearProfitGraphFrame: TClearProfitGraphForm;
    CommonProfitGraphFrame: TCommonProfitGraphForm;
    dxBarButton23: TdxBarButton;
    dxBarButton24: TdxBarButton;
    RefreshDataAction: TAction;
    dxBarButton25: TdxBarButton;
    dxBarButton26: TdxBarButton;
    PlanBeginDateEdit: TcxBarEditItem;
    cxBarEditItem20: TcxBarEditItem;
    dxBarLargeButton8: TdxBarLargeButton;
    dxBarLargeButton9: TdxBarLargeButton;
    PlanEndDateEdit: TcxBarEditItem;
    PlanFrame: TPlanFrame;
    dxBarManager1Bar10: TdxBar;
    dxBarLargeButton10: TdxBarLargeButton;
    CashesTab: TdxRibbonTab;
    dxBarManager1Bar11: TdxBar;
    dxBarButton27: TdxBarButton;
    cxBarEditItem19: TcxBarEditItem;
    dxBarButton28: TdxBarButton;
    CashBeginDateEdit: TcxBarEditItem;
    CashEndDateEdit: TcxBarEditItem;
    CashesPage: TcxTabSheet;
    CapitalTab: TdxRibbonTab;
    CapitalPage: TcxTabSheet;
    dxBarManager1Bar12: TdxBar;
    dxBarLargeButton11: TdxBarLargeButton;
    dxBarLargeButton13: TdxBarLargeButton;
    CapFrame: TCapitalFrame;
    CapitalDE: TcxBarEditItem;
    cxBarEditItem24: TcxBarEditItem;
    MainBarBlock: TdxBar;
    dxBarLargeButton14: TdxBarLargeButton;
    dxBarLargeButton15: TdxBarLargeButton;
    dxBarButton29: TdxBarButton;
    dxBarLargeButton16: TdxBarLargeButton;
    cxSplitter4: TcxSplitter;
    CashPlacesFrame: TCashPlacesFrame;
    CashTranspFrame: TCashTranspFrame;
    cxSplitter5: TcxSplitter;
    CashOrgFrame: TCashOrgFrame;
    dxBarManager1Bar13: TdxBar;
    dxBarLargeButton17: TdxBarLargeButton;
    BuyingSnabReportButton: TdxBarLargeButton;
    cxPropertiesStore2: TcxPropertiesStore;
    dxBarButton30: TdxBarButton;
    cxBarEditItem21: TcxBarEditItem;
    CB_cash_filter: TcxBarEditItem;
    dxBarButton31: TdxBarButton;
    RefreshCapitaFrameBtn: TdxBarLargeButton;
    dxBarSpinEdit1: TdxBarSpinEdit;
    cxBarEditItem22: TcxBarEditItem;
    CapitalYearEdit: TcxBarEditItem;
    ClearProfitsSandGraphBtn: TdxBarLargeButton;
    ClearProfitsFinGraphBtn: TdxBarLargeButton;
    CommonProfitFinancesGraphFrame: TCommonProfitGraphFormFinances;
    CommonProfitSandGraphFrame: TCommonProfitGraphFormSand;
    procedure N2Click(Sender: TObject);
    procedure MMOrgListBtnClick(Sender: TObject);
    procedure BeginDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure MMUsersBtnClick(Sender: TObject);
    procedure DoBackUpExecute(Sender: TObject);
    procedure GetCellHint(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
      var AHintText: TCaption; var AIsHintMultiLine: Boolean;
      var AHintTextRect: TRect);
    procedure cxImage1Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N11Click(Sender: TObject);
    procedure N18Click(Sender: TObject);
    procedure N19Click(Sender: TObject);
    procedure RibbonTabChanged(Sender: TdxCustomRibbon);
    procedure FormShow(Sender: TObject);
    procedure PrintPlanBtnClick(Sender: TObject);
    procedure PageControlPageChanging(Sender: TObject; NewPage: TcxTabSheet;
      var AllowChange: Boolean);
    procedure SaleReportButtonClick(Sender: TObject);
    procedure BuyingReportButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure TranspReportBtnClick(Sender: TObject);
    procedure ManagerReportBtnClick(Sender: TObject);
    procedure dxBarButton17Click(Sender: TObject);
    procedure cxBarEditItem16PropertiesEditValueChanged(Sender: TObject);
    procedure VBeginDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure dxBarLargeButton6Click(Sender: TObject);
    procedure dxBarLargeButton7Click(Sender: TObject);
    procedure ChangeModeBoxPropertiesEditValueChanged(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure dxBarButton19Click(Sender: TObject);
    procedure ExpBeginDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure cxBarEditItem18PropertiesEditValueChanged(Sender: TObject);
    procedure MMUserTypesBtnClick(Sender: TObject);
    procedure ProfitGraphBtnClick(Sender: TObject);
    procedure dxBarButton20Click(Sender: TObject);
    procedure SumExpReportBtnClick(Sender: TObject);
    procedure FinFrameBeginDatePropertiesEditValueChanged(Sender: TObject);
    procedure ExpReportBtnClick(Sender: TObject);
    procedure FinExpReportBtnClick(Sender: TObject);
    procedure InvExpReportBtnClick(Sender: TObject);
    procedure SalExpReportBtnClick(Sender: TObject);
    procedure dxBarLargeButton12Click(Sender: TObject);
    procedure SaleProfitGraphBtnClick(Sender: TObject);
    procedure FinProfitGraphBtnClick(Sender: TObject);
    procedure CommonProfitGraphBtnClick(Sender: TObject);
    procedure ExpensesGraphBtnClick(Sender: TObject);
    procedure ClearProfitsGraphBtnClick(Sender: TObject);
    procedure dxBarButton23Click(Sender: TObject);
    procedure RefreshDataActionExecute(Sender: TObject);
    procedure ChangeModeFinancePropertiesEditValueChanged(Sender: TObject);
    procedure dxBarLargeButton8Click(Sender: TObject);
    procedure dxBarLargeButton9Click(Sender: TObject);
    procedure PlanEndDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure dxBarLargeButton10Click(Sender: TObject);
    procedure CapitalDEPropertiesEditValueChanged(Sender: TObject);
    procedure dxBarLargeButton11Click(Sender: TObject);
    procedure dxBarLargeButton14Click(Sender: TObject);
    procedure CashBeginDateEditPropertiesEditValueChanged(Sender: TObject);
    procedure dxBarLargeButton17Click(Sender: TObject);
    procedure BuyingSnabReportButtonClick(Sender: TObject);
    procedure CB_cash_filterPropertiesEditValueChanged(Sender: TObject);
    procedure RefreshCapitaFrameBtnClick(Sender: TObject);
    procedure dxBarButton28Click(Sender: TObject);
    procedure dxBarButton26Click(Sender: TObject);
    procedure ClearProfitsSandGraphBtnClick(Sender: TObject);
    procedure ClearProfitsFinGraphBtnClick(Sender: TObject);
  private
    RC:TReportCreator;
    TempPath:string;
    DefaultBeginDate,DefaultEndDate,DefaultMonthBeginDate,DefaultYearBeginDate:TDateTime;
    procedure SetCurrentDates;
    function GetBeginDate:TDateTime;
    function GetEndDate:TDateTime;
    function GetExpBeginDate:TDateTime;
    function GetExpEndDate:TDateTime;
  public
    procedure ShowUser(UserType:integer);
  end;

var
  MainForm: TMainForm;

implementation

uses DataModule, ExpPercentGraph;

{$R *.dfm}

{ TMainForm }

procedure TMainForm.PageControlPageChanging(Sender: TObject;
  NewPage: TcxTabSheet; var AllowChange: Boolean);
begin
  if NewPage.PageIndex=1 then
     PlanFrame.Refresh;
end;

procedure TMainForm.PlanEndDateEditPropertiesEditValueChanged(Sender: TObject);
begin
{  try
    if not varisnull(PlanBeginDateEdit.CurEditValue) then
    begin
      BeginDate:=StrToDate(PlanBeginDateEdit.CurEditValue);
      if varisnull(PlanEndDateEdit.CurEditValue) then
          EndDate:=BeginDate
      else
          EndDate:=StrToDate(PlanEndDateEdit.CurEditValue);
      PlanFrame.ShowByDates(BeginDate,EndDate);
    end
    else
      PlanFrame.ShowAll;
  except
  end; }
end;

procedure TMainForm.PrintPlanBtnClick(Sender: TObject);
begin
  PlanFrame.Print;
end;

procedure TMainForm.FinFrameBeginDatePropertiesEditValueChanged(
  Sender: TObject);
var BeginDate,EndDate:TDate;
begin
  try
    if not varisnull(FinFrameBeginDate.CurEditValue) then
    begin
      BeginDate:=StrToDate(FinFrameBeginDate.CurEditValue);
      if varisnull(FinFrameEndDate.CurEditValue) then
          EndDate:=BeginDate
      else
          EndDate:=StrToDate(FinFrameEndDate.CurEditValue);
      FinanceFrame.ShowByDates(BeginDate,EndDate);
    end
    else
         FinanceFrame.ShowAll;
  except
  end;
end;

procedure TMainForm.FormCreate(Sender: TObject);
begin
  RC:=TReportCreator.Create;
end;

procedure TMainForm.FormDestroy(Sender: TObject);
begin
  RC.Free;
  DeleteFile(TempPath);
end;

procedure TMainForm.FormShow(Sender: TObject);
begin
  PageControl.HideTabs:=true;
 { Ribbon.ActiveTab.Index:=0;
  PageControl.ActivePageIndex:=0;  }
end;

procedure TMainForm.BeginDateEditPropertiesEditValueChanged(Sender: TObject);
var BeginDate,EndDate:TDate;
begin
  try
    if not varisnull(BarBeginDateEdit.CurEditValue) then
    begin
      BeginDate:=StrToDate(BarBeginDateEdit.CurEditValue);
      if varisnull(BarEndDateEdit.CurEditValue) then
          EndDate:=BeginDate
      else
          EndDate:=StrToDate(BarEndDateEdit.CurEditValue);
      MainDataFrame.ShowByDates(BeginDate,EndDate);
    end
    else
         MainDataFrame.ShowAll;
  except
  end;
end;

// всплывающая подсказка
procedure TMainForm.GetCellHint(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  ACellViewInfo: TcxGridTableDataCellViewInfo; const AMousePos: TPoint;
  var AHintText: TCaption; var AIsHintMultiLine: Boolean;
  var AHintTextRect: TRect);
begin
  if ACellViewInfo.Width<ACellViewInfo.TextWidth then
   begin
    AHintText:=ACellViewInfo.Text;
    AIsHintMultiLine:=True;
    AHintTextRect.Left:=AMousePos.X+10;
    AHintTextRect.Top:=AMousePos.Y+10;
    AHintTextRect.Right:=Screen.Width;
   end;
end;

procedure TMainForm.MMOrgListBtnClick(Sender: TObject);
var ListForm:TListForm;
begin
  ListForm:=TListForm.Create(self);
  try
    ListForm.ShowOrganization(1);
  finally
    ListForm.Free;
  end;
end;

procedure TMainForm.N11Click(Sender: TObject);
var ListForm:TListForm;
begin
  ListForm:=TListForm.Create(self);
  try
    ListForm.ShowMaterials(0,1);
  finally
    ListForm.Free;
  end;
end;

procedure TMainForm.N18Click(Sender: TObject);
var ListForm:TListForm;
begin
  ListForm:=TListForm.Create(self);
  try
    ListForm.ShowTransporters(1);
  finally
    ListForm.Free;
  end;
end;

procedure TMainForm.N19Click(Sender: TObject);
var ListForm:TListForm;
begin
  ListForm:=TListForm.Create(self);
  try
    ListForm.ShowPlaces(1);
  finally
    ListForm.Free;
  end;
end;

function TMainForm.GetBeginDate:TDateTime;
begin
   if not VarIsNull(BarBeginDateEdit.EditValue) then
      Result:=StrToDateTime(BarBeginDateEdit.EditValue)
     else
      Result:=DefaultBeginDate;
end;

function TMainForm.GetEndDate:TDateTime;
begin
  if not VarIsNull(BarEndDateEdit.EditValue) then
      Result:=StrToDateTime(BarEndDateEdit.EditValue)
     else
      Result:=DefaultEndDate;
end;

function TMainForm.GetExpBeginDate: TDateTime;
begin
  if not VarIsNull(ExpBeginDateEdit.EditValue) then
      Result:=StrToDateTime(ExpBeginDateEdit.EditValue)
     else
      Result:=DefaultMonthBeginDate;
end;

function TMainForm.GetExpEndDate: TDateTime;
begin
 if not VarIsNull(ExpEndDateEdit.EditValue) then
      Result:=StrToDateTime(ExpEndDateEdit.EditValue)
     else
      Result:=DefaultEndDate;
end;

procedure TMainForm.MMUsersBtnClick(Sender: TObject);
var ListForm:TListForm;
begin
  ListForm:=TListForm.Create(self);
  try
    ListForm.ShowUsers(1);
  finally
    ListForm.Free;
  end;
end;

procedure TMainForm.N2Click(Sender: TObject);
begin
  Close;
end;

procedure TMainForm.N3Click(Sender: TObject);
var ListForm:TListForm;
begin
  ListForm:=TListForm.Create(self);
  try
    ListForm.ShowMatGroups(1);
  finally
    ListForm.Free;
  end;
end;

procedure TMainForm.N6Click(Sender: TObject);
var ListForm:TListForm;
begin
  ListForm:=TListForm.Create(self);
  try
    ListForm.ShowVMaterials(1);
  finally
    ListForm.Free;
  end;
end;

procedure TMainForm.MMUserTypesBtnClick(Sender: TObject);
var ListForm:TListForm;
begin
  ListForm:=TListForm.Create(self);
  try
    ListForm.ShowUserTypes(1);
  finally
    ListForm.Free;
  end;
end;

procedure TMainForm.SaleReportButtonClick(Sender: TObject);
begin
   RC.CreateSaleReport(GetBeginDate,GetEndDate);
end;

procedure TMainForm.BuyingReportButtonClick(Sender: TObject);
begin
  RC.CreateBuyingReport(GetBeginDate,GetEndDate);
end;

procedure TMainForm.BuyingSnabReportButtonClick(Sender: TObject);
begin
  RC.CreateBuyingSnabReport(GetBeginDate,GetEndDate);
end;

procedure TMainForm.TranspReportBtnClick(Sender: TObject);
begin
  RC.CreateTranspReport(GetBeginDate,GetEndDate);
end;

procedure TMainForm.VBeginDateEditPropertiesEditValueChanged(Sender: TObject);
var BeginDate,EndDate:TDate;
begin
  try
    if not varisnull(VBeginDateEdit.CurEditValue) then
    begin
      BeginDate:=StrToDate(VBeginDateEdit.CurEditValue);
      if varisnull(VEndDateEdit.CurEditValue) then
          EndDate:=BeginDate
      else
          EndDate:=StrToDate(VEndDateEdit.CurEditValue);
      VFrame.ShowByDates(BeginDate,EndDate);
    end
    else
      VFrame.ShowAll;
  except
  end;
end;

procedure TMainForm.ManagerReportBtnClick(Sender: TObject);
begin
  RC.CreateManagerReport(GetBeginDate,GetEndDate);
end;

procedure TMainForm.SetCurrentDates;
var BeginDate:TDateTime;
    AYear,AMonth,ADay:Word;
begin
  try
    //DecodeDateWeek(Now, AYear, AWeekOfYear, ADayOfWeek); dold:=EncodeDateWeek(AYear, AWeekOfYear, 1);

    BeginDate:=now;
    case DayOfWeek(now) of
       1:begin BeginDate:=now-6 end;
       2:begin BeginDate:=now   end;
       3:begin BeginDate:=now-1 end;
       4:begin BeginDate:=now-2 end;
       5:begin BeginDate:=now-3 end;
       6:begin BeginDate:=now-4 end;
       7:begin BeginDate:=now-5 end;
    end;
    DefaultBeginDate:=BeginDate;
    DefaultEndDate:=now;
    BarBeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultBeginDate);
    BarEndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultEndDate);
    VBeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultBeginDate);
    VEndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultEndDate);


    DecodeDate(Now, AYear, AMonth, ADay);
    DefaultMonthBeginDate:=EncodeDate(AYear, AMonth, 1);
    DefaultYearBeginDate:=EncodeDate(AYear, 1, 1);

    ExpBeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultMonthBeginDate);
    ExpEndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultEndDate);
    FinFrameBeginDate.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultMonthBeginDate);
    FinFrameEndDate.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultEndDate);
    PlanBeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultMonthBeginDate);
    PlanEndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultEndDate);
    CashBeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultYearBeginDate);
    CashEndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultEndDate);

    CapitalYearEdit.EditValue:=AYear;
   // CapitalDE.EditValue:=FormatDateTime('dd.mm.yyyy',DefaultEndDate);
           CapFrame.ShowByYear(CapitalYearEdit.EditValue);
    BeginDateEditPropertiesEditValueChanged(self);
    VBeginDateEditPropertiesEditValueChanged(self);
    ExpBeginDateEditPropertiesEditValueChanged(self);
    FinFrameBeginDatePropertiesEditValueChanged(self);
    CashBeginDateEditPropertiesEditValueChanged(self);

  except

  end;
end;

procedure TMainForm.ShowUser(UserType:integer);
var StrStream:TStringStream;
    IniFile:TIniFile;
    i:integer;
begin
  MainDM.UsertypesQR.Locate('ID',UserType,[]);
  TempPath:=ExtractFilePath(Application.ExeName)+'Temp'+inttostr(Random(100))+'.ini';
  StrStream:=TStringStream.Create(MainDM.UsertypesQR.FieldByName('UserPrivileges').AsString);
  try
    StrStream.SaveToFile(TempPath);
    IniFile:=TIniFile.Create(TempPath);
    try
      for i := 0 to MainForm.MainDataFrame.MainGridView.ColumnCount - 1 do
      begin
       MainForm.MainDataFrame.MainGridView.Columns[i].Visible:=
                         IniFile.ReadBool('MainData',
                          MainForm.MainDataFrame.MainGridView.Columns[i].Name,
                          True);
      end;

  MMUserTypesBtn.Visible:=IniFile.ReadBool('Common','EditUserTypes',True);
  MMUsersBtn.Visible:=IniFile.ReadBool('Common','EditUsers',True);
  MMOrgListBtn.Visible:=IniFile.ReadBool('Common','EditOrgList',True);
  MainDM.CurrentUser.CanEditOrg:=IniFile.ReadBool('Common','EditOrgList',True);


  ChangeModeBox.EditValue:=False;
  if IniFile.ReadBool('Common','EditRecords',True) then
    ChangeModeBox.Visible:=ivalways
  else
    ChangeModeBox.Visible:=ivnever;

   ServiceMenu.Visible:=IniFile.ReadBool('Common','DoBackUp',True);

  MainDM.CurrentUser.RSale:=IniFile.ReadBool('Reports','RSale',True);
  MainDM.CurrentUser.RBuy:=IniFile.ReadBool('Reports','RBuy',True);
  MainDM.CurrentUser.RBuySnab:=IniFile.ReadBool('Reports','RBuySnab',True);
  MainDM.CurrentUser.RTransp:=IniFile.ReadBool('Reports','RTransp',True);
  MainDM.CurrentUser.RDTransp:=IniFile.ReadBool('Reports','RDTransp',True);
  MainDM.CurrentUser.RMng:=IniFile.ReadBool('Reports','RMng',True);
  MainDM.CurrentUser.RDMng:=IniFile.ReadBool('Reports','RDMng',True);
  MainDM.CurrentUser.CanBlockRecords:=IniFile.ReadBool('Block','CanBlockRec',True);

  with MainDM.CurrentUser do
  begin

  if RSale then
   SaleReportButton.Visible:=ivalways
  else
   SaleReportButton.Visible:=ivnever;

  if RBuy then
    BuyingReportButton.Visible:=ivalways
  else
     BuyingReportButton.Visible:=ivnever;

  if RBuySnab then
    BuyingSnabReportButton.Visible:=ivalways
  else
     BuyingSnabReportButton.Visible:=ivnever;

  if RTransp then
    TranspReportBtn.Visible:=ivalways
  else
    TranspReportBtn.Visible:=ivnever;

  if RMng or RMng then
    ManagerReportBtn.Visible:=ivalways
  else
    ManagerReportBtn.Visible:=ivnever;
  end;

  CrossReportButton.Visible:=ivnever;

  MainDM.CurrentUser.OnlyUserRecords:=IniFile.ReadBool('Common','UsersRecordsOnly',False);
  MainDM.CurrentUser.OnlyUserRecordsGrid:=IniFile.ReadBool('Common','UsersRecordsGridOnly',False);


  if MainDM.CurrentUser.OnlyUserRecordsGrid then
    MainDM.MainQuery.SQL.Text:='Select * from maintransactions where managerID='+inttostr(MainDM.CurrentUser.ID)
  else
    MainDM.MainQuery.SQL.Text:='Select * from maintransactions';

  MainDM.MainQuery.Close;
  MainDM.MainQuery.Open;

  ExpensesTab.Visible:=IniFile.ReadBool('Pages','ExpPage',True);
  ExpensesPage.Visible:=IniFile.ReadBool('Pages','ExpPage',True);

  PlansTab.Visible:=IniFile.ReadBool('Pages','PlansPage',True);
  PlanPage.Visible:=IniFile.ReadBool('Pages','PlansPage',True);

  VinniksTab.Visible:=IniFile.ReadBool('Pages','VinnikPage',True);
  VinnikPage.Visible:=IniFile.ReadBool('Pages','VinnikPage',True);

  DataTab.Visible:=IniFile.ReadBool('Pages','DataPage',True);
  MainPage.Visible:=IniFile.ReadBool('Pages','DataPage',True);

  GraphTab.Visible:=IniFile.ReadBool('Pages','GraphPage',True);
  GraphPage.Visible:=IniFile.ReadBool('Pages','GraphPage',True);

  FinanceTab.Visible:=IniFile.ReadBool('Pages','FinancePage',True);
  FinancePage.Visible:=IniFile.ReadBool('Pages','FinancePage',True);

  CashesTab.Visible:=IniFile.ReadBool('Pages','CashesPage',True);
  CashesPage.Visible:=IniFile.ReadBool('Pages','CashesPage',True);

  CapitalTab.Visible:=IniFile.ReadBool('Pages','CapitalPage',True);
  CapitalPage.Visible:=IniFile.ReadBool('Pages','CapitalPage',True);

  if DataTab.Visible then
    begin
       Ribbon.ActiveTab  := DataTab;
       PageControl.ActivePage := MainPage;
    end;

  FinExpFrame.Width:=round(ExpensesPage.Width/4);
  ExpenseFrame.Width:=round(ExpensesPage.Width/4);
  SalaryFrame.Width:=round(ExpensesPage.Width/4);


  if IniFile.ReadBool('Graphs','ProfitGraph',True) then
   ProfitGraphBtn.Visible :=ivalways
  else
   ProfitGraphBtn.Visible :=ivnever;

    if IniFile.ReadBool('Graphs','SaleProfitGraph',True) then
   SaleProfitGraphBtn.Visible :=ivalways
  else
   SaleProfitGraphBtn.Visible :=ivnever;

    if IniFile.ReadBool('Graphs','FinProfitGraph',True) then
   FinProfitGraphBtn.Visible :=ivalways
  else
   FinProfitGraphBtn.Visible :=ivnever;

    if IniFile.ReadBool('Graphs','CommonProfitGraph',True) then
   CommonProfitGraphBtn.Visible :=ivalways
  else
   CommonProfitGraphBtn.Visible :=ivnever;

    if IniFile.ReadBool('Graphs','ExpensesGraph',True) then
   ExpensesGraphBtn.Visible :=ivalways
  else
   ExpensesGraphBtn.Visible :=ivnever;

    if IniFile.ReadBool('Graphs','ClearProfitsGraph',True) then
   ClearProfitsGraphBtn.Visible :=ivalways
  else
   ClearProfitsGraphBtn.Visible :=ivnever;

   if IniFile.ReadBool('Graphs','ClearProfitsSandGraph',True) then
   ClearProfitsSandGraphBtn.Visible :=ivalways
  else
   ClearProfitsSandGraphBtn.Visible :=ivnever;

   if IniFile.ReadBool('Graphs','ClearProfitsFinGraph',True) then
   ClearProfitsFinGraphBtn.Visible :=ivalways
  else
   ClearProfitsFinGraphBtn.Visible :=ivnever;

   if IniFile.ReadBool('Block','CanBlockRec',True) then
   begin
      MainDataFrame.BlockRecBtn.Visible := ivalways;
      MainBarBlock.Visible := true;
   end
   else
   begin
     MainDataFrame.BlockRecBtn.Visible := ivnever;
     MainBarBlock.Visible := false;
   end;

   finally
      IniFile.Free;
    end;

  finally
    StrStream.Free;
  end;

 SetCurrentDates;
end;

procedure TMainForm.CapitalDEPropertiesEditValueChanged(Sender: TObject);
var year:integer;
    AYear,AMonth,ADay : word;
begin
  DecodeDate(StrToDateTime(CapitalDE.EditValue),AYear,AMonth,ADay);
  year:=integer(AYear);
  CapFrame.ShowByYear(year);
end;

procedure TMainForm.CashBeginDateEditPropertiesEditValueChanged(
  Sender: TObject);
var BeginDate,EndDate:TDate;
begin
  try
    if not varisnull(CashBeginDateEdit.CurEditValue) then
    begin
      BeginDate:=StrToDate(CashBeginDateEdit.CurEditValue);
      if varisnull(CashEndDateEdit.CurEditValue) then
          EndDate:=BeginDate
      else
          EndDate:=StrToDate(CashEndDateEdit.CurEditValue);

      CashOrgFrame.ShowByDates(BeginDate,EndDate);
      CashPlacesFrame.ShowByDates(BeginDate,EndDate);
      CashTranspFrame.ShowByDates(BeginDate,EndDate);
    end
    else
      begin
        CashOrgFrame.ShowAll;
        CashPlacesFrame.ShowAll;
        CashTranspFrame.ShowAll;
      end;
  except
  end;
end;

procedure TMainForm.CB_cash_filterPropertiesEditValueChanged(Sender: TObject);
begin
  CashOrgFrame.FilterDif := CB_cash_filter.CurEditValue;
  CashTranspFrame.FilterDif := CB_cash_filter.CurEditValue;
  CashPlacesFrame.FilterDif := CB_cash_filter.CurEditValue;
end;

procedure TMainForm.ChangeModeBoxPropertiesEditValueChanged(Sender: TObject);
begin
  MainDataFrame.Editable:=ChangeModeBox.CurEditValue;
end;

procedure TMainForm.cxBarEditItem16PropertiesEditValueChanged(Sender: TObject);
begin
  Vframe.Editable:=ChangeModeVinnik.CurEditValue;
end;

procedure TMainForm.cxBarEditItem18PropertiesEditValueChanged(Sender: TObject);
begin
  Expenseframe.Editable:=ChangeModeExp1.CurEditValue;
  SalaryFrame.Editable:=ChangeModeExp1.CurEditValue;
  FinExpframe.Editable:=ChangeModeExp1.CurEditValue;
  InvExpFrame.Editable:=ChangeModeExp1.CurEditValue;
end;

procedure TMainForm.ChangeModeFinancePropertiesEditValueChanged(
  Sender: TObject);
begin
  FinanceFrame.Editable:=ChangeModeFinance.CurEditValue;
end;

procedure TMainForm.cxImage1Click(Sender: TObject);
begin
  MainDataFrame.ShowAll;
  BarBeginDateEdit.EditValue:=null;
  BarEndDateEdit.EditValue:=null;
end;

procedure TMainForm.dxBarButton17Click(Sender: TObject);
begin
  Vframe.ShowAll;
  VBeginDateEdit.EditValue:=null;
  VEndDateEdit.EditValue:=null;
end;

procedure TMainForm.dxBarButton19Click(Sender: TObject);
begin
  Expenseframe.ShowAll;
  SalaryFrame.ShowAll;
  FinExpFrame.ShowAll;
  InvExpFrame.ShowAll;
  ExpBeginDateEdit.EditValue:=null;
  ExpEndDateEdit.EditValue:=null;
end;

procedure TMainForm.dxBarButton20Click(Sender: TObject);
begin
  FinanceFrame.ShowAll;
  FinFrameBeginDate.EditValue:=null;
  FinFrameEndDate.EditValue:=null;
end;

procedure TMainForm.dxBarButton23Click(Sender: TObject);
begin
  MainDM.RefreshData;
end;

procedure TMainForm.dxBarButton26Click(Sender: TObject);
begin
  MainDM.FinancesQR.Close;
  MainDM.FinancesQR.Open;
  FinanceFrame.RefreshGraph;
end;

procedure TMainForm.dxBarButton28Click(Sender: TObject);
begin
   CashBeginDateEditPropertiesEditValueChanged(self);
end;

procedure TMainForm.DoBackUpExecute(Sender: TObject);
var BackUpPath:string;
    SaveDialog:TSaveDialog;
begin
  try
    SaveDialog:=TSaveDialog.Create(self);
    try
      SaveDialog.InitialDir:=ExtractFilePath(Application.ExeName);
      SaveDialog.Filter:='Резервная копия БД (*.bak)|*.bak';
      SaveDialog.FileName:='TradeDB.bak';
      SaveDialog.Title:='Выберите путь для создания бэкапа';
      if SaveDialog.Execute(0) then
      begin
       BackUpPath:=''''+SaveDialog.FileName+'''';
       MainDM.DBConnect.Execute('BACKUP DATABASE TradeDB TO DISK = '+BackUpPath);
       MainDM.MessageForm.ShowNotify('Резервная копия успешно создана');
    end;
    finally
      SaveDialog.Free;
    end;
  except
    on e:Exception do
      MainDM.MessageForm.ShowError('Ошибка создания резервной копии '+e.message);
  end;
end;

procedure TMainForm.SumExpReportBtnClick(Sender: TObject);
begin
  RC.CreateSumExpReport(GetExpBeginDate,GetExpEndDate);
end;

procedure TMainForm.ExpReportBtnClick(Sender: TObject);
begin
  RC.CreateExpensesReport(GetExpBeginDate,GetExpEndDate);
end;

procedure TMainForm.FinExpReportBtnClick(Sender: TObject);
begin
  RC.CreateFinExpReport(GetExpBeginDate,GetExpEndDate);
end;

procedure TMainForm.InvExpReportBtnClick(Sender: TObject);
begin
  RC.CreateInvExpReport(GetExpBeginDate,GetExpEndDate);
end;

procedure TMainForm.SalExpReportBtnClick(Sender: TObject);
begin
  RC.CreateSalaryReport(GetExpBeginDate,GetExpEndDate);
end;

procedure TMainForm.SaleProfitGraphBtnClick(Sender: TObject);
begin
  SaleProfitGraphFrame.BringToFront;
  SaleProfitGraphFrame.ShowGraph;
end;

procedure TMainForm.FinProfitGraphBtnClick(Sender: TObject);
begin
  FinGraphFrame.BringToFront;
  FinGraphFrame.ShowGraph;
end;

procedure TMainForm.dxBarLargeButton10Click(Sender: TObject);
begin
 ProfitFrame.CountProfits(true);
end;

procedure TMainForm.dxBarLargeButton11Click(Sender: TObject);
var year:integer;
    AYear,AMonth,ADay : word;
begin
  DecodeDate(Now,AYear,AMonth,ADay);
  year:=integer(AYear);
  CapFrame.Calculate(year);
  CapFrame.ShowByYear(Year);
end;

procedure TMainForm.dxBarLargeButton12Click(Sender: TObject);
begin
   RC.CreateSumExpGraph(GetExpBeginDate,GetExpEndDate);
end;

procedure TMainForm.dxBarLargeButton14Click(Sender: TObject);
var BeginDate, EndDate: TDateTime;
    PeriodForm:TPoint5ReportForm;
    count:integer;
begin
  PeriodForm:=TPoint5ReportForm.Create(nil);
   try
     try
     BeginDate := now;
     EndDate := now;
     if PeriodForm.ShowChoose(BeginDate,EndDate)=1 then
       begin
         MainDM.BlockByPeriodQR.Parameters.ParamByName('Blocked').Value := 1;
         MainDM.BlockByPeriodQR.Parameters.ParamByName('BeginDate').Value := BeginDate;
         MainDM.BlockByPeriodQR.Parameters.ParamByName('EndDate').Value := EndDate;
         count:=MainDM.BlockByPeriodQR.ExecSQL;
         MainDM.MessageForm.ShowNotify('Заблокировано '+inttostr(count)+' записей.');
         MainDM.MainQuery.Close;
         MainDM.MainQuery.Open;
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     PeriodForm.Free;
   end;
end;

procedure TMainForm.dxBarLargeButton17Click(Sender: TObject);
begin
//  if CashOrgFrame.SelectedId > 0  then
  //   CashOrgFrame.ShowDetail
 // else if CashPlacesFrame.SelectedId > 0 then
     CashPlacesFrame.ShowDetail
 // else
 //    CashTranspFrame.ShowDetail;
end;

procedure TMainForm.ClearProfitsSandGraphBtnClick(Sender: TObject);
begin
  ProfitFrame.CountProfits;
  CommonProfitSandGraphFrame.BringToFront;
  CommonProfitSandGraphFrame.ShowGraph;
end;

procedure TMainForm.ClearProfitsFinGraphBtnClick(Sender: TObject);
begin
  ProfitFrame.CountProfits;
  CommonProfitFinancesGraphFrame.BringToFront;
  CommonProfitFinancesGraphFrame.ShowGraph;
end;

procedure TMainForm.RefreshCapitaFrameBtnClick(Sender: TObject);
begin
  CapFrame.ShowByYear(CapitalYearEdit.EditValue);
end;

procedure TMainForm.CommonProfitGraphBtnClick(Sender: TObject);
begin
  ProfitFrame.CountProfits;
  CommonProfitGraphFrame.BringToFront;
  CommonProfitGraphFrame.ShowGraph;
end;

procedure TMainForm.ExpensesGraphBtnClick(Sender: TObject);
begin
  ExpensesGraphFrame.BringToFront;
  ExpensesGraphFrame.ShowGraph;
end;

procedure TMainForm.dxBarLargeButton6Click(Sender: TObject);
begin
  //CommonProfitGraphForm
end;

procedure TMainForm.dxBarLargeButton7Click(Sender: TObject);
begin
  PlanFrame.ShowPlan(StrToDate(PlanBeginDateEdit.CurEditValue),
                     StrToDate(PlanEndDateEdit.CurEditValue));
end;

procedure TMainForm.dxBarLargeButton8Click(Sender: TObject);
begin
   PlanFrame.ShowManagerPlan(StrToDate(PlanBeginDateEdit.CurEditValue),
                     StrToDate(PlanEndDateEdit.CurEditValue));
end;

procedure TMainForm.dxBarLargeButton9Click(Sender: TObject);
begin
  PlanFrame.ShowPlan(StrToDate(PlanBeginDateEdit.CurEditValue),
                     StrToDate(PlanEndDateEdit.CurEditValue));
end;

procedure TMainForm.ProfitGraphBtnClick(Sender: TObject);
begin
  ProfitFrame.BringToFront;
  ProfitFrame.RefreshGraph;
end;

procedure TMainForm.ClearProfitsGraphBtnClick(Sender: TObject);
begin
  ProfitFrame.CountProfits;
  ClearProfitGraphFrame.BringToFront;
  ClearProfitGraphFrame.ShowGraph;
end;

procedure TMainForm.ExpBeginDateEditPropertiesEditValueChanged(Sender: TObject);
var BeginDate,EndDate:TDate;
begin
  try
    if not varisnull(ExpBeginDateEdit.CurEditValue) then
    begin
      BeginDate:=StrToDate(ExpBeginDateEdit.CurEditValue);
      if varisnull(ExpEndDateEdit.CurEditValue) then
          EndDate:=BeginDate
      else
          EndDate:=StrToDate(ExpEndDateEdit.CurEditValue);

        ExpenseFrame.ShowByDates(BeginDate,EndDate);
        SalaryFrame.ShowByDates(BeginDate,EndDate);
        FinExpFrame.ShowByDates(BeginDate,EndDate);
        InvExpFrame.ShowByDates(BeginDate,EndDate);
    end
    else
       begin
         ExpenseFrame.ShowAll;
         SalaryFrame.ShowAll;
         FinExpFrame.ShowAll;
         InvExpFrame.ShowAll;
       end
  except
  end;
end;

procedure TMainForm.RefreshDataActionExecute(Sender: TObject);
begin
  MainDM.RefreshData;
end;

procedure TMainForm.RibbonTabChanged(Sender: TdxCustomRibbon);
begin
   if Ribbon.ActiveTab  = DataTab then
     PageControl.ActivePage := MainPage;
   if Ribbon.ActiveTab  = PlansTab then
     PageControl.ActivePage := PlanPage;
   if Ribbon.ActiveTab  = VinniksTab then
     PageControl.ActivePage := VinnikPage;
   if Ribbon.ActiveTab  = ExpensesTab then
     PageControl.ActivePage := ExpensesPage;
   if Ribbon.ActiveTab  = GraphTab then
     PageControl.ActivePage := GraphPage;
   if Ribbon.ActiveTab  = CashesTab then
     begin
       PageControl.ActivePage := CashesPage;

     end;
   if Ribbon.ActiveTab  = CapitalTab then
     begin
       PageControl.ActivePage := CapitalPage;
     end;
   if Ribbon.ActiveTab =  FinanceTab then
     begin
     PageControl.ActivePage := FinancePage;
     FinanceFrame.RefreshGraph;
     end;

end;

end.
