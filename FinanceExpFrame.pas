unit FinanceExpFrame;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, 
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxStyles, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, dxSkinscxPCPainter,
  cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid, DataModule, cxCalendar,
  dxSkinsdxBarPainter, dxBar, GUIListForm, cxDropDownEdit, cxDBLookupComboBox,
  cxMaskEdit, cxTextEdit, cxSplitter, ExtCtrls, cxGridCustomPopupMenu,
  cxGridPopupMenu;

type
  TFinExpFrame = class(TFrame)
    FinExpView: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxBarManager1: TdxBarManager;
    EditBar: TdxBar;
    UpdateDataBtn: TdxBarButton;
    dxBarButton2: TdxBarButton;
    InsertVTransactBtn: TdxBarButton;
    CopyVTransactBtn: TdxBarButton;
    ApplyVTransactBtn: TdxBarButton;
    FinExpViewid: TcxGridDBColumn;
    FinExpViewFinExpName: TcxGridDBColumn;
    FinExpViewFinExpDate: TcxGridDBColumn;
    FinExpViewFinExpValue: TcxGridDBColumn;
    FinExpViewClearProfitException: TcxGridDBColumn;
    PM: TdxBarPopupMenu;
    procedure InsertVTransactBtnClick(Sender: TObject);
    procedure CopyVTransactBtnClick(Sender: TObject);
    procedure ApplyVTransactBtnClick(Sender: TObject);
    procedure UpdateDataBtnClick(Sender: TObject);
    procedure dxBarButton2Click(Sender: TObject);
    procedure VinnikViewStylesGetContentStyle(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; AItem: TcxCustomGridTableItem;
      out AStyle: TcxStyle);
  private
    FEditable:boolean;
    FIniFileName:string;
    Style1,Style2:TcxStyle;
    function GetFocusedRecordID: integer;
    procedure SetFEditable(const Value: boolean);
    property FocusedRecordID:integer read GetFocusedRecordID;
  public
    property Editable:boolean read FEditable write SetFEditable;
    procedure ShowAll;
    procedure ShowByDates(BeginDate,EndDate:TDate);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

procedure TFinExpFrame.ApplyVTransactBtnClick(Sender: TObject);
begin
  try
    FinExpView.DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TFinExpFrame.CopyVTransactBtnClick(Sender: TObject);
var RecordID:integer;
  i: Integer;
begin
   if FocusedRecordID>-1 then
   if MainDM.MessageForm.ShowQuestion('Дублировать текущую запись?',2)=mrYes then
   begin
     try
     RecordID:=FocusedRecordID+1;
       FinExpView.DataController.Insert;
       for i := 1 to FinExpView.ColumnCount-1 do
         begin
           if not varisnull(FinExpView.DataController.Values[RecordID,i]) then
             FinExpView.Columns[i].EditValue:=FinExpView.DataController.Values[RecordID,i];
         end;
       FinExpView.DataController.PostEditingData;
   except
       on e:exception do
       MainDM.MessageForm.ShowError('Невозможно продублировать запись. Ошибка: '+e.message);
     end;
   end;
end;

constructor TFinExpFrame.Create(AOwner: TComponent);
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
    FinExpView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'FinExpView');
  except
  end;
  for i := 0 to FinExpView.ColumnCount - 1 do
     FinExpView.Columns[i].Visible:=true;
  FinExpViewID.Visible:=false;
end;

destructor TFinExpFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    FinExpView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'FinExpView');
  except
  end;
  inherited;
end;

procedure TFinExpFrame.dxBarButton2Click(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
        FinExpView.DataController.DeleteFocused
end;

function TFinExpFrame.GetFocusedRecordID: integer;
begin
  if FinExpView.DataController.RecordCount=0 then
       Result:=-1
  else
       Result:=FinExpView.DataController.FocusedRecordIndex;
end;

procedure TFinExpFrame.InsertVTransactBtnClick(Sender: TObject);
begin
   try
      FinExpView.DataController.Insert;
      FinExpView.DataController.BeginUpdate;
      FinExpViewFinExpDate.EditValue:=FormatDateTime('yyyy-mm-dd',now);
      FinExpViewClearProfitException.EditValue:=0;
      FinExpView.DataController.PostEditingData;
      FinExpView.DataController.EndUpdate;
   except
     on e:exception do
       MainDM.MessageForm.ShowError('Ошибка добавления новой записи: '+e.message);
   end;
end;

procedure TFinExpFrame.VinnikViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TFinExpFrame.SetFEditable(const Value: boolean);
begin
  FEditable := Value;
  if FEditable then
    begin
       EditBar.Visible:=True;
       FinExpView.PopupMenu := PM;
       FinExpView.OptionsData.Editing:=True;
    end
    else
    begin
       EditBar.Visible:=False;
       FinExpView.PopupMenu := nil;
       FinExpView.OptionsData.Editing:=False;
    end;
end;

procedure TFinExpFrame.ShowAll;
begin
  FinExpView.DataController.Filter.Root.Clear;
  FinExpView.DataController.Filter.Active:=True;
end;

procedure TFinExpFrame.ShowByDates(BeginDate, EndDate: TDate);
var BD,ED:TDateTime;
begin
  try
    BD:=StrToDateTime(DateToStr(BeginDate)+' 00:00:00');
    ED:=StrToDateTime(DateToStr(EndDate)+' 23:59:59');
    FinExpView.DataController.Filter.Root.Clear;
    FinExpView.DataController.Filter.Root.AddItem(FinExpViewFinExpDate,foGreaterEqual,BD,'');
    FinExpView.DataController.Filter.Root.AddItem(FinExpViewFinExpDate,foLessEqual,ED,'');
    FinExpView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TFinExpFrame.UpdateDataBtnClick(Sender: TObject);
begin
  MainDM.CloseConnections;
  MainDM.OpenConnections;
end;

end.
