unit GUISalFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DataModule, cxCalendar,
  dxSkinsdxBarPainter, dxBar, GUIListForm, cxDropDownEdit, cxDBLookupComboBox,
  cxMaskEdit, cxTextEdit, cxSplitter, ExtCtrls;

type
  TSalFrame = class(TFrame)
    SalView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxBarManager1: TdxBarManager;
    EditBar: TdxBar;
    UpdateDataBtn: TdxBarButton;
    dxBarButton2: TdxBarButton;
    InsertVTransactBtn: TdxBarButton;
    CopyVTransactBtn: TdxBarButton;
    ApplyVTransactBtn: TdxBarButton;
    dxBarButton6: TdxBarButton;
    dxBarButton1: TdxBarButton;
    SalViewID: TcxGridDBColumn;
    SalViewSalaryDate: TcxGridDBColumn;
    SalViewSalaryValue: TcxGridDBColumn;
    SalViewPerson: TcxGridDBColumn;
    SalViewSalaryName: TcxGridDBColumn;
    SalViewClearProfitException: TcxGridDBColumn;
    PM: TdxBarPopupMenu;
    procedure InsertVTransactBtnClick(Sender: TObject);
    procedure CopyVTransactBtnClick(Sender: TObject);
    procedure ApplyVTransactBtnClick(Sender: TObject);
    procedure UpdateDataBtnClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure VinnikViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
    procedure dxBarButton1Click(Sender: TObject);
  private
    FEditable:boolean;
    FIniFileName:string;
    Style1,Style2:TcxStyle;
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

procedure TSalFrame.ApplyVTransactBtnClick(Sender: TObject);
begin
  try
    SalView.DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TSalFrame.CopyVTransactBtnClick(Sender: TObject);
var RecordID:integer;
  i: Integer;
begin
   if FocusedRecordID>-1 then
   if MainDM.MessageForm.ShowQuestion('Дублировать текущую запись?',2)=mrYes then
   begin
     try
     RecordID:=FocusedRecordID+1;
       SalView.DataController.Insert;
       for i := 1 to SalView.ColumnCount-1 do
         begin
           if not varisnull(SalView.DataController.Values[RecordID,i]) then
             SalView.Columns[i].EditValue:=SalView.DataController.Values[RecordID,i];
         end;
       SalView.DataController.PostEditingData;
   except
       on e:exception do
       MainDM.MessageForm.ShowError('Невозможно продублировать запись. Ошибка: '+e.message);
     end;
   end;
end;

constructor TSalFrame.Create(AOwner: TComponent);
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
    SalView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'SalView');
  except
  end;
  for i := 0 to SalView.ColumnCount - 1 do
     SalView.Columns[i].Visible:=true;
  SalViewID.Visible:=false;
end;

destructor TSalFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    SalView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'SalView');
  except
  end;
  inherited;
end;

procedure TSalFrame.dxBarButton1Click(Sender: TObject);
begin
  try
    SalView.DataController.Filter.Root.Clear;
    SalView.DataController.Filter.Root.AddItem(SalViewSalaryDate,foLessEqual,now,'');
    SalView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TSalFrame.dxBarButton2Click(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
        SalView.DataController.DeleteFocused
end;

function TSalFrame.GetFocusedRecordID: integer;
begin
  if SalView.DataController.RecordCount=0 then
       Result:=-1
  else
       Result:=SalView.DataController.FocusedRecordIndex;
end;

procedure TSalFrame.InsertVTransactBtnClick(Sender: TObject);
begin
   try
      SalView.DataController.Insert;
      SalView.DataController.BeginUpdate;
      SalViewSalaryDate.EditValue:=FormatDateTime('yyyy-mm-dd',now);
      SalViewClearProfitException.EditValue:= 0;
      SalView.DataController.PostEditingData;
      SalView.DataController.EndUpdate;
   except
     on e:exception do
       MainDM.MessageForm.ShowError('Ошибка добавления новой записи: '+e.message);
   end;
end;

procedure TSalFrame.VinnikViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TSalFrame.VMaterialPropertiesClick(Sender: TObject;
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

procedure TSalFrame.SetFEditable(const Value: boolean);
begin
  FEditable := Value;
  if FEditable then
    begin
       EditBar.Visible:=True;
       SalView.PopupMenu := PM;
       SalView.OptionsData.Editing:=True;
    end
    else
    begin
       EditBar.Visible:=False;
       SalView.PopupMenu := nil;
       SalView.OptionsData.Editing:=False;
    end;
end;

procedure TSalFrame.ShowAll;
begin
  SalView.DataController.Filter.Root.Clear;
  SalView.DataController.Filter.Active:=True;
end;

procedure TSalFrame.ShowByDates(BeginDate, EndDate: TDate);
var BD,ED:TDateTime;
begin
  try
    BD:=StrToDateTime(DateToStr(BeginDate)+' 00:00:00');
    ED:=StrToDateTime(DateToStr(EndDate)+' 23:59:59');
    SalView.DataController.Filter.Root.Clear;
    SalView.DataController.Filter.Root.AddItem(SalViewSalaryDate,foGreaterEqual,BD,'');
    SalView.DataController.Filter.Root.AddItem(SalViewSalaryDate,foLessEqual,ED,'');
    SalView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TSalFrame.UpdateDataBtnClick(Sender: TObject);
begin
  MainDM.CloseConnections;
  MainDM.OpenConnections;
end;

function TSalFrame.GetEditValue(Source:variant):variant;
begin
  if not varisnull(source) then
    Result:= source
  else
    Result:=0;
end;

end.
