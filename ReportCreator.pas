unit ReportCreator;

interface

uses Classes, SysUtils, ADODB, Variants, GUIManagerReportForm, GUITranspReportForm,
     GUIReportForm, GUIBuyingReportForm, GUIPoint5ReportForm, TypesAndConstants,
     Controls,ExpPercentGraph, GUIReportAVGForm;

type

  TReportCreator=class
     private
       function GetVinnikSumProfit(BeginDate,EndDate:TDateTime):double;
       function GetSamoVz(BeginDate,EndDate: TDateTime): double;
       function GetSpecCost(BeginDate,EndDate: TDateTime): double;
     public
       procedure CreateManagerReport(BeginDate,EndDate:TDateTime);
       procedure CreateTranspReport(BeginDate,EndDate:TDateTime);
       procedure CreateCrossReport(BeginDate,EndDate:TDateTime);
       procedure CreateBuyingReport(BeginDate,EndDate:TDateTime);
       procedure CreateBuyingSnabReport(BeginDate,EndDate:TDateTime);
       procedure CreateSaleReport(BeginDate,EndDate:TDateTime);
       procedure CreatePoint5Report(BeginDate,EndDate:TDateTime);
       procedure CreateExpensesReport(BeginDate,EndDate:TDateTime);
       procedure CreateFinExpReport(BeginDate,EndDate:TDateTime);
       procedure CreateInvExpReport(BeginDate,EndDate:TDateTime);
       procedure CreateSalaryReport(BeginDate,EndDate:TDateTime);
       procedure CreateSumExpReport(BeginDate,EndDate:TDateTime);
       procedure CreateSumExpGraph(BeginDate,EndDate:TDateTime);
  end;

implementation

uses DataModule;


// отчет по менеджеру
procedure TReportCreator.CreateManagerReport(BeginDate,EndDate:TDateTime);
var itemindex:integer;
    TranspReportQR:TADOQuery;
    RepForm:TManagerReportForm;
    ManagerID:integer;
    ManagerName:string;
    ShowResult:boolean;
    TypeReport:integer;
begin
   RepForm:=TManagerReportForm.Create(nil);
   try
      ManagerID:=MainDM.CurrentUser.ID;
      TypeReport:=1;// сокращенный отчет для менеджера
      if not MainDM.CurrentUser.OnlyUserRecords then
         ShowResult:=RepForm.ShowAdminChoose(BeginDate,EndDate,ManagerID, TypeReport)=1
       else
         ShowResult:=RepForm.ShowUserChoose(BeginDate,EndDate)=1{mrOK};
      if ShowResult then
       begin
         TranspReportQR:=TADOQuery.Create(nil);
         try
            TranspReportQR.Connection:=MainDM.DBConnect;
            MainDM.UsersQuery.Locate('ID',ManagerID,[]);
            ManagerName:=MainDM.UsersQuery.FieldByName('UserFIO').AsString;
            // полный отчет
            if TypeReport=0 then
             begin
                TranspReportQR.SQL.Add('select convert (DateTime,TransactDate,104) as ConvertedDate, TransactDate,OrgName,MaterialName,SalePrice,SaleVolume,UnitName,');
                TranspReportQR.SQL.Add('SaleProfit,CommonProfit,ManagerPercent,ManagerProfit');
                TranspReportQR.SQL.Add('from MainTransactions as MT,Organizations,Materials, Units');
                TranspReportQR.SQL.Add('where MT.OrganizationID=Organizations.ID and MT.MaterialID=Materials.ID');
                TranspReportQR.SQL.Add('and MT.SaleUnitID=Units.ID');
                TranspReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
                TranspReportQR.SQL.Add('and MT.ManagerID='+inttostr(ManagerID));
                TranspReportQR.SQL.Add('order by TransactDate,OrgName,MaterialName');
                TranspReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
                TranspReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
                itemindex:=MainDM.ManagerReport.Variables.IndexOf('RepTitle');
                MainDM.ManagerReport.Variables.Items[itemindex].Value:='Премия менеджера'+#13#10+
                                                                      ManagerName+#13#10+
                                                                      'с '+DateTimeToStr(BeginDate)+
                                                                      ' по '+DateTimeToStr(EndDate);
                TranspReportQR.Open;
                if TranspReportQR.RecordCount>0 then
                 begin
                  MainDM.ReportDataset.DataSet:=TranspReportQR;
                  MainDM.ManagerReport.ShowReport(True);
                 end
                else
                  MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
             end
             else
             begin
                TranspReportQR.SQL.Add('select convert (DateTime,TransactDate,104) as ConvertedDate, TransactDate,OrgName,MaterialName,SalePrice,SaleVolume,');
                TranspReportQR.SQL.Add('UnitName,SaleProfit,ManagerProfit');
                TranspReportQR.SQL.Add('from MainTransactions as MT,Organizations,Materials, Units');
                TranspReportQR.SQL.Add('where MT.OrganizationID=Organizations.ID and MT.MaterialID=Materials.ID');
                TranspReportQR.SQL.Add('and MT.SaleUnitID=Units.ID');
                TranspReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
                TranspReportQR.SQL.Add('and MT.ManagerID='+inttostr(ManagerID));
                TranspReportQR.SQL.Add('order by TransactDate,OrgName,MaterialName');
                TranspReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
                TranspReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
                itemindex:=MainDM.ManagerReport.Variables.IndexOf('RepTitle');
                MainDM.ManagerReportShort.Variables.Items[itemindex].Value:='Премия менеджера'+#13#10+
                                                                      ManagerName+#13#10+
                                                                      'с '+DateTimeToStr(BeginDate)+
                                                                      ' по '+DateTimeToStr(EndDate);
                TranspReportQR.Open;
                if TranspReportQR.RecordCount>0 then
                 begin
                  MainDM.ReportDataset.DataSet:=TranspReportQR;
                  MainDM.ManagerReportShort.ShowReport(True);
                 end
                else
                  MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
             end;
         finally
           TranspReportQR.Free;
         end;
       end;
   finally
     RepForm.Free;
   end;
end;

procedure TReportCreator.CreatePoint5Report(BeginDate, EndDate: TDateTime);
var itemindex:integer;
    OrgID:integer;
    Point5ReportQR:TADOQuery;
    RepForm:TPoint5ReportForm;
begin
 {  RepForm:=TPoint5ReportForm.Create(nil);
   try
     try
     OrgID:=-1;
     if ReportForm.ShowChoose(BeginDate,EndDate,OrgID)=1 then
       begin
         Point5ReportQR:=TADOQuery.Create(nil);
         try
            Point5ReportQR.Connection:=MainDM.DBConnect;
            Point5ReportQR.SQL.Add('Select MaterialName,(SalePrice-5*SalePrice/100) as SalePrice5,');
            Point5ReportQR.SQL.Add('sum(SaleVolume) as SumSaleVolume,sum((SalePrice-5*SalePrice/100)*SaleVolume) as SumSaleCost');
            Point5ReportQR.SQL.Add('from MainTransactions MT, Materials');
            Point5ReportQR.SQL.Add('where MT.MaterialID=Materials.ID');
            Point5ReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
            Point5ReportQR.SQL.Add('group by MaterialName,SalePrice');
            Point5ReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            Point5ReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            itemindex:=MainDM.Point5Report.Variables.IndexOf('RepTitle');
            MainDM.Point5Report.Variables.Items[itemindex].Value:='0,5% отчет за период'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);
            Point5ReportQR.Open;
            if Point5ReportQR.RecordCount>0 then
             begin
                MainDM.ReportDataset.DataSet:=Point5ReportQR;
                MainDM.Point5Report.ShowReport(True);
              end
            else
               MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
         finally
           Point5ReportQR.Free;
         end;
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     ReportForm.Free;
   end;  }
end;

// отчет по перевозчикам
procedure TReportCreator.CreateTranspReport(BeginDate,EndDate:TDateTime);
var itemindex:integer;
    TranspReportQR:TADOQuery;
    RepForm:TTranspReportForm;
    TranspID:integer;
    TranspName:string;
begin
   RepForm:=TTranspReportForm.Create(nil);
   try
     TranspID:=-1;
     if RepForm.ShowChoose(BeginDate,EndDate,TranspID)=1 then
       begin
         TranspReportQR:=TADOQuery.Create(nil);
         try
            TranspReportQR.Connection:=MainDM.DBConnect;
            if TranspID>0 then  // детальный отчет по перевозчикам
            begin                   // сразу хранить с минусом?
              MainDM.TransportersQuery.Locate('ID',TranspID,[]);
              TranspName:=MainDM.TransportersQuery.FieldByName('TransporterName').AsString;
              TranspReportQR.SQL.Add('select convert (DateTime,TransactDate,104) as ConvertedDate, TransactDate,OrgName,MaterialName,UnitName,');
              TranspReportQR.SQL.Add('SaleVolume,TransporterPrice,TransporterCost as TranspCost');
              TranspReportQR.SQL.Add('from MainTransactions as MT,Organizations,Materials, Units');
              TranspReportQR.SQL.Add('where MT.OrganizationID=Organizations.ID and MT.MaterialID=Materials.ID');
              TranspReportQR.SQL.Add('and MT.SaleUnitID=Units.ID');
              TranspReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
              TranspReportQR.SQL.Add('and MT.TransporterID='+inttostr(TranspID));
              TranspReportQR.SQL.Add('and MT.OrganizationID<>1');
              TranspReportQR.SQL.Add('union all');
              TranspReportQR.SQL.Add('select convert (DateTime,TransactDate,104) as ConvertedDate, TransactDate,OrgName,MaterialName,UnitName,');
              TranspReportQR.SQL.Add('SaleVolume,SalePrice as TransporterPrice,SaleProfit*(-1) as TranspCost');
              TranspReportQR.SQL.Add('from MainTransactions as MT,Organizations,Materials, Units');
              TranspReportQR.SQL.Add('where MT.OrganizationID=Organizations.ID and MT.MaterialID=Materials.ID');
              TranspReportQR.SQL.Add('and MT.SaleUnitID=Units.ID');
              TranspReportQR.SQL.Add('and MT.TransactDate between :BD1 and :ED1');
              TranspReportQR.SQL.Add('and MT.TransporterID='+inttostr(TranspID));
              TranspReportQR.SQL.Add('and MT.OrganizationID=1');
              TranspReportQR.SQL.Add('order by TransactDate,OrgName,MaterialName');
              TranspReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
              TranspReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
              TranspReportQR.Parameters.ParamByName('BD1').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
              TranspReportQR.Parameters.ParamByName('ED1').Value:=formatdatetime('yyyy-mm-dd',EndDate);
              itemindex:=MainDM.TranspDetailReport.Variables.IndexOf('RepTitle');
              MainDM.TranspDetailReport.Variables.Items[itemindex].Value:='Отчет по расчетам с перевозчиком'+#13#10+
                                                                    TranspName+#13#10+
                                                                    'с '+DateTimeToStr(BeginDate)+
                                                                    ' по '+DateTimeToStr(EndDate);
                                                                    TranspReportQR.Open;
              if TranspReportQR.RecordCount>0 then
               begin
                  MainDM.ReportDataset.DataSet:=TranspReportQR;
                  MainDM.TranspDetailReport.ShowReport(True);
               end
            end
            else
            begin            // общий отчет по перевозчикам
              MainDM.TransportersQuery.Locate('ID',TranspID,[]);
              TranspName:=MainDM.TransportersQuery.FieldByName('TransporterName').AsString;
              TranspReportQR.SQL.Add('select t.TransporterName,sum(t.Cost) as SumCost from');
              TranspReportQR.SQL.Add('(select TransporterName,TransporterCost as Cost');
              TranspReportQR.SQL.Add('from MainTransactions as MT,Transporters');
              TranspReportQR.SQL.Add('where MT.TransporterID = Transporters.ID');
              TranspReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
              TranspReportQR.SQL.Add('and MT.OrganizationID<>1');
              TranspReportQR.SQL.Add('union all');
              TranspReportQR.SQL.Add('select TransporterName,SaleProfit*(-1) as Cost');
              TranspReportQR.SQL.Add('from MainTransactions as MT,Transporters');
              TranspReportQR.SQL.Add('where MT.TransporterID = Transporters.ID');
              TranspReportQR.SQL.Add('and MT.TransactDate between :BD1 and :ED1');
              TranspReportQR.SQL.Add('and MT.OrganizationID=1) as t');
              TranspReportQR.SQL.Add('group by TransporterName');
              TranspReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
              TranspReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
              TranspReportQR.Parameters.ParamByName('BD1').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
              TranspReportQR.Parameters.ParamByName('ED1').Value:=formatdatetime('yyyy-mm-dd',EndDate);
              itemindex:=MainDM.TranspCommonReport.Variables.IndexOf('RepTitle');
              MainDM.TranspCommonReport.Variables.Items[itemindex].Value:='Общий отчет по расчетам с перевозчиками'+#13#10+
                                                                    'с '+DateTimeToStr(BeginDate)+
                                                                    ' по '+DateTimeToStr(EndDate);
                                                                    TranspReportQR.Open;
              if TranspReportQR.RecordCount>0 then
               begin
                  MainDM.ReportDataset.DataSet:=TranspReportQR;
                  MainDM.TranspCommonReport.ShowReport(True);
                end
            end;

            if TranspReportQR.RecordCount=0 then
               MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
         finally
           TranspReportQR.Free;
         end;
       end;
   finally
     RepForm.Free;
   end;
end;

function TReportCreator.GetVinnikSumProfit(BeginDate,
  EndDate: TDateTime): double;
var QR:TAdoQuery;
begin
  Result:=0;
   QR:=TADOQuery.Create(nil);
   try
      QR.Connection:=MainDM.DBConnect;
      QR.SQL.Add('Select isnull(SUM(VCommonCost),0) from VinnikTransactions VT');
      QR.SQL.Add('where VT.VTransactDate between :BD and :ED');
      QR.Parameters.ParamByName('BD').Value:=DateTimeToStr(BeginDate);
      QR.Parameters.ParamByName('ED').Value:=DateTimeToStr(EndDate);
      QR.Open;
      Result:=QR.Fields[0].AsFloat;
   finally
     QR.Free;
   end;
end;

function TReportCreator.GetSamoVz(BeginDate,
  EndDate: TDateTime): double;
var QR:TAdoQuery;
begin
  Result:=0;
   QR:=TADOQuery.Create(nil);
   try
      QR.Connection:=MainDM.DBConnect;
      QR.SQL.Add('Select isnull(SUM(CommonProfit),0) from MainTransactions MT');
      QR.SQL.Add('where MT.TransactDate between :BD and :ED');
      QR.SQL.Add('and (OrganizationID=1');
      QR.SQL.Add('or TransporterID=(Select id from Transporters');
      QR.SQL.Add('where lower(TransporterName) like :TranspName))');
      QR.Parameters.ParamByName('TranspName').Value:='самовывоз';
      QR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
      QR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
      QR.Open;
      Result:=QR.Fields[0].AsFloat;
   finally
     QR.Free;
   end;
end;

function TReportCreator.GetSpecCost(BeginDate,
  EndDate: TDateTime): double;
var QR:TAdoQuery;
begin
  Result:=0;
   QR:=TADOQuery.Create(nil);
   try
      QR.Connection:=MainDM.DBConnect;
      QR.SQL.Add('Select isnull(SUM(SpecialCost),0) from MainTransactions MT');
      QR.SQL.Add('where MT.TransactDate between :BD and :ED');
      QR.SQL.Add('and MaterialID is null');
      QR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
      QR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
      QR.Open;
      Result:=QR.Fields[0].AsFloat;
   finally
     QR.Free;
   end;
end;

procedure TReportCreator.CreateCrossReport(BeginDate,EndDate:TDateTime);
var itemindex:integer;
    OrgID:integer;
    CrossReportQR:TADOQuery;
begin
 {  ReportForm:=TReportForm.Create(nil);
   try
     try
     OrgID:=-1;
     if ReportForm.ShowChoose(BeginDate,EndDate,OrgID)=1 then
       begin
         CrossReportQR:=TADOQuery.Create(nil);
         try
            CrossReportQR.Connection:=MainDM.DBConnect;
            CrossReportQR.SQL.Add('select convert (DateTime,TransactDate,104) as TransactDate,');
            CrossReportQR.SQL.Add('OrgName, MaterialName, CommonProfit');
            CrossReportQR.SQL.Add('from MainTransactions MT, Organizations, Materials');
            CrossReportQR.SQL.Add('where MT.OrganizationID=Organizations.ID and MT.MaterialID=Materials.ID');
            CrossReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
            CrossReportQR.SQL.Add('order by TransactDate,OrgName,MaterialName');
            CrossReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            CrossReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            itemindex:=MainDM.CrossReport.Variables.IndexOf('RepTitle');
            MainDM.CrossReport.Variables.Items[itemindex].Value:='Сводный отчет за неделю'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);
            CrossReportQR.Open;
            if CrossReportQR.RecordCount>0 then
             begin
                MainDM.ReportDataset.DataSet:=CrossReportQR;
                MainDM.CrossReport.ShowReport(True);
              end
            else
               MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
         finally
           CrossReportQR.Free;
         end;
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     ReportForm.Free;
   end;  }
end;

procedure TReportCreator.CreateExpensesReport(BeginDate, EndDate: TDateTime);
var itemindex:integer;
    OrgID:integer;
    ExpReportQR:TADOQuery;
    PeriodForm:TPoint5ReportForm;
begin
   PeriodForm:=TPoint5ReportForm.Create(nil);
   try
     try
     if PeriodForm.ShowChoose(BeginDate,EndDate)=1 then
       begin
         ExpReportQR:=TADOQuery.Create(nil);
         try
            ExpReportQR.Connection:=MainDM.DBConnect;
            ExpReportQR.SQL.Add('select ExpenseDate as ExpDate,');
            ExpReportQR.SQL.Add('ExpenseName as ExpName,ExpenseValue as ExpValue from expenses');
            ExpReportQR.SQL.Add('where ExpenseDate between :BD1 and :ED1');
            ExpReportQR.Parameters.ParamByName('BD1').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            ExpReportQR.Parameters.ParamByName('ED1').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            itemindex:=MainDM.ExpReport.Variables.IndexOf('RepTitle');
            MainDM.ExpReport.Variables.Items[itemindex].Value:='Отчет по общим расходам за период'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);
            ExpReportQR.Open;
            if ExpReportQR.RecordCount>0 then
             begin
                MainDM.ReportDataset.DataSet:=ExpReportQR;
                MainDM.ExpReport.ShowReport(True);
              end
            else
               MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
         finally
           ExpReportQR.Free;
         end;
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     PeriodForm.Free;
   end;
end;

procedure TReportCreator.CreateFinExpReport(BeginDate, EndDate: TDateTime);
var itemindex:integer;
    OrgID:integer;
    ExpReportQR:TADOQuery;
    PeriodForm:TPoint5ReportForm;
begin
   PeriodForm:=TPoint5ReportForm.Create(nil);
   try
     try
     if PeriodForm.ShowChoose(BeginDate,EndDate)=1 then
       begin
         ExpReportQR:=TADOQuery.Create(nil);
         try
            ExpReportQR.Connection:=MainDM.DBConnect;
            ExpReportQR.SQL.Add('select FinExpDate as ExpDate,');
            ExpReportQR.SQL.Add('FinExpName as ExpName,FinExpValue as ExpValue from FinExpenses');
            ExpReportQR.SQL.Add('where FinExpDate between :BD1 and :ED1');
            ExpReportQR.Parameters.ParamByName('BD1').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            ExpReportQR.Parameters.ParamByName('ED1').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            itemindex:=MainDM.ExpReport.Variables.IndexOf('RepTitle');
            MainDM.ExpReport.Variables.Items[itemindex].Value:='Отчет по финансовым расходам за период'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);
            ExpReportQR.Open;
            if ExpReportQR.RecordCount>0 then
             begin
                MainDM.ReportDataset.DataSet:=ExpReportQR;
                MainDM.ExpReport.ShowReport(True);
              end
            else
               MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
         finally
           ExpReportQR.Free;
         end;
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     PeriodForm.Free;
   end;
end;

procedure TReportCreator.CreateInvExpReport(BeginDate, EndDate: TDateTime);
var itemindex:integer;
    OrgID:integer;
    ExpReportQR:TADOQuery;
    PeriodForm:TPoint5ReportForm;
begin
   PeriodForm:=TPoint5ReportForm.Create(nil);
   try
     try
     if PeriodForm.ShowChoose(BeginDate,EndDate)=1 then
       begin
         ExpReportQR:=TADOQuery.Create(nil);
         try
            ExpReportQR.Connection:=MainDM.DBConnect;
            ExpReportQR.SQL.Add('select InvExpDate as ExpDate,');
            ExpReportQR.SQL.Add('InvExpName as ExpName,InvExpValue as ExpValue from InvestExpenses');
            ExpReportQR.SQL.Add('where InvExpDate between :BD1 and :ED1');
            ExpReportQR.Parameters.ParamByName('BD1').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            ExpReportQR.Parameters.ParamByName('ED1').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            itemindex:=MainDM.ExpReport.Variables.IndexOf('RepTitle');
            MainDM.ExpReport.Variables.Items[itemindex].Value:='Отчет по инвестиционным расходам за период'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);
            ExpReportQR.Open;
            if ExpReportQR.RecordCount>0 then
             begin
                MainDM.ReportDataset.DataSet:=ExpReportQR;
                MainDM.ExpReport.ShowReport(True);
              end
            else
               MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
         finally
           ExpReportQR.Free;
         end;
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     PeriodForm.Free;
   end;
end;

procedure TReportCreator.CreateBuyingReport(BeginDate,EndDate:TDateTime);
var itemindex:integer;
    PlaceID:integer;
    BuyingReportQR:TADOQuery;
    ReportType:integer;
    ReportForm:TBuyingReportForm;
    PlaceName:string;
begin
   ReportForm:=TBuyingReportForm.Create(nil);
   try
     PlaceID:=-1;
     ReportType:=1;
     // всегда 1 место закупки
     if ReportForm.ShowChoose(BeginDate,EndDate,PlaceID,ReportType)=1 then
       begin
         BuyingReportQR:=TADOQuery.Create(nil);
         try
           BuyingReportQR.Connection:=MainDM.DBConnect;
           MainDM.PlacesQuery.Locate('ID',PlaceID,[]);
           PlaceName:=MainDM.PlacesQuery.FieldByName('PlaceName').AsString;
         // общий отчет по месту закупки
         if ReportType=0 then
           begin
               BuyingReportQR.SQL.Add('Select MaterialName, BuyingPrice, UnitName, sum(BuyingVolume) as CommonVolume,BuyingPrice*sum(BuyingVolume) as commoncost');
               BuyingReportQR.SQL.Add('from MainTransactions as MT, Materials,Units');
               BuyingReportQR.SQL.Add('where MT.MaterialID=Materials.ID');
               BuyingReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
               BuyingReportQR.SQL.Add('and MT.BuyingUnitID=Units.ID');
             //  BuyingReportQR.SQL.Add('and MT.OrganizationID<>1');
               BuyingReportQR.SQL.Add('and MT.BuyingPlaceID='+inttostr(PlaceID));
               if MainDM.CurrentUser.OnlyUserRecords then
                 BuyingReportQR.SQL.Add('and MT.ManagerID='+inttostr(MainDM.CurrentUser.ID));
               BuyingReportQR.SQL.Add('group by MaterialName,BuyingPrice,UnitName');
               BuyingReportQR.SQL.Add('order by MaterialName');
               BuyingReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
               BuyingReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
               itemindex:=MainDM.BuyingCommonReport.Variables.IndexOf('RepTitle');
               MainDM.BuyingCommonReport.Variables.Items[itemindex].Value:='Закупка'+#13#10+
                                                                  'c карьера "'+PlaceName+'"'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);
               BuyingReportQR.Open;
               if BuyingReportQR.RecordCount>0 then
                begin
                  MainDM.ReportDataset.DataSet:=BuyingReportQR;
                  MainDM.BuyingCommonReport.ShowReport(True);
                end
           end
           else // детальный отчет
           begin
               BuyingReportQR.SQL.Add('Select convert (DateTime,TransactDate,104) as ConvertedDate, TransactDate, OrgName, MaterialName, UnitName, BuyingPrice, BuyingVolume, BuyingPrice*BuyingVolume as commoncost');
               BuyingReportQR.SQL.Add('from MainTransactions as MT, Organizations, Materials,Units');
               BuyingReportQR.SQL.Add('where MT.OrganizationID=Organizations.ID and MT.MaterialID=Materials.ID');
               BuyingReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
               BuyingReportQR.SQL.Add('and MT.BuyingUnitID=Units.ID');
           //    BuyingReportQR.SQL.Add('and MT.OrganizationID<>1');
               BuyingReportQR.SQL.Add('and MT.BuyingPlaceID='+inttostr(PlaceID));
               if MainDM.CurrentUser.OnlyUserRecords then
                 BuyingReportQR.SQL.Add('and MT.ManagerID='+inttostr(MainDM.CurrentUser.ID));
               BuyingReportQR.SQL.Add('order by TransactDate,OrgName,MaterialName,BuyingPrice');
               BuyingReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
               BuyingReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
               itemindex:=MainDM.BuyingDetailReport.Variables.IndexOf('RepTitle');
               MainDM.BuyingDetailReport.Variables.Items[itemindex].Value:='Закупка'+#13#10+
                                                                  'c карьера "'+PlaceName+'"'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                   ' по '+DateTimeToStr(EndDate);
               BuyingReportQR.Open;
               if BuyingReportQR.RecordCount>0 then
                begin
                  MainDM.ReportDataset.DataSet:=BuyingReportQR;
                  MainDM.BuyingDetailReport.ShowReport(True);
                end

           end;
             if BuyingReportQR.RecordCount=0 then
                MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
         finally
           BuyingReportQR.Free;
         end;
       end;
   finally
     ReportForm.Free;
   end;
end;

procedure TReportCreator.CreateBuyingSnabReport(BeginDate,EndDate:TDateTime);
var itemindex:integer;
    PlaceID:integer;
    BuyingReportQR:TADOQuery;
    ReportType:integer;
    ReportForm:TBuyingReportForm;
    PlaceName:string;
begin
   ReportForm:=TBuyingReportForm.Create(nil);
   try
     PlaceID:=-1;
     ReportType:=1;
     // всегда 1 место закупки
     if ReportForm.ShowChoose(BeginDate,EndDate,PlaceID,ReportType)=1 then
       begin
         BuyingReportQR:=TADOQuery.Create(nil);
         try
           BuyingReportQR.Connection:=MainDM.DBConnect;
           MainDM.PlacesQuery.Locate('ID',PlaceID,[]);
           PlaceName:=MainDM.PlacesQuery.FieldByName('PlaceName').AsString;
         // общий отчет по месту закупки
         if ReportType=0 then
           begin
               BuyingReportQR.SQL.Add('Select MaterialName, BuyingPrice, UnitName, sum(BuyingVolume) as CommonVolume,BuyingPrice*sum(BuyingVolume) as commoncost');
               BuyingReportQR.SQL.Add('from MainTransactions as MT, Materials,Units');
               BuyingReportQR.SQL.Add('where MT.MaterialID=Materials.ID');
               BuyingReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
               BuyingReportQR.SQL.Add('and MT.BuyingUnitID=Units.ID');
             //  BuyingReportQR.SQL.Add('and MT.OrganizationID<>1');
               BuyingReportQR.SQL.Add('and MT.BuyingPlaceID='+inttostr(PlaceID));
               if MainDM.CurrentUser.OnlyUserRecords then
                 BuyingReportQR.SQL.Add('and MT.ManagerID='+inttostr(MainDM.CurrentUser.ID));
               BuyingReportQR.SQL.Add('group by MaterialName,BuyingPrice,UnitName');
               BuyingReportQR.SQL.Add('order by MaterialName');
               BuyingReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
               BuyingReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
               itemindex:=MainDM.BuyingCommonReport.Variables.IndexOf('RepTitle');
               MainDM.BuyingCommonSnabReport.Variables.Items[itemindex].Value:='Закупка'+#13#10+
                                                                  'c карьера "'+PlaceName+'"'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);
               BuyingReportQR.Open;
               if BuyingReportQR.RecordCount>0 then
                begin
                  MainDM.ReportDataset.DataSet:=BuyingReportQR;
                  MainDM.BuyingCommonSnabReport.ShowReport(True);
                end
           end
           else // детальный отчет
           begin
               BuyingReportQR.SQL.Add('Select convert (DateTime,TransactDate,104) as ConvertedDate, TransactDate, OrgName, MaterialName, UnitName, BuyingPrice, BuyingVolume, BuyingPrice*BuyingVolume as commoncost');
               BuyingReportQR.SQL.Add('from MainTransactions as MT, Organizations, Materials,Units');
               BuyingReportQR.SQL.Add('where MT.OrganizationID=Organizations.ID and MT.MaterialID=Materials.ID');
               BuyingReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
               BuyingReportQR.SQL.Add('and MT.BuyingUnitID=Units.ID');
           //    BuyingReportQR.SQL.Add('and MT.OrganizationID<>1');
               BuyingReportQR.SQL.Add('and MT.BuyingPlaceID='+inttostr(PlaceID));
               if MainDM.CurrentUser.OnlyUserRecords then
                 BuyingReportQR.SQL.Add('and MT.ManagerID='+inttostr(MainDM.CurrentUser.ID));
               BuyingReportQR.SQL.Add('order by TransactDate,OrgName,MaterialName,BuyingPrice');
               BuyingReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
               BuyingReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
               itemindex:=MainDM.BuyingDetailReport.Variables.IndexOf('RepTitle');
               MainDM.BuyingDetailSnabReport.Variables.Items[itemindex].Value:='Закупка'+#13#10+
                                                                  'c карьера "'+PlaceName+'"'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                   ' по '+DateTimeToStr(EndDate);
               BuyingReportQR.Open;
               if BuyingReportQR.RecordCount>0 then
                begin
                  MainDM.ReportDataset.DataSet:=BuyingReportQR;
                  MainDM.BuyingDetailSnabReport.ShowReport(True);
                end

           end;
             if BuyingReportQR.RecordCount=0 then
                MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
         finally
           BuyingReportQR.Free;
         end;
       end;
   finally
     ReportForm.Free;
   end;
end;

procedure TReportCreator.CreateSalaryReport(BeginDate, EndDate: TDateTime);
var itemindex:integer;
    OrgID:integer;
    ExpReportQR:TADOQuery;
    PeriodForm:TAVGReportForm;
    AVGMonth:boolean;
begin
   AVGMonth:=false;
   PeriodForm:=TAVGReportForm.Create(nil);
   try
     try
     if PeriodForm.ShowChoose(BeginDate,EndDate,AVGMonth)=1 then
       begin
         ExpReportQR:=TADOQuery.Create(nil);
         try
            ExpReportQR.Connection:=MainDM.DBConnect;
            if not AVGMonth then
            begin
              ExpReportQR.SQL.Add('select UserFIO,Month(SalaryDate) as Month,');
              ExpReportQR.SQL.Add('Year(SalaryDate) as Year,SalaryDate as ExpDate,');
              ExpReportQR.SQL.Add('SalaryName as ExpName,SalaryValue as ExpValue from salary,users');
              ExpReportQR.SQL.Add('where salary.person = users.id');
              ExpReportQR.SQL.Add('and SalaryDate between :BD1 and :ED1');
              ExpReportQR.SQL.Add('group by UserFIO,SalaryDate,SalaryName,SalaryValue');
              ExpReportQR.SQL.Add('order by UserFIO');
              ExpReportQR.Parameters.ParamByName('BD1').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
              ExpReportQR.Parameters.ParamByName('ED1').Value:=formatdatetime('yyyy-mm-dd',EndDate);
              itemindex:=MainDM.SalaryReport.Variables.IndexOf('RepTitle');
              MainDM.SalaryReport.Variables.Items[itemindex].Value:='Отчет по з/п за период'+#13#10+
                                                                    'с '+DateTimeToStr(BeginDate)+
                                                                    ' по '+DateTimeToStr(EndDate);
              ExpReportQR.Open;
              if ExpReportQR.RecordCount>0 then
               begin
                  MainDM.ReportDataset.DataSet:=ExpReportQR;
                  MainDM.SalaryReport.ShowReport(True);
                end
              else
                 MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
            end
            else
            begin
              ExpReportQR.SQL.Add('select UserFIO,ExpMonth = CASE Month(SalaryDate)');
              ExpReportQR.SQL.Add('WHEN 1 THEN ''Январь''');
              ExpReportQR.SQL.Add('WHEN 2 THEN ''Февраль''');
              ExpReportQR.SQL.Add('WHEN 3 THEN ''Март''');
              ExpReportQR.SQL.Add('WHEN 4 THEN ''Апрель''');
              ExpReportQR.SQL.Add('WHEN 5 THEN ''Май''');
              ExpReportQR.SQL.Add('WHEN 6 THEN ''Июнь''');
              ExpReportQR.SQL.Add('WHEN 7 THEN ''Июль''');
              ExpReportQR.SQL.Add('WHEN 8 THEN ''Август''');
              ExpReportQR.SQL.Add('WHEN 9 THEN ''Сентябрь''');
              ExpReportQR.SQL.Add('WHEN 10 THEN ''Октябрь''');
              ExpReportQR.SQL.Add('WHEN 11 THEN ''Ноябрь''');
              ExpReportQR.SQL.Add('WHEN 12 THEN ''Декабрь''');
              ExpReportQR.SQL.Add('   END,');
              ExpReportQR.SQL.Add('Year(SalaryDate) as ExpYear,');
              ExpReportQR.SQL.Add('sum(SalaryValue) as ExpValue from salary,users');
              ExpReportQR.SQL.Add('where salary.person = users.id');
              ExpReportQR.SQL.Add('and SalaryDate between :BD1 and :ED1');
              ExpReportQR.SQL.Add('group by UserFIO,Year(SalaryDate),Month(SalaryDate)');
              ExpReportQR.SQL.Add('order by UserFIO');
              ExpReportQR.Parameters.ParamByName('BD1').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
              ExpReportQR.Parameters.ParamByName('ED1').Value:=formatdatetime('yyyy-mm-dd',EndDate);
              itemindex:=MainDM.SalaryMonthReport.Variables.IndexOf('RepTitle');
              MainDM.SalaryMonthReport.Variables.Items[itemindex].Value:='Отчет по з/п за период'+#13#10+
                                                                    'с '+DateTimeToStr(BeginDate)+
                                                                    ' по '+DateTimeToStr(EndDate);
              ExpReportQR.Open;
              if ExpReportQR.RecordCount>0 then
               begin
                  MainDM.ReportDataset.DataSet:=ExpReportQR;
                  MainDM.SalaryMonthReport.ShowReport(True);
                end
              else
                  MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
            end;
         finally
           ExpReportQR.Free;
         end;
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     PeriodForm.Free;
   end;
end;

procedure TReportCreator.CreateSaleReport(BeginDate,EndDate:TDateTime);
var itemindex:integer;
    OrgID,MngID:integer;
    SaleReportQR:TADOQuery;
    ReportTitle : string;
begin
   ReportForm:=TReportForm.Create(nil);
   try
     try
     OrgID:=-1;
     MngID:=-1;
     if ReportForm.ShowChoose(BeginDate,EndDate,OrgID, MngID)=1 then
       begin
         SaleReportQR:=TADOQuery.Create(nil);
         try
           SaleReportQR.Connection:=MainDM.DBConnect;
           if OrgID>0 then
             begin
               // детальный отчет по конкретной организации
               MainDM.OrganizationsQuery.Locate('ID',OrgID,[]);
               SaleReportQR.SQL.Add('Select TransactDate as ConvertedDate, TransactDate, MaterialName, SalePrice, SaleVolume,');
               SaleReportQR.SQL.Add('UnitName, SalePrice*SaleVolume as commoncost,');
               SaleReportQR.SQL.Add('SaleProfit, CommonProfit, PaymentName, Rent');
               SaleReportQR.SQL.Add('from MainTransactions as MT, Materials, Units, PaymentTypes');
               SaleReportQR.SQL.Add('where MT.SaleUnitID=Units.ID and MT.MaterialID=Materials.ID');
               SaleReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
               SaleReportQR.SQL.Add('and MT.PaymentType=PaymentTypes.ID');
               SaleReportQR.SQL.Add('and MT.OrganizationID='+inttostr(OrgID));
               // если менеджер видит только свои записи
               if MainDM.CurrentUser.OnlyUserRecords then
               SaleReportQR.SQL.Add('and MT.ManagerID='+inttostr(MainDM.CurrentUser.ID));
               // если выбран менеджер
               if MngID > 0  then
                 SaleReportQR.SQL.Add('and MT.ManagerID='+inttostr(MngID));
               SaleReportQR.SQL.Add('order by TransactDate');
               SaleReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
               SaleReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
               itemindex:=MainDM.SalesDetailReport.Variables.IndexOf('RepTitle');
               ReportTitle := 'Отчет по продажам '+#13#10+
                                                                  'с "'+MainDM.OrganizationsQuery.FieldByName('OrgName').AsString
                                                                  +'"'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);

               MainDM.SalesDetailReport.Variables.Items[itemindex].Value:= ReportTitle;
               MainDM.SalesDetailReportShort.Variables.Items[itemindex].Value:= ReportTitle;

              SaleReportQR.Open;
              if SaleReportQR.RecordCount>0  then
                begin
                 MainDM.ReportDataset.DataSet:=SaleReportQR;
                 if ReportForm.HideNR then     // прячем НАШУ РАШУ
                   MainDM.SalesDetailReportShort.ShowReport(True)
                 else
                   MainDM.SalesDetailReport.ShowReport(True);
                end
             end
             else
             begin
               // общий отчет по продажам по всем организациям
               SaleReportQR.SQL.Add('Select OrgName, MaterialName, SalePrice, sum(SaleVolume) as sumvolume,');
               SaleReportQR.SQL.Add('UnitName, SalePrice*sum(SaleVolume) as commoncost, sum(SaleProfit) as SaleProfit, sum(CommonProfit) as SumProfit,');
               SaleReportQR.SQL.Add('PaymentName');
               SaleReportQR.SQL.Add('from MainTransactions as MT, Organizations, Materials, Units, PaymentTypes');
               SaleReportQR.SQL.Add('where MT.OrganizationID=Organizations.ID and MT.SaleUnitID=Units.ID and MT.MaterialID=Materials.ID');
               SaleReportQR.SQL.Add('and MT.TransactDate between :BD and :ED');
               if ReportForm.Samovyvoz then
                 SaleReportQR.SQL.Add('and MT.TransporterID in (select id from Transporters where TransporterName like ''самовывоз'')');
             //  SaleReportQR.SQL.Add('and MT.OrganizationID<>1');
               SaleReportQR.SQL.Add('and MT.PaymentType=PaymentTypes.ID');
               // если менеджер видит только свои записи
               if MainDM.CurrentUser.OnlyUserRecords then
                 SaleReportQR.SQL.Add('and MT.ManagerID='+inttostr(MainDM.CurrentUser.ID));
               // если выбран менеджер
               if MngID > 0  then
                 SaleReportQR.SQL.Add('and MT.ManagerID='+inttostr(MngID));
               SaleReportQR.SQL.Add('group by PaymentName, OrgName, MaterialName, SalePrice, UnitName');
               SaleReportQR.SQL.Add('order by PaymentName desc, OrgName, MaterialName');
               SaleReportQR.Parameters.ParamByName('BD').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
               SaleReportQR.Parameters.ParamByName('ED').Value:=formatdatetime('yyyy-mm-dd',EndDate);
               SaleReportQR.Open;
               itemindex:=MainDM.SalesCommonReport.Variables.IndexOf('RepTitle');
               MainDM.SalesCommonReport.Variables.Items[itemindex].Value:='Отчет по продажам '+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);
               if ReportForm.Samovyvoz then
               MainDM.SalesCommonReport.Variables.Items[itemindex].Value:='Отчет по продажам (самовывоз)'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);

               itemindex:=MainDM.SalesCommonReport.Variables.IndexOf('VinnikSumProfit');
               MainDM.SalesCommonReport.Variables.Items[itemindex].Value:=GetVinnikSumProfit(BeginDate,EndDate);
               itemindex:=MainDM.SalesCommonReport.Variables.IndexOf('SamoVz');
               MainDM.SalesCommonReport.Variables.Items[itemindex].Value:=GetSamoVz(BeginDate,EndDate);
               itemindex:=MainDM.SalesCommonReport.Variables.IndexOf('SpecCost');
               MainDM.SalesCommonReport.Variables.Items[itemindex].Value:=GetSpecCost(BeginDate,EndDate);
               if SaleReportQR.RecordCount>0  then
                begin
                 MainDM.ReportDataset.DataSet:=SaleReportQR;
                 MainDM.SalesCommonReport.ShowReport(True);
                end
            end;
            if SaleReportQR.RecordCount=0 then
               MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
         finally
           SaleReportQR.Free;
         end;
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     ReportForm.Free;
   end;
end;



procedure TReportCreator.CreateSumExpGraph(BeginDate, EndDate: TDateTime);
var itemindex:integer;
    OrgID:integer;
    PeriodForm:TPoint5ReportForm;
begin
   PeriodForm:=TPoint5ReportForm.Create(nil);
   try
     try
     if PeriodForm.ShowChoose(BeginDate,EndDate)=1 then
       begin
            if MainDM.SumExpQR.Active then MainDM.SumExpQR.Close;

            MainDM.SumExpQR.Parameters.ParamByName('BD1').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            MainDM.SumExpQR.Parameters.ParamByName('ED1').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            MainDM.SumExpQR.Parameters.ParamByName('BD2').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            MainDM.SumExpQR.Parameters.ParamByName('ED2').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            MainDM.SumExpQR.Parameters.ParamByName('BD3').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            MainDM.SumExpQR.Parameters.ParamByName('ED3').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            MainDM.SumExpQR.Parameters.ParamByName('BD4').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            MainDM.SumExpQR.Parameters.ParamByName('ED4').Value:=formatdatetime('yyyy-mm-dd',EndDate);

            MainDM.SumExpQR.Open;
            if MainDM.SumExpQR.RecordCount>0 then
             begin
                ExpGraphForm.Show;
              end
            else
               MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     PeriodForm.Free;
   end;
end;
procedure TReportCreator.CreateSumExpReport(BeginDate, EndDate: TDateTime);
var itemindex:integer;
    OrgID:integer;
    PeriodForm:TPoint5ReportForm;
begin
   PeriodForm:=TPoint5ReportForm.Create(nil);
   try
     try
     if PeriodForm.ShowChoose(BeginDate,EndDate)=1 then
       begin

            if MainDM.SumExpQR.Active then MainDM.SumExpQR.Close;

            MainDM.SumExpQR.Parameters.ParamByName('BD1').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            MainDM.SumExpQR.Parameters.ParamByName('ED1').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            MainDM.SumExpQR.Parameters.ParamByName('BD2').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            MainDM.SumExpQR.Parameters.ParamByName('ED2').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            MainDM.SumExpQR.Parameters.ParamByName('BD3').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            MainDM.SumExpQR.Parameters.ParamByName('ED3').Value:=formatdatetime('yyyy-mm-dd',EndDate);
            MainDM.SumExpQR.Parameters.ParamByName('BD4').Value:=formatdatetime('yyyy-mm-dd',BeginDate);
            MainDM.SumExpQR.Parameters.ParamByName('ED4').Value:=formatdatetime('yyyy-mm-dd',EndDate);

            itemindex:=MainDM.SumExpReport.Variables.IndexOf('RepTitle');
            MainDM.SumExpReport.Variables.Items[itemindex].Value:='Итоговый отчет по расходам за период'+#13#10+
                                                                  'с '+DateTimeToStr(BeginDate)+
                                                                  ' по '+DateTimeToStr(EndDate);
            MainDM.SumExpQR.Open;
            if MainDM.SumExpQR.RecordCount>0 then
             begin
                MainDM.ReportDataset.DataSet:=MainDM.SumExpQR;
                MainDM.SumExpReport.ShowReport(True);
              end
            else
               MainDM.MessageForm.ShowNotify('Отчет по заданным параметрам не содержит записей!')
       end;
     except
       on e:exception do
         MainDM.MessageForm.ShowError('Ошибка: '+e.message);
     end;
   finally
     PeriodForm.Free;
   end;
end;

end.
