unit MainFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxCalendar, cxMaskEdit, cxMemo, cxTextEdit, cxGridLevel,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxClasses,
  cxGridCustomView, cxGrid, cxDropDownEdit, cxDBLookupComboBox,
  dxSkinsdxBarPainter, cxShellComboBox, cxImage, cxButtonEdit, cxCheckBox,
  dxBar, cxBarEditItem, ActnList, cxImageComboBox, ImgList, Math;

type
  TMainDataFrame = class(TFrame)
    MainGrid: TcxGrid;
    MainGridView: TcxGridDBTableView;
    MainGridViewID: TcxGridDBColumn;
    MainGridViewTransactDate: TcxGridDBColumn;
    MainGridViewOrganizationID: TcxGridDBColumn;
    MainGridViewMaterialID: TcxGridDBColumn;
    MainGridViewSalePrice: TcxGridDBColumn;
    MainGridViewSaleVolume: TcxGridDBColumn;
    MainGridViewSaleUnitID: TcxGridDBColumn;
    MainGridViewSaleProfit: TcxGridDBColumn;
    MainGridViewBuyingPlaceID: TcxGridDBColumn;
    MainGridViewBuyingPrice: TcxGridDBColumn;
    MainGridViewBuyingVolume: TcxGridDBColumn;
    MainGridViewBuyingUnitID: TcxGridDBColumn;
    MainGridViewTransporterID: TcxGridDBColumn;
    MainGridViewTransporterPrice: TcxGridDBColumn;
    MainGridViewTransporterCost: TcxGridDBColumn;
    MainGridViewSpecial: TcxGridDBColumn;
    MainGridViewCommonProfit: TcxGridDBColumn;
    MainGridViewPaymentType: TcxGridDBColumn;
    MainGridViewManagerID: TcxGridDBColumn;
    MainGridViewManagerPercent: TcxGridDBColumn;
    MainGridViewManagerProfit: TcxGridDBColumn;
    MainGridViewComment: TcxGridDBColumn;
    MainGridViewRent: TcxGridDBColumn;
    MainGridLevel1: TcxGridLevel;
    dxBarManager1: TdxBarManager;
    EditBar: TdxBar;
    dxBarButton1: TdxBarButton;
    dxBarButton2: TdxBarButton;
    dxBarButton3: TdxBarButton;
    dxBarButton4: TdxBarButton;
    dxBarButton5: TdxBarButton;
    ActionList1: TActionList;
    InsertMainTransact: TAction;
    UpdateData: TAction;
    CopyMainTransact: TAction;
    DeleteMainTransact: TAction;
    AppendRecord: TAction;
    MainGridViewMatPaymentType: TcxGridDBColumn;
    PM: TdxBarPopupMenu;
    MainGridViewBlocked: TcxGridDBColumn;
    cxImageList1: TcxImageList;
    dxBarButton6: TdxBarButton;
    BlockRecBtn: TdxBarButton;
    MainGridViewBuyingPriceReal: TcxGridDBColumn;
    MainGridViewTransporterPriceReal: TcxGridDBColumn;
    MainGridViewCommonProfitMng: TcxGridDBColumn;
    MainGridViewRentReal: TcxGridDBColumn;
    MainGridViewBuyingCost: TcxGridDBColumn;
    procedure MainGridViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure MainGridViewPaymentTypePropertiesEditValueChanged(
      Sender: TObject);
    procedure MainGridViewMaterialIDPropertiesEditValueChanged(Sender: TObject);
    procedure MainGridViewTransporterIDPropertiesEditValueChanged(
      Sender: TObject);
    procedure MainGridViewManagerIDPropertiesEditValueChanged(Sender: TObject);
    procedure EditValueChanged(Sender: TObject);
    procedure InsertMainTransactExecute(Sender: TObject);
    procedure UpdateDataExecute(Sender: TObject);
    procedure CopyMainTransactExecute(Sender: TObject);
    procedure DeleteMainTransactExecute(Sender: TObject);
    procedure AppendRecordExecute(Sender: TObject);
    procedure dxBarButton6Click(Sender: TObject);
    procedure BlockRecBtnClick(Sender: TObject);
    procedure MainGridViewTransporterCostGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
    procedure MainGridViewBuyingCostGetPropertiesForEdit(
      Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
      var AProperties: TcxCustomEditProperties);
  private
    FEditable:boolean;
    FIniFileName:string;
    Style1,Style2:TcxStyle;
    procedure UpdateProfits;
    procedure OnOrgComboBoxBtnClick(Sender: TObject; AButtonIndex: Integer);
    procedure OnTransportersComboBoxBtnClick(Sender: TObject; AButtonIndex: Integer);
    procedure OnPlacesComboBoxBtnClick(Sender: TObject; AButtonIndex: Integer);
    procedure MaterialPropertiesClick(Sender: TObject;AButtonIndex: Integer);
    function GetEditValue(Source:variant):variant;
    procedure SetFEditable(const Value: boolean);
    function GetFocusedRecordID: integer;
    property FocusedRecordID:integer read GetFocusedRecordID;
  public
     property Editable:boolean read FEditable write SetFEditable;
     procedure ShowAll;
     procedure ShowByDates(BeginDate,EndDate:TDate);
     constructor Create(AOwner: TComponent); override;
     destructor Destroy; override;
  end;

implementation

uses DataModule, GUIListForm, GUIMaterial, GUIMessageForm;

{$R *.dfm}

procedure TMainDataFrame.AppendRecordExecute(Sender: TObject);
begin
  try
    MainGridView.DataController.Post(True);
  except
    on e:exception do
      begin
        if e.Message <> 'Operation aborted' then
        MainDM.MessageForm.ShowError('Ошибка: '+e.message);
       //   MainDM.MainQuery.CancelUpdates;
      end;                                                //
  end;
end;

procedure TMainDataFrame.BlockRecBtnClick(Sender: TObject);
begin
  MainDM.IsInsert :=true;
  MainGridViewBlocked.EditValue := not MainGridViewBlocked.EditValue;
  MainGridView.DataController.Post(True);
  MainDM.IsInsert :=false;
end;

procedure TMainDataFrame.CopyMainTransactExecute(Sender: TObject);
var RecordID:integer;
  i: Integer;
begin
   if FocusedRecordID>-1 then
   if MainDM.MessageForm.ShowQuestion('Дублировать текущую запись?',2)=mrYes then
   begin
     try
     RecordID:=FocusedRecordID+1;
     MainGridView.DataController.Insert;
     for i := 1 to MainGridView.ColumnCount-1 do
       begin
         if not varisnull(MainGridView.DataController.Values[RecordID,i]) then
           MainGridView.Columns[i].EditValue:=MainGridView.DataController.Values[RecordID,i];
       end;
     MainGridView.DataController.PostEditingData;
     except
       on e:exception do
       MainDM.MessageForm.ShowError('Невозможно продублировать запись. Ошибка: '+e.message);
     end;
   end;
end;

constructor TMainDataFrame.Create(AOwner: TComponent);
var Abut,Abut2,Abut3,ABut4,Abut_del,Abut2_del,Abut3_del,Abut4_del:TcxEditButton;
    i:integer;
begin
  inherited;
  Style1:=TcxStyle.Create(self);
  Style1.Color:=$00DFDFDF;
  Style2:=TcxStyle.Create(self);
  Style2.Color:=clwhite;
  Editable:=false;

  Abut:=MainDM.OrgRepository.Properties.Buttons.Add;
  Abut.kind := bkEllipsis;
  Abut_del:=MainDM.OrgRepository.Properties.Buttons.Add;
  Abut_del.Kind:= bkText;
  Abut_del.Caption := 'x';
  MainDM.OrgRepository.Properties.OnButtonClick:=OnOrgComboBoxBtnClick;

  Abut2:=MainDM.MaterialsRepository.Properties.Buttons.Add;
  Abut2.Kind:= bkEllipsis;
  Abut2_del:=MainDM.MaterialsRepository.Properties.Buttons.Add;
  Abut2_del.Kind:= bkText;
  Abut2_del.Caption := 'x';
  MainDM.MaterialsRepository.Properties.OnButtonClick:=MaterialPropertiesClick;

  Abut3:=MainDM.TransporterRepository.Properties.Buttons.Add;
  Abut3.Kind:= bkEllipsis;
  Abut3_del:=MainDM.TransporterRepository.Properties.Buttons.Add;
  Abut3_del.Kind:= bkText;
  Abut3_del.Caption := 'x';
  MainDM.TransporterRepository.Properties.OnButtonClick:=OnTransportersComboBoxBtnClick;

  Abut4:=MainDM.PlacesRepository.Properties.Buttons.Add;
  Abut4.Kind:= bkEllipsis;
  Abut4_del:=MainDM.PlacesRepository.Properties.Buttons.Add;
  Abut4_del.Kind:= bkText;
  Abut4_del.Caption := 'x';
  MainDM.PlacesRepository.Properties.OnButtonClick:=OnPlacesComboBoxBtnClick;

  FIniFileName:=MainDM.IniFileName;
  try
    MainGridView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'MainGridView');
  except
  end;
  for i := 0 to MainGridView.ColumnCount - 1 do
     MainGridView.Columns[i].Visible:=true;
  MainGridViewID.Visible:=false;
end;

procedure TMainDataFrame.DeleteMainTransactExecute(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
      MainGridView.DataController.DeleteFocused;
end;

destructor TMainDataFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    MainGridView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'MainGridView');
  except
  end;
  inherited;
end;

procedure TMainDataFrame.dxBarButton6Click(Sender: TObject);
begin
  MainDM.MainQuery.CancelUpdates;
 // FIsInsert:=false;
end;

procedure TMainDataFrame.MainGridViewBuyingCostGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  // AProperties.ReadOnly := not MainDM.MainQueryBuyingPrice.IsNull;
end;

procedure TMainDataFrame.MainGridViewManagerIDPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    if not varisnull(MainGridViewManagerID.EditValue) then
    begin
      MainDM.UsersQuery.Locate('ID',integer(MainGridViewManagerID.EditValue),[]);
      MainGridViewManagerPercent.EditValue:=MainDM.UsersQuery.FieldByName('ManagerPercent').AsFloat;
      MainGridView.DataController.PostEditingData;
      UpdateProfits;
    end;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TMainDataFrame.MainGridViewMaterialIDPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    TcxCustomEdit(Sender).PostEditValue;
    if (not varisnull(MainGridViewMaterialID.EditValue) and
       VarIsNull(MainGridViewSalePrice.EditValue)) then
    begin
      MainDM.MaterialsQuery.Locate('ID',integer(MainGridViewMaterialID.EditValue),[]);
      MainGridViewSalePrice.EditValue:=MainDM.MaterialsQuery.FieldByName('Cost').AsFloat;
      MainGridView.DataController.PostEditingData;
      UpdateProfits;
    end;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TMainDataFrame.MainGridViewPaymentTypePropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    MainGridView.DataController.PostEditingData;
    UpdateProfits;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TMainDataFrame.MainGridViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
  if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TMainDataFrame.MainGridViewTransporterCostGetPropertiesForEdit(
  Sender: TcxCustomGridTableItem; ARecord: TcxCustomGridRecord;
  var AProperties: TcxCustomEditProperties);
begin
  // AProperties.ReadOnly := not MainDM.MainQueryTransporterPrice.IsNull;
end;

procedure TMainDataFrame.MainGridViewTransporterIDPropertiesEditValueChanged(
  Sender: TObject);
begin
  try
    TcxCustomEdit(Sender).PostEditValue;
    if not varisnull(MainGridViewTransporterID.EditValue) then
    begin
      MainDM.TransportersQuery.Locate('ID',integer(MainGridViewTransporterID.EditValue),[]);
      MainGridViewTransporterPrice.EditValue:=MainDM.TransportersQuery.FieldByName('Cost').AsFloat;
      MainGridView.DataController.PostEditingData;
    end;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TMainDataFrame.MaterialPropertiesClick(Sender: TObject;AButtonIndex: Integer);
var MatForm:TMaterialForm;
    CurrID:integer;
    MatID:integer;
begin
  try
  if AButtonIndex=2 then
  begin
    TcxCustomEdit(Sender).Clear;
    TcxCustomEdit(Sender).PostEditValue;
  end;
  if AButtonIndex=1 then
  begin
    MatForm:=TMaterialForm.Create(self);
    try
       if not varisnull(TcxCustomEdit(Sender).EditValue) then
       CurrID:=TcxCustomEdit(Sender).EditValue
      else
       CurrID:=0;
      MatID:=MatForm.ShowMaterial(CurrID);
      if MatID>0 then
        begin
          MainDM.MaterialsQuery.Close;
          MainDM.MatGroupsQR.Close;
          MainDM.MatGroupsQR.Open;
          MainDM.MaterialsQuery.Open;
          TcxCustomEdit(Sender).EditValue:=MatID;
        end;
    finally
      MatForm.Free;
    end;
  end
  else
    TcxComboBox(Sender).InitiateAction;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TMainDataFrame.OnOrgComboBoxBtnClick(Sender: TObject; AButtonIndex: Integer);
var ListForm:TListForm;
    CurrID,OrgID:integer;
begin
  try
  if AButtonIndex=2 then
  begin
    TcxCustomEdit(Sender).Clear;
    TcxCustomEdit(Sender).PostEditValue;
  end;
  if AButtonIndex=1 then
  begin
    ListForm:=TListForm.Create(self);
    try
      if not varisnull(TcxCustomEdit(Sender).EditValue) then
       CurrID:=TcxCustomEdit(Sender).EditValue
      else
       CurrID:=0;
      OrgID:=ListForm.ShowOrganization(CurrID);
      if OrgID>0 then
        begin
          TcxCustomEdit(Sender).EditValue:=OrgID;
          TcxCustomEdit(Sender).PostEditValue;
        end;
    finally
      ListForm.Free;
    end;
  end
  else
    TcxComboBox(Sender).InitiateAction;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TMainDataFrame.OnPlacesComboBoxBtnClick(Sender: TObject;
  AButtonIndex: Integer);
var CurrID,PlaceID:integer;
begin
  try
  if AButtonIndex=2 then
  begin
    TcxCustomEdit(Sender).Clear;
    TcxCustomEdit(Sender).PostEditValue;
  end;
  if AButtonIndex=1 then
  begin
    ListForm:=TListForm.Create(self);
    try
      if not varisnull(TcxCustomEdit(Sender).EditValue) then
       CurrID:=TcxCustomEdit(Sender).EditValue
      else
       CurrID:=0;
      PlaceID:=ListForm.ShowPlaces(CurrID);
      if PlaceID>0 then
        begin
          TcxCustomEdit(Sender).EditValue:=PlaceID;
          TcxCustomEdit(Sender).PostEditValue;
        end;
    finally
      ListForm.Free;
    end;
  end
  else
    TcxComboBox(Sender).InitiateAction;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;

end;

procedure TMainDataFrame.OnTransportersComboBoxBtnClick(Sender: TObject;
  AButtonIndex: Integer);
var CurrID,TranspID:integer;
begin
  try
  if AButtonIndex=2 then
  begin
    TcxCustomEdit(Sender).Clear;
    TcxCustomEdit(Sender).PostEditValue;
  end;
  if AButtonIndex=1 then
  begin
    ListForm:=TListForm.Create(self);
    try
      if not varisnull(TcxCustomEdit(Sender).EditValue) then
       CurrID:=TcxCustomEdit(Sender).EditValue
      else
       CurrID:=0;
      TranspID:=ListForm.ShowTransporters(CurrID);
      if TranspID>0 then
        begin
          TcxCustomEdit(Sender).EditValue:=TranspID;
          TcxCustomEdit(Sender).PostEditValue;
        end;
    finally
      ListForm.Free;
    end;
  end
  else
    TcxComboBox(Sender).InitiateAction;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TMainDataFrame.SetFEditable(const Value: boolean);
begin
  FEditable := Value;
  if FEditable then
    begin
       EditBar.Visible:=True;
       MainGridView.PopupMenu := PM;
       MainGridView.OptionsData.Editing:=True;
    end
    else
    begin
       EditBar.Visible:=False;
       MainGridView.PopupMenu := nil;
       MainGridView.OptionsData.Editing:=False;
    end;
end;

procedure TMainDataFrame.ShowAll;
begin
  MainGridView.DataController.Filter.Root.Clear;
  MainGridView.DataController.Filter.Active:=True;
end;

procedure TMainDataFrame.ShowByDates(BeginDate,EndDate:TDate);
var BD,ED:TDateTime;
begin
  try
    BD:=StrToDateTime(DateToStr(BeginDate)+' 00:00:00');
    ED:=StrToDateTime(DateToStr(EndDate)+' 23:59:59');
    MainGridView.DataController.Filter.Root.Clear;
    MainGridView.DataController.Filter.Root.AddItem(MainGridViewTransactDate,foGreaterEqual,BD,'');
    MainGridView.DataController.Filter.Root.AddItem(MainGridViewTransactDate,foLessEqual,ED,'');
    MainGridView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

function TMainDataFrame.GetEditValue(Source:variant):variant;
begin
  if not varisnull(source) then
    Result:= source
  else
    Result:=0;
end;

function TMainDataFrame.GetFocusedRecordID: integer;
begin
  if MainGridView.DataController.RecordCount=0 then
     Result:=-1
  else
     Result:=MainGridView.DataController.FocusedRecordIndex;
end;

procedure TMainDataFrame.InsertMainTransactExecute(Sender: TObject);
begin
   try
     MainGridView.DataController.Insert;
     MainGridView.DataController.BeginUpdate;
     MainGridViewTransactDate.EditValue:=FormatDateTime('yyyy-mm-dd',now);
     MainGridViewBlocked.EditValue:=0;
     MainGridViewSaleUnitID.EditValue:=1;
     MainGridViewBuyingUnitID.EditValue:=1;
     MainGridViewPaymentType.EditValue:=2;
     MainGridViewMatPaymentType.EditValue:=2;
     MainGridViewManagerID.EditValue:=MainDM.CurrentUser.ID;
     MainGridViewManagerPercent.EditValue:=MainDM.CurrentUser.Percent;
     MainGridView.DataController.PostEditingData;
     MainGridView.DataController.EndUpdate;
   except
     on e:exception do
     begin
       MainDM.MessageForm.ShowError('Ошибка добавления новой записи: '+e.message);
     end;
   end;
end;

procedure TMainDataFrame.UpdateDataExecute(Sender: TObject);
begin
  MainDM.CloseConnections;
  MainDM.OpenConnections;
end;

procedure TMainDataFrame.UpdateProfits;
var CommonProfit,ManagerProfit:double;
    TPIndex:double;
    SaleProfit,ManagerPercent:double;
    SalePrice,SaleVolume:double;
    BuyingPrice,BuyingVolume,TransporterPrice:double;
    PaymentType,MatPaymentType:integer;
    TransporterCost,SpecialCost,TransporterCostReal:double;
    BuyingTotalCost,BuyingTotalCostReal:double;
    BuyingPriceReal,TransporterPriceReal,CommonProfitMng,RentReal:double;
begin
  SalePrice:= GetEditValue(MainGridViewSalePrice.EditValue);
  SaleVolume:= GetEditValue(MainGridViewSaleVolume.EditValue);
  BuyingPrice:= GetEditValue(MainGridViewBuyingPrice.EditValue);
  BuyingPriceReal:= GetEditValue(MainGridViewBuyingPriceReal.EditValue);
  BuyingVolume:= GetEditValue(MainGridViewBuyingVolume.EditValue);
  PaymentType:= GetEditValue(MainGridViewPaymentType.EditValue);
  MatPaymentType:= GetEditValue(MainGridViewMatPaymentType.EditValue);
  TransporterPrice:= GetEditValue(MainGridViewTransporterPrice.EditValue);
  TransporterPriceReal:= GetEditValue(MainGridViewTransporterPriceReal.EditValue);
  ManagerPercent:= GetEditValue(MainGridViewManagerPercent.EditValue);
  SpecialCost:= GetEditValue(MainGridViewSpecial.EditValue);
  TransporterCost:=GetEditValue(MainGridViewTransporterCost.EditValue);
  BuyingTotalCost:=GetEditValue(MainGridViewBuyingCost.EditValue);

  if PaymentType=1 then
    TPIndex:=0       // нал
  else
    TPIndex:=0.045;  // безнал

  SaleProfit:=SalePrice*SaleVolume-TPIndex*(SalePrice*SaleVolume);

  if (BuyingTotalCost <> 0) then
  begin

    if (BuyingPrice = 0) and (BuyingVolume <> 0) then
    begin
    BuyingPrice := roundto(BuyingTotalCost/BuyingVolume,-2);
    MainGridViewBuyingPrice.EditValue:=BuyingPrice;
    end;
  end
  else
  begin
     BuyingTotalCost:=BuyingPrice*BuyingVolume;

     if MatPaymentType = 2 then // безнал
     begin
      BuyingTotalCost:=BuyingTotalCost-TPIndex*BuyingTotalCost;
      BuyingTotalCostReal:=BuyingTotalCostReal-TPIndex*BuyingTotalCostReal;
     end;
  end;

  BuyingTotalCostReal:=BuyingPriceReal*BuyingVolume;
  if BuyingTotalCostReal = 0 then
     BuyingTotalCostReal := BuyingTotalCost;


  if TransporterPrice <> 0 then
    TransporterCost:=TransporterPrice*SaleVolume
  else
    begin
      if SaleVolume > 0 then
         MainGridViewTransporterPrice.EditValue:=roundto((TransporterCost/SaleVolume),-2);
    end;

   if (TransporterPriceReal <> 0) then
    TransporterCostReal:=TransporterPriceReal*SaleVolume;


   if (TransporterCostReal = 0) then
     TransporterCostReal := TransporterCost;


  CommonProfit:=SaleProfit-BuyingTotalCostReal-TransporterCostReal-SpecialCost;
  CommonProfitMng:=SaleProfit-BuyingTotalCost-TransporterCost-SpecialCost;
  ManagerProfit:=ManagerPercent*CommonProfit/100;
  MainGridViewSaleProfit.EditValue:=SalePrice*SaleVolume;
  MainGridViewManagerProfit.EditValue:=ManagerProfit;
  MainGridViewCommonProfit.EditValue:=CommonProfit;
  MainGridViewCommonProfitMng.EditValue:=CommonProfitMng;

  MainGridViewTransporterCost.EditValue:=TransporterCost;
  if (SalePrice<>0) and (SaleVolume<>0) then
    MainGridViewRentReal.EditValue:=round(CommonProfit*10000/(SalePrice*SaleVolume))/100
  else
    MainGridViewRentReal.EditValue:=0;

  if (SalePrice<>0) and (SaleVolume<>0) then
    MainGridViewRent.EditValue:=round(CommonProfitMng*10000/(SalePrice*SaleVolume))/100
  else
    MainGridViewRent.EditValue:=0;

  MainGridView.DataController.PostEditingData;
end;

procedure TMainDataFrame.EditValueChanged(Sender: TObject);
begin
   try
     MainGridView.DataController.BeginUpdate;
     TcxCustomEdit(Sender).PostEditValue; // чтобы значение появилось в ячейке
     UpdateProfits;
     MainGridView.DataController.EndUpdate;
   except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

end.
