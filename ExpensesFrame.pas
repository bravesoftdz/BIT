unit ExpensesFrame;

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
  TExpFrame = class(TFrame)
    ExpView: TcxGridDBTableView;
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
    ExpViewID: TcxGridDBColumn;
    ExpViewExpenseName: TcxGridDBColumn;
    ExpViewExpenseDate: TcxGridDBColumn;
    ExpViewExpenseValue: TcxGridDBColumn;
    ExpViewClearProfitException: TcxGridDBColumn;
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

procedure TExpFrame.ApplyVTransactBtnClick(Sender: TObject);
begin
  try
    ExpView.DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TExpFrame.CopyVTransactBtnClick(Sender: TObject);
var RecordID:integer;
  i: Integer;
begin
   if FocusedRecordID>-1 then
   if MainDM.MessageForm.ShowQuestion('Дублировать текущую запись?',2)=mrYes then
   begin
     try
     RecordID:=FocusedRecordID+1;
       ExpView.DataController.Insert;
       for i := 1 to ExpView.ColumnCount-1 do
         begin
           if not varisnull(ExpView.DataController.Values[RecordID,i]) then
             ExpView.Columns[i].EditValue:=ExpView.DataController.Values[RecordID,i];
         end;
       ExpView.DataController.PostEditingData;
   except
       on e:exception do
       MainDM.MessageForm.ShowError('Невозможно продублировать запись. Ошибка: '+e.message);
     end;
   end;
end;

constructor TExpFrame.Create(AOwner: TComponent);
var Abut2:TcxEditButton;
    i:integer;
begin
  inherited;
  Style1:=TcxStyle.Create(self);
  Style1.Color:=$00DFDFDF;
  Style2:=TcxStyle.Create(self);
  Style2.Color:=clwhite;
  Editable:=false;

  Abut2:=MainDM.VMaterialsRepository.Properties.Buttons.Add;
  Abut2.Kind:= bkEllipsis;
  MainDM.VMaterialsRepository.Properties.OnButtonClick:=VMaterialPropertiesClick;
  FIniFileName:=MainDM.IniFileName;
  try
    ExpView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'ExpView');
  except
  end;
  for i := 0 to ExpView.ColumnCount - 1 do
     ExpView.Columns[i].Visible:=true;
  ExpViewID.Visible:=false;
end;

destructor TExpFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    ExpView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'ExpView');
  except
  end;
  inherited;
end;

procedure TExpFrame.dxBarButton1Click(Sender: TObject);
var BD,ED:TDateTime;
begin
  try
    BD:=StrToDateTime(DateTimeToStr(now)+' 00:00:00');
    ED:=StrToDateTime(DateTimeToStr(now)+' 23:59:59');
    ExpView.DataController.Filter.Root.Clear;
    ExpView.DataController.Filter.Root.AddItem(ExpViewExpenseDate,foLessEqual,now,'');
    ExpView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TExpFrame.dxBarButton2Click(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
        ExpView.DataController.DeleteFocused
end;

function TExpFrame.GetFocusedRecordID: integer;
begin
  if ExpView.DataController.RecordCount=0 then
       Result:=-1
  else
       Result:=ExpView.DataController.FocusedRecordIndex;
end;

procedure TExpFrame.InsertVTransactBtnClick(Sender: TObject);
begin
   try
      ExpView.DataController.Insert;
      ExpView.DataController.BeginUpdate;
      ExpViewExpenseDate.EditValue:=FormatDateTime('yyyy-mm-dd',now);
      ExpViewClearProfitException.EditValue:=0;
      ExpView.DataController.PostEditingData;
      ExpView.DataController.EndUpdate;
   except
     on e:exception do
       MainDM.MessageForm.ShowError('Ошибка добавления новой записи: '+e.message);
   end;
end;

procedure TExpFrame.VinnikViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TExpFrame.VMaterialPropertiesClick(Sender: TObject;
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

procedure TExpFrame.SetFEditable(const Value: boolean);
begin
  FEditable := Value;
  if FEditable then
    begin
       EditBar.Visible:=True;
       ExpView.PopupMenu := PM;
       ExpView.OptionsData.Editing:=True;
    end
    else
    begin
       EditBar.Visible:=False;
       ExpView.PopupMenu := nil;
       ExpView.OptionsData.Editing:=False;
    end;
end;

procedure TExpFrame.ShowAll;
begin
  ExpView.DataController.Filter.Root.Clear;
  ExpView.DataController.Filter.Active:=True;
end;

procedure TExpFrame.ShowByDates(BeginDate, EndDate: TDate);
var BD,ED:TDateTime;
begin
  try
    BD:=StrToDateTime(DateToStr(BeginDate)+' 00:00:00');
    ED:=StrToDateTime(DateToStr(EndDate)+' 23:59:59');
    ExpView.DataController.Filter.Root.Clear;
    ExpView.DataController.Filter.Root.AddItem(ExpViewExpenseDate,foGreaterEqual,BD,'');
    ExpView.DataController.Filter.Root.AddItem(ExpViewExpenseDate,foLessEqual,ED,'');
    ExpView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TExpFrame.UpdateDataBtnClick(Sender: TObject);
begin
  MainDM.CloseConnections;
  MainDM.OpenConnections;
end;

end.
