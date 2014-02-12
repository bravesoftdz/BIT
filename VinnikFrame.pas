unit VinnikFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DataModule, cxCalendar,
  dxSkinsdxBarPainter, dxBar, GUIListForm, cxDropDownEdit, cxDBLookupComboBox,
  cxMaskEdit, cxTextEdit;

type
  TVFrame = class(TFrame)
    VinnikView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    VinnikViewID: TcxGridDBColumn;
    VinnikViewVTransactDate: TcxGridDBColumn;
    VinnikViewVMaterial: TcxGridDBColumn;
    VinnikViewVTransporter: TcxGridDBColumn;
    VinnikViewVOrganization: TcxGridDBColumn;
    VinnikViewVCommonCost: TcxGridDBColumn;
    dxBarManager1: TdxBarManager;
    EditBar: TdxBar;
    UpdateDataBtn: TdxBarButton;
    dxBarButton2: TdxBarButton;
    InsertVTransactBtn: TdxBarButton;
    CopyVTransactBtn: TdxBarButton;
    ApplyVTransactBtn: TdxBarButton;
    dxBarButton6: TdxBarButton;
    VinnikViewVMaterialCost: TcxGridDBColumn;
    dxBarButton1: TdxBarButton;
    VinnikViewBuyingVolume: TcxGridDBColumn;
    VinnikViewLoadingVolume: TcxGridDBColumn;
    PM: TdxBarPopupMenu;
    procedure InsertVTransactBtnClick(Sender: TObject);
    procedure CopyVTransactBtnClick(Sender: TObject);
    procedure ApplyVTransactBtnClick(Sender: TObject);
    procedure UpdateDataBtnClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure VinnikViewVMaterialPropertiesEditValueChanged(Sender: TObject);
    procedure VinnikViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure VinnikViewVMaterialCostPropertiesEditValueChanged(
      Sender: TObject);
    procedure dxBarButton1Click(Sender: TObject);
    procedure VinnikViewBuyingVolumePropertiesEditValueChanged(Sender: TObject);
    procedure VinnikViewLoadingVolumePropertiesEditValueChanged(
      Sender: TObject);
  private
    FEditable:boolean;
    FIniFileName:string;
    Style1,Style2:TcxStyle;
    procedure UpdateVProfits;
    function GetEditValue(Source:variant):variant;
    function GetFocusedRecordID: integer;
    procedure SetFEditable(const Value: boolean);
    property FocusedRecordID:integer read GetFocusedRecordID;
    procedure VMaterialPropertiesClick(Sender: TObject;AButtonIndex: Integer);
  public
    property Editable:boolean read FEditable write SetFEditable;
    procedure ShowAll;
    procedure ShowByDates(BeginDate,EndDate:TDate);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

procedure TVFrame.ApplyVTransactBtnClick(Sender: TObject);
begin
  try
    VinnikView.DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TVFrame.CopyVTransactBtnClick(Sender: TObject);
var RecordID:integer;
  i: Integer;
begin
   if FocusedRecordID>-1 then
   if MainDM.MessageForm.ShowQuestion('Дублировать текущую запись?',2)=mrYes then
   begin
     try
     RecordID:=FocusedRecordID+1;
     VinnikView.DataController.Insert;
     for i := 1 to VinnikView.ColumnCount-1 do
       begin
         if not varisnull(VinnikView.DataController.Values[RecordID,i]) then
           VinnikView.Columns[i].EditValue:=VinnikView.DataController.Values[RecordID,i];
       end;
     VinnikView.DataController.PostEditingData;
     except
       on e:exception do
       MainDM.MessageForm.ShowError('Невозможно продублировать запись. Ошибка: '+e.message);
     end;
   end;
end;

constructor TVFrame.Create(AOwner: TComponent);
var i:integer;
begin
  inherited;
  Style1:=TcxStyle.Create(self);
  Style1.Color:=$00DFDFDF;
  Style2:=TcxStyle.Create(self);
  Style2.Color:=clwhite;
  Editable:=false;
  FIniFileName:=MainDM.IniFileName;
  try
    VinnikView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'VinnikView');
  except
  end;
  for i := 0 to VinnikView.ColumnCount - 1 do
     VinnikView.Columns[i].Visible:=true;
  VinnikViewID.Visible:=false;
end;

destructor TVFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    VinnikView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'VinnikView');
  except
  end;
  inherited;
end;

procedure TVFrame.dxBarButton1Click(Sender: TObject);
var BD,ED:TDateTime;
begin
  try
    BD:=StrToDateTime(DateTimeToStr(now)+' 00:00:00');
    ED:=StrToDateTime(DateTimeToStr(now)+' 23:59:59');
    VinnikView.DataController.Filter.Root.Clear;
  //  VinnikView.DataController.Filter.Root.AddItem(VinnikViewVTransactDate,foGreaterEqual,BD,'');
    VinnikView.DataController.Filter.Root.AddItem(VinnikViewVTransactDate,foLessEqual,now,'');
    VinnikView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TVFrame.dxBarButton2Click(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
      VinnikView.DataController.DeleteFocused;
end;

function TVFrame.GetFocusedRecordID: integer;
begin
 if VinnikView.DataController.RecordCount=0 then
     Result:=-1
  else
     Result:=VinnikView.DataController.FocusedRecordIndex;
end;

procedure TVFrame.InsertVTransactBtnClick(Sender: TObject);
var RecCount,RecIndex:integer;
begin
   try
     VinnikView.DataController.Insert;
     VinnikView.DataController.BeginUpdate;
     VinnikViewVTransactDate.EditValue:=FormatDateTime('yyyy-mm-dd',now);
     VinnikView.DataController.PostEditingData;
     VinnikView.DataController.EndUpdate;
   except
     on e:exception do
       MainDM.MessageForm.ShowError('Ошибка добавления новой записи: '+e.message);
   end;
end;

procedure TVFrame.VinnikViewBuyingVolumePropertiesEditValueChanged(
  Sender: TObject);
begin
  VinnikView.DataController.PostEditingData;
  UpdateVProfits;
end;

procedure TVFrame.VinnikViewLoadingVolumePropertiesEditValueChanged(
  Sender: TObject);
begin
  VinnikView.DataController.PostEditingData;
  UpdateVProfits;
end;

procedure TVFrame.VinnikViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TVFrame.VinnikViewVMaterialCostPropertiesEditValueChanged(
  Sender: TObject);
begin
  VinnikView.DataController.PostEditingData;
  UpdateVProfits;
end;

procedure TVFrame.VinnikViewVMaterialPropertiesEditValueChanged(
  Sender: TObject);
begin
   try
    TcxCustomEdit(Sender).PostEditValue;
    if not varisnull(VinnikViewVMaterial.EditValue) then
    begin
      MainDM.VMaterialsQR.Locate('ID',integer(VinnikViewVMaterial.EditValue),[]);
      VinnikViewVMaterialCost.EditValue:=MainDM.VMaterialsQR.FieldByName('VMaterialCost').AsFloat;
      VinnikView.DataController.PostEditingData;
      UpdateVProfits;
    end;
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TVFrame.VMaterialPropertiesClick(Sender: TObject;
  AButtonIndex: Integer);
var CurrID,TranspID:integer;
begin
  try
  if AButtonIndex=1 then
  begin
    ListForm:=TListForm.Create(self);
    try
      if not varisnull(TcxCustomEdit(Sender).EditValue) then
       CurrID:=TcxCustomEdit(Sender).EditValue
      else
       CurrID:=0;
      TranspID:=ListForm.ShowVMaterials(CurrID);
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

procedure TVFrame.SetFEditable(const Value: boolean);
begin
  FEditable := Value;
  if FEditable then
    begin
       EditBar.Visible:=True;
       VinnikView.PopupMenu := PM;
       VinnikView.OptionsData.Editing:=True;
    end
    else
    begin
       EditBar.Visible:=False;
       VinnikView.PopupMenu := nil;
       VinnikView.OptionsData.Editing:=False;
    end;
end;

procedure TVFrame.ShowAll;
begin
  VinnikView.DataController.Filter.Root.Clear;
  VinnikView.DataController.Filter.Active:=True;
end;

procedure TVFrame.ShowByDates(BeginDate, EndDate: TDate);
var BD,ED:TDateTime;
begin
  try
    BD:=StrToDateTime(DateToStr(BeginDate)+' 00:00:00');
    ED:=StrToDateTime(DateToStr(EndDate)+' 23:59:59');
    VinnikView.DataController.Filter.Root.Clear;
    VinnikView.DataController.Filter.Root.AddItem(VinnikViewVTransactDate,foGreaterEqual,BD,'');
    VinnikView.DataController.Filter.Root.AddItem(VinnikViewVTransactDate,foLessEqual,ED,'');
    VinnikView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TVFrame.UpdateDataBtnClick(Sender: TObject);
begin
  MainDM.CloseConnections;
  MainDM.OpenConnections;
end;

function TVFrame.GetEditValue(Source:variant):variant;
begin
  if not varisnull(source) then
    Result:= source
  else
    Result:=0;
end;

procedure TVFrame.UpdateVProfits;
var VBuyingVolume,VLoadingVolume,
    VCommonCost, VMaterialCost:real;
begin
  VBuyingVolume:= GetEditValue(VinnikViewBuyingVolume.EditValue);
  VLoadingVolume:= GetEditValue(VinnikViewLoadingVolume.EditValue);
  VMaterialCost:= GetEditValue(VinnikViewVMaterialCost.EditValue);
  VCommonCost:=(VLoadingVolume-VBuyingVolume)*VMaterialCost;
  VinnikViewVCommonCost.EditValue:=VCommonCost;
  VinnikView.DataController.PostEditingData;
end;

end.
