unit InvestmentExpFrame;

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
  TInvestExpFrame = class(TFrame)
    InvExpView: TcxGridDBTableView;
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
    InvExpViewid: TcxGridDBColumn;
    InvExpViewInvExpName: TcxGridDBColumn;
    InvExpViewInvExpDate: TcxGridDBColumn;
    InvExpViewInvExpValue: TcxGridDBColumn;
    PM: TdxBarPopupMenu;
    InvExpViewClearProfitException: TcxGridDBColumn;
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
  public
    property Editable:boolean read FEditable write SetFEditable;
    procedure ShowAll;
    procedure ShowByDates(BeginDate,EndDate:TDate);
    constructor Create(AOwner: TComponent); override;
    destructor Destroy; override;
  end;

implementation

{$R *.dfm}

procedure TInvestExpFrame.ApplyVTransactBtnClick(Sender: TObject);
begin
  try
    InvExpView.DataController.Post(True);
  except
    on e:exception do
      MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

procedure TInvestExpFrame.CopyVTransactBtnClick(Sender: TObject);
var RecordID:integer;
  i: Integer;
begin
   if FocusedRecordID>-1 then
   if MainDM.MessageForm.ShowQuestion('Дублировать текущую запись?',2)=mrYes then
   begin
     try
     RecordID:=FocusedRecordID+1;
       InvExpView.DataController.Insert;
       for i := 1 to InvExpView.ColumnCount-1 do
         begin
           if not varisnull(InvExpView.DataController.Values[RecordID,i]) then
             InvExpView.Columns[i].EditValue:=InvExpView.DataController.Values[RecordID,i];
         end;
       InvExpView.DataController.PostEditingData;
   except
       on e:exception do
       MainDM.MessageForm.ShowError('Невозможно продублировать запись. Ошибка: '+e.message);
     end;
   end;
end;

constructor TInvestExpFrame.Create(AOwner: TComponent);
begin
  inherited;
  Style1:=TcxStyle.Create(self);
  Style1.Color:=$00DFDFDF;
  Style2:=TcxStyle.Create(self);
  Style2.Color:=clwhite;
  Editable:=false;
  FIniFileName:= MainDM.IniFileName;
  try
    InvExpView.RestoreFromIniFile(FIniFileName,true,False,[gsoUseFilter,gsoUseSummary],'InvExpView');
  except
  end;
{  for i := 0 to InvExpView.ColumnCount - 1 do
     InvExpView.Columns[i].Visible:=true;
  InvExpViewID.Visible:=false;  }
end;

destructor TInvestExpFrame.Destroy;
begin
  Style1.Free;
  Style2.Free;
  try
    InvExpView.StoreToIniFile(FIniFileName,false,[gsoUseFilter,gsoUseSummary],'InvExpView');
  except
  end;
  inherited;
end;

procedure TInvestExpFrame.dxBarButton1Click(Sender: TObject);
begin
  try
    InvExpView.DataController.Filter.Root.Clear;
    InvExpView.DataController.Filter.Root.AddItem(InvExpViewInvExpDate,foLessEqual,now,'');
    InvExpView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TInvestExpFrame.dxBarButton2Click(Sender: TObject);
begin
  if FocusedRecordID>-1 then
  if MainDM.MessageForm.ShowQuestion('Вы действительно хотите удалить выделенную запись?',2)=mrYes then
        InvExpView.DataController.DeleteFocused
end;

function TInvestExpFrame.GetFocusedRecordID: integer;
begin
  if InvExpView.DataController.RecordCount=0 then
       Result:=-1
  else
       Result:=InvExpView.DataController.FocusedRecordIndex;
end;

procedure TInvestExpFrame.InsertVTransactBtnClick(Sender: TObject);
begin
   try
      InvExpView.DataController.Insert;
      InvExpView.DataController.BeginUpdate;
      InvExpViewInvExpDate.EditValue:=FormatDateTime('yyyy-mm-dd',now);
      InvExpViewClearProfitException.EditValue:=0;
      InvExpView.DataController.PostEditingData;
      InvExpView.DataController.EndUpdate;
   except
     on e:exception do
       MainDM.MessageForm.ShowError('Ошибка добавления новой записи: '+e.message);
   end;
end;

procedure TInvestExpFrame.VinnikViewStylesGetContentStyle(
  Sender: TcxCustomGridTableView; ARecord: TcxCustomGridRecord;
  AItem: TcxCustomGridTableItem; out AStyle: TcxStyle);
begin
   if ARecord.Index mod 2 = 0 then
    Astyle:=Style1
  else
    Astyle:=Style2;
end;

procedure TInvestExpFrame.SetFEditable(const Value: boolean);
begin
  FEditable := Value;
  if FEditable then
    begin
       EditBar.Visible:=True;
       InvExpView.PopupMenu := PM;
       InvExpView.OptionsData.Editing:=True;
    end
    else
    begin
       EditBar.Visible:=False;
       InvExpView.PopupMenu := nil;
       InvExpView.OptionsData.Editing:=False;
    end;
end;

procedure TInvestExpFrame.ShowAll;
begin
  InvExpView.DataController.Filter.Root.Clear;
  InvExpView.DataController.Filter.Active:=True;
end;

procedure TInvestExpFrame.ShowByDates(BeginDate, EndDate: TDate);
var BD,ED:TDateTime;
begin
  try
    BD:=StrToDateTime(DateToStr(BeginDate)+' 00:00:00');
    ED:=StrToDateTime(DateToStr(EndDate)+' 23:59:59');
    InvExpView.DataController.Filter.Root.Clear;
    InvExpView.DataController.Filter.Root.AddItem(InvExpViewInvExpDate,foGreaterEqual,BD,'');
    InvExpView.DataController.Filter.Root.AddItem(InvExpViewInvExpDate,foLessEqual,ED,'');
    InvExpView.DataController.Filter.Active:=True;
  except
    on e:exception do
    MainDM.MessageForm.ShowError('Ошибка фильтрования записей '+e.message);
  end;
end;

procedure TInvestExpFrame.UpdateDataBtnClick(Sender: TObject);
begin
  MainDM.CloseConnections;
  MainDM.OpenConnections;
end;

function TInvestExpFrame.GetEditValue(Source:variant):variant;
begin
  if not varisnull(source) then
    Result:= source
  else
    Result:=0;
end;

end.
