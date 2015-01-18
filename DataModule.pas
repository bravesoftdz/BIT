unit DataModule;

interface

uses
  SysUtils, Classes, DB, ADODB, Dialogs, GUIIdentification, Controls, cxEdit,
  cxDBEditRepository, GUILogoform, TypesAndConstants, Forms, cxContainer,
  frxClass, frxDBSet, frxRich, GUIMessageForm, cxEditRepositoryItems, ImgList,
  cxGraphics, cxDBLookUpComboBox, Variants, frxExportXLS, frxExportRTF,
  frxExportPDF, adoint, frxCross, cxLocalization;

type
  TMainDM = class(TDataModule)
    DBConnect: TADOConnection;
    EditRepository: TcxEditRepository;
    MaterialsRepository: TcxEditRepositoryLookupComboBoxItem;
    MaterialsQuery: TADOQuery;
    MaterialsDS: TDataSource;
    MainQuery: TADOQuery;
    MainDS: TDataSource;
    OrganizationsQuery: TADOQuery;
    OrganizationsDS: TDataSource;
    StyleController: TcxEditStyleController;
    ReportDataset: TfrxDBDataset;
    SalesCommonReport: TfrxReport;
    MaterialsGroupRepository: TcxEditRepositoryLookupComboBoxItem;
    PlacesDS: TDataSource;
    PlacesQuery: TADOQuery;
    PlacesRepository: TcxEditRepositoryLookupComboBoxItem;
    TransporterRepository: TcxEditRepositoryLookupComboBoxItem;
    TransportersDS: TDataSource;
    TransportersQuery: TADOQuery;
    UsersQuery: TADOQuery;
    UsersDS: TDataSource;
    UsertypesQR: TADOQuery;
    UserTypesDS: TDataSource;
    UsersRepository: TcxEditRepositoryLookupComboBoxItem;
    UnitsRepository: TcxEditRepositoryLookupComboBoxItem;
    UnitsDS: TDataSource;
    UnitsQR: TADOQuery;
    PaymentTypeQR: TADOQuery;
    PaymenttypsDS: TDataSource;
    cxImageList1: TcxImageList;
    UserTypesRepository: TcxEditRepositoryLookupComboBoxItem;
    MatGroupsDS: TDataSource;
    MatGroupsQR: TADOQuery;
    OrgRepository: TcxEditRepositoryLookupComboBoxItem;
    frxXLSExport1: TfrxXLSExport;
    frxPDFExport1: TfrxPDFExport;
    frxRTFExport1: TfrxRTFExport;
    SalesDetailReport: TfrxReport;
    BuyingCommonReport: TfrxReport;
    BuyingDetailReport: TfrxReport;
    TranspDetailReport: TfrxReport;
    ManagerReport: TfrxReport;
    ManagerReportShort: TfrxReport;
    CommonPlansDS: TDataSource;
    CommonPlansQR: TADOQuery;
    cxLocalizer1: TcxLocalizer;
    MonthCB: TcxEditRepositoryComboBoxItem;
    PlanTypesCB: TcxEditRepositoryComboBoxItem;
    VinnikDS: TDataSource;
    VMaterialsQR: TADOQuery;
    VMaterialsDS: TDataSource;
    VMaterialsRepository: TcxEditRepositoryLookupComboBoxItem;
    VinnikQR: TADOQuery;
    TranspCommonReport: TfrxReport;
    SalaryQuery: TADOQuery;
    SalaryDS: TDataSource;
    FinancesDS: TDataSource;
    FinancesQR: TADOQuery;
    FinancesQRid: TAutoIncField;
    FinancesQRFinValue: TFloatField;
    FinancesQRFinDate: TDateTimeField;
    FinancesQRFinNote: TWideStringField;
    SumExpReport: TfrxReport;
    FinExpDS: TDataSource;
    FinExpQR: TADOQuery;
    AutoIncField1: TAutoIncField;
    FinExpQRFinExpName: TStringField;
    FinExpQRFinExpDate: TDateTimeField;
    FinExpQRFinExpValue: TFloatField;
    InvExpDS: TDataSource;
    InvExpQR: TADOQuery;
    AutoIncField2: TAutoIncField;
    InvExpQRInvExpName: TStringField;
    InvExpQRInvExpDate: TDateTimeField;
    InvExpQRInvExpValue: TFloatField;
    ExpQuery: TADOQuery;
    ExpDS: TDataSource;
    ExpQueryID: TAutoIncField;
    ExpQueryExpenseName: TStringField;
    ExpQueryExpenseDate: TDateTimeField;
    ExpQueryExpenseValue: TFloatField;
    ExpReport: TfrxReport;
    SalaryReport: TfrxReport;
    SumExpQR: TADOQuery;
    SumExpQRTypeExp: TStringField;
    SumExpQRExpValue: TFloatField;
    SumExpQRSumExp: TFloatField;
    SumExpQRperc: TFloatField;
    SalaryQueryID: TAutoIncField;
    SalaryQuerySalaryDate: TDateTimeField;
    SalaryQuerySalaryValue: TFloatField;
    SalaryQueryPerson: TIntegerField;
    SalaryQuerySalaryName: TWideStringField;
    FinExpQRClearProfitException: TBooleanField;
    SalaryMonthReport: TfrxReport;
    ExpQueryClearProfitException: TBooleanField;
    InvExpQRClearProfitException: TBooleanField;
    SalaryQueryClearProfitException: TBooleanField;
    CommonPlansQRID: TIntegerField;
    CommonPlansQRPlanMonth: TIntegerField;
    CommonPlansQRPlanOwner: TIntegerField;
    CommonPlansQRPlanType: TIntegerField;
    CommonPlansQRPlanValue: TBCDField;
    CommonPlansQRCurrentPercent: TIntegerField;
    CommonPlansQRPlanYear: TIntegerField;
    SalesDetailReportShort: TfrxReport;
    CapitalDS: TDataSource;
    CapitalQR: TADOQuery;
    MainQueryID: TAutoIncField;
    MainQueryTransactDate: TDateTimeField;
    MainQueryOrganizationID: TIntegerField;
    MainQueryMaterialID: TIntegerField;
    MainQuerySalePrice: TFloatField;
    MainQuerySaleVolume: TFloatField;
    MainQuerySaleUnitID: TIntegerField;
    MainQueryBuyingPlaceID: TIntegerField;
    MainQueryBuyingPrice: TFloatField;
    MainQueryBuyingVolume: TFloatField;
    MainQueryBuyingUnitID: TIntegerField;
    MainQueryTransporterID: TIntegerField;
    MainQueryTransporterPrice: TFloatField;
    MainQueryCommonProfit: TFloatField;
    MainQueryPaymentType: TIntegerField;
    MainQueryManagerID: TIntegerField;
    MainQueryManagerProfit: TFloatField;
    MainQueryManagerPercent: TFloatField;
    MainQuerySaleProfit: TFloatField;
    MainQueryTransporterCost: TFloatField;
    MainQueryComment: TWideStringField;
    MainQuerySpecialCost: TFloatField;
    MainQueryRent: TFloatField;
    MainQueryMatPaymentType: TIntegerField;
    MainQueryBlocked: TBooleanField;
    CapitalQRJan: TFMTBCDField;
    CapitalQRFeb: TFMTBCDField;
    CapitalQRMar: TFMTBCDField;
    CapitalQRApr: TFMTBCDField;
    CapitalQRMay: TFMTBCDField;
    CapitalQRJun: TFMTBCDField;
    CapitalQRJul: TFMTBCDField;
    CapitalQRAug: TFMTBCDField;
    CapitalQRSep: TFMTBCDField;
    CapitalQROct: TFMTBCDField;
    CapitalQRNov: TFMTBCDField;
    CapitalQRDcm: TFMTBCDField;
    CapitalQRname: TStringField;
    BlockByPeriodQR: TADOQuery;
    AutoIncField3: TAutoIncField;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField3: TIntegerField;
    IntegerField4: TIntegerField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField5: TIntegerField;
    IntegerField6: TIntegerField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    IntegerField7: TIntegerField;
    IntegerField8: TIntegerField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    WideStringField1: TWideStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    IntegerField9: TIntegerField;
    BooleanField1: TBooleanField;
    CashOrgQR: TADOQuery;
    CashOrgQRid: TIntegerField;
    CashOrgQRNote: TWideStringField;
    CashOrgQROrgId: TIntegerField;
    CashOrgQRTransactDate2: TDateTimeField;
    CashOrgQRTransactValue2: TFloatField;
    CashOrgDS: TDataSource;
    CashPlaceDS: TDataSource;
    CashPlaceQR: TADOQuery;
    CashTranspDS: TDataSource;
    CashTranspQR: TADOQuery;
    CashPlaceQRId: TAutoIncField;
    CashPlaceQRTransactDate: TDateTimeField;
    CashPlaceQRTransactValue: TFloatField;
    CashPlaceQRPlaceId: TIntegerField;
    CashTranspQRId: TAutoIncField;
    CashTranspQRTransactDate: TDateTimeField;
    CashTranspQRTransactValue: TFloatField;
    CashTranspQRTranspId: TIntegerField;
    BuyingDetailSnabReport: TfrxReport;
    BuyingCommonSnabReport: TfrxReport;
    CashTranspQRNote: TWideStringField;
    CashPlaceQRNote: TWideStringField;
    CheckBlockQR: TADOQuery;
    ManagersQR: TADOQuery;
    ManagersDS: TDataSource;
    MainQueryBuyingPriceReal: TBCDField;
    MainQueryTransporterPriceReal: TBCDField;
    MainQueryCommonProfitMng: TBCDField;
    MainQueryRentReal: TFloatField;
    MainQueryBuyingCost: TBCDField;
    MainQueryPaymentTypesTransp: TIntegerField;
    PaymentTypesMaterial: TcxEditRepositoryLookupComboBoxItem;
    PaymentTypesMatDS: TDataSource;
    PaymentTypesMatQR: TADOQuery;
    PaymentTypesMatQRID: TAutoIncField;
    PaymentTypesMatQRPaymentTypeMatName: TWideStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure MainQueryBeforePost(DataSet: TDataSet);
  private
    FIsInsert: boolean;
    function CheckUser:boolean;
    function SetConnection:boolean;
    function CreateInterface:boolean;
    function CheckBlockPeriod:boolean;
  public
    IniFileName: string;
    CurrentUser:TUserParams;
    MessageForm:TMessageForm;
    property IsInsert:boolean read FIsInsert write FIsInsert;
    function OpenConnections:boolean;
    function CloseConnections:boolean;
    procedure RefreshData;
    function Initialize:boolean;
  end;

var
  MainDM: TMainDM;

implementation

uses Main, ExpPercentGraph, GraphSaleProfit, GraphFinProfit, GraphCommonProfit,
  GraphExpenses, GraphClearProfit;

{$R *.dfm}

{ TMainDM }

function TMainDM.CheckUser: boolean;
var IdentForm:TIdentForm;
begin
   IdentForm:=TIdentForm.Create(nil);
   try
     if IdentForm.ShowModal=mrOK then
       Result:=True
     else
       Result:=False;
   finally
     IdentForm.Free;
   end;
end;

function TMainDM.CreateInterface: boolean;
begin
    IniFileName:=ExtractFilePath(Application.ExeName)+'\PropertyStore'+inttostr(CurrentUser.ID)+'.ini';
    Application.CreateForm(TMainForm, MainForm);
    Application.CreateForm(TExpGraphForm, ExpGraphForm);
    UsersQuery.Open;
  try
    cxLocalizer1.FileName:=ExtractFilePath(Application.ExeName)+'DevExRus100Proc.ini';
    cxLocalizer1.Active:=True;
    cxLocalizer1.Locale:=1049;
 except
 end;
    OpenConnections;
    MainForm.ShowUser(CurrentUser.UserType);
    result:=true;
end;

function TMainDM.OpenConnections: boolean;
begin
  Result:=false;
  try
    MainQuery.Open;
    MaterialsQuery.Open;
    VMaterialsQR.Open;
    VinnikQR.Open;
    OrganizationsQuery.Open;
    PlacesQuery.Open;
    TransportersQuery.Open;
    UsersQuery.Open;
    UsertypesQR.Open;
    UnitsQR.Open;
    PaymenttypeQR.Open;
    PaymentTypesMatQR.Open;
    CommonPlansQR.Open;
    ExpQuery.Open;
    SalaryQuery.Open;
    FinancesQR.Open;
    FinExpQR.Open;
    InvExpQR.Open;
    Result:=true;
  except
    on e:exception do
      MessageForm.ShowError('Невозможно получить данные. Ошибка: '+e.message)
  end;
end;

procedure TMainDM.RefreshData;
begin
  CloseConnections;
  OpenConnections;
end;

function TMainDM.CloseConnections: boolean;
begin
  Result:=false;
  try
    MainQuery.Close;
    MaterialsQuery.Close;
    VMaterialsQR.Close;
    VinnikQR.Close;
    OrganizationsQuery.Close;
    PlacesQuery.Close;
    TransportersQuery.Close;
    UsersQuery.Close;
    UsertypesQR.Close;
    UnitsQR.Close;
    PaymenttypeQR.Close;
    PaymentTypesMatQR.Close;
    CommonPlansQR.Close;
    ExpQuery.Close;
    SalaryQuery.Close;
    FinancesQR.Close;
    FinExpQR.Close;
    InvExpQR.Close;
    Result:=true;
  except
    on e:exception do
      MessageForm.ShowError('Невозможно закрыть соединение с БД. Ошибка: '+e.message)
  end;
end;

procedure TMainDM.DataModuleCreate(Sender: TObject);
begin
  MessageForm:=TMessageForm.Create(self);
end;

procedure TMainDM.DataModuleDestroy(Sender: TObject);
begin
  CloseConnections;
  MessageForm.Free;
end;

//инициализация программы
function TMainDM.Initialize: boolean;
var Logo:TLogoForm;
begin
  Result:=false;
  FIsInsert:=false;
  Logo:=TLogoForm.Create(self);
  try
    Logo.ShowProgress(3);
    Logo.NextStep('Установка соединения с БД');
    if SetConnection then
    begin
      Logo.NextStep('Идентификация пользователя');
      if CheckUser then
      begin
         Logo.NextStep('Создание среды приложения');
         if CreateInterface then
         Result:=true;
      end;
    end;
  finally
    Logo.Free;
  end;
end;

function TMainDM.CheckBlockPeriod: boolean;
begin
  if CheckBlockQR.Active then CheckBlockQR.Close;
  CheckBlockQR.Parameters.ParamByName('TransactDate').Value := MainQueryTransactDate.AsDateTime;
  CheckBlockQR.Open;
  Result := CheckBlockQR.RecordCount>0;
end;

procedure TMainDM.MainQueryBeforePost(DataSet: TDataSet);
begin
   if not FIsInsert then
   begin
    if CheckBlockPeriod then
    begin
      if CurrentUser.CanBlockRecords then
        begin
          if not (MainDM.MessageForm.ShowQuestion('Вы действительно хотите вставить(изменить) запись в заблокированном периоде?',2)=mrYes) then
            Abort;
        end
      else
        begin
          MainDM.MessageForm.ShowError('Невозможно вставить(изменить) запись в заблокированном периоде!');
          Abort;
        end;
    end
   end;
end;

function TMainDM.SetConnection: boolean;
begin
  Result:=false;
  try
    DBConnect.Close;
    DBConnect.ConnectionString:='FILE NAME='+ExtractFilePath(Application.ExeName)+'connection.udl';
    DBConnect.Connected:=true;
    Result:=true;
  except
    MessageForm.ShowError('Невозможно установить связь с БД');
  end;
end;


end.
