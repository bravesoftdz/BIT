program BIT;

uses
  Forms,
  Windows,
  DataModule in 'DataModule.pas' {MainDM},
  Main in 'Main.pas' {MainForm: TDataModule},
  GUIIdentification in 'GUIIdentification.pas' {IdentForm},
  TypesAndConstants in 'TypesAndConstants.pas',
  GUILogoForm in 'GUILogoForm.pas' {LogoForm},
  GUIMaterial in 'GUIMaterial.pas' {MaterialForm},
  GUITransporterForm in 'GUITransporterForm.pas' {TransporterForm},
  GUIListForm in 'GUIListForm.pas' {ListForm},
  GUIMessageForm in 'GUIMessageForm.pas' {MessageForm},
  GUIReportForm in 'GUIReportForm.pas' {ReportForm},
  GUIBuyingReportForm in 'GUIBuyingReportForm.pas' {BuyingReportForm},
  GUITranspReportForm in 'GUITranspReportForm.pas' {TranspReportForm},
  GUIManagerReportForm in 'GUIManagerReportForm.pas' {ManagerReportForm},
  PlansFrame in 'PlansFrame.pas' {PlanFrame: TFrame},
  VinnikFrame in 'VinnikFrame.pas' {VFrame: TFrame},
  GUIPlanForm in 'GUIPlanForm.pas' {PlanForm},
  MainFrame in 'MainFrame.pas' {MainDataFrame: TFrame},
  ReportCreator in 'ReportCreator.pas',
  GUIPoint5ReportForm in 'GUIPoint5ReportForm.pas' {Point5ReportForm},
  GUIPlanGraph in 'GUIPlanGraph.pas' {PlanGraphForm},
  GUIPrivilegeForm in 'GUIPrivilegeForm.pas' {PrivilegeForm},
  FinancesFrame in 'FinancesFrame.pas' {FinanceFrame: TFrame},
  ProfitsFrame in 'ProfitsFrame.pas' {ProfitFrame: TFrame},
  ClearProfitsFrame in 'ClearProfitsFrame.pas' {Frame1: TFrame},
  FinanceExpFrame in 'FinanceExpFrame.pas' {FinExpFrame: TFrame},
  InvestmentExpFrame in 'InvestmentExpFrame.pas' {InvestExpFrame: TFrame},
  GUISalFrame in 'GUISalFrame.pas' {SalFrame: TFrame},
  ExpensesFrame in 'ExpensesFrame.pas' {ExpFrame: TFrame},
  ExpPercentGraph in 'ExpPercentGraph.pas' {ExpGraphForm},
  GraphSaleProfit in 'GraphSaleProfit.pas' {SaleProfitGraphForm},
  GraphFinProfit in 'GraphFinProfit.pas' {FinGraphForm},
  GraphCommonProfit in 'GraphCommonProfit.pas' {CommonProfitGraphForm},
  GraphExpenses in 'GraphExpenses.pas' {ExpensesGraphForm},
  GraphClearProfit in 'GraphClearProfit.pas' {ClearProfitGraphForm},
  GUIReportAVGForm in 'GUIReportAVGForm.pas' {AVGReportForm},
  CashesOrgFrame in 'CashesOrgFrame.pas' {CashOrgFrame: TFrame},
  CashesPlacesFrame in 'CashesPlacesFrame.pas' {CashPlacesFrame: TFrame},
  CashesTranspFrame in 'CashesTranspFrame.pas' {CashTranspFrame: TFrame},
  GUICapitalFrame in 'GUICapitalFrame.pas' {CapitalFrame: TFrame},
  CashesForm in 'CashesForm.pas' {CashForm},
  GraphCommonProfitFinances in 'GraphCommonProfitFinances.pas' {CommonProfitGraphFormFinances: TFrame},
  GraphCommonProfitSand in 'GraphCommonProfitSand.pas' {CommonProfitGraphFormSand: TFrame};

{$R *.res}

var
  Mutex:THandle;

function CheckStarted:boolean;
begin
  Result:=true;
  Mutex := CreateMutex(nil, True, 'TradeMutex');
  if (Mutex = 0) OR (GetLastError = ERROR_ALREADY_EXISTS) then
    Result:=false;
end;

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;

  begin
    MainDM:=TMainDM.Create(nil);
    try
      if CheckStarted then
      begin
        if MainDM.Initialize then
          begin
             Application.Title := 'BIT';
             Application.Run;
         end;
      end
      else
      MainDM.MessageForm.ShowError('Программа уже запущена!');
    finally
      MainDM.Free;
    end;
  end;
end.
