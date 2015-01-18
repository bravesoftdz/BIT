unit GUITranspReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCalendar, Menus, StdCtrls, cxButtons, ExtCtrls, cxLabel, dxSkinDarkRoom,
  dxSkinBlack;

type
  TTranspReportForm = class(TForm)
    BeginDateEdit: TcxDateEdit;
    EndDateEdit: TcxDateEdit;
    TransporterComboBox: TcxLookupComboBox;
    Panel2: TPanel;
    OKButton: TcxButton;
    CancelButton: TcxButton;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    OrgLbl: TcxLabel;
    cxLabel3: TcxLabel;
  private
    FBeginDate,FEndDate:TDateTime;
    FOrgID:integer;
  public
    property BeginDate:TDateTime read FBeginDate write FBeginDate;
    property EndDate:TDateTime read FEndDate write FEndDate;
    property OrgID:integer read FOrgID write FOrgID;
    // возвращает результат showmodal
    function ShowChoose(var BeginDate:TDateTime;var EndDate:TDateTime;var TranspID:integer):integer;
  end;

var
  TranspReportForm: TTranspReportForm;

implementation

{$R *.dfm}

function TTranspReportForm.ShowChoose(var BeginDate: TDateTime; var EndDate: TDateTime;
  var TranspID: integer): integer;
begin
  Result:=mrNone;
  BeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',BeginDate);
  EndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',EndDate);
  if ShowModal = mrOK then
    begin
      try
        BeginDate:=BeginDateEdit.Date;
        EndDate:=EndDateEdit.Date;
        if not varisnull(TransporterComboBox.EditValue) then
         TranspID:=TransporterComboBox.EditValue;
        Result:=mrOK;
      except
        on e:exception do
        MainDM.MessageForm.ShowError('Ошибка: '+e.message);
      end;
    end;
end;

end.
