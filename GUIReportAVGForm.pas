unit GUIReportAVGForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, Menus,
  StdCtrls, cxButtons, cxTextEdit, cxMaskEdit, cxDropDownEdit, cxCalendar,
  cxLabel, DataModule;

type
  TAVGReportForm = class(TForm)
    cxLabel1: TcxLabel;
    BeginDateEdit: TcxDateEdit;
    cxLabel3: TcxLabel;
    EndDateEdit: TcxDateEdit;
    CancelButton: TcxButton;
    OKButton: TcxButton;
    AVGMonthCB: TCheckBox;
  private
    FBeginDate,FEndDate:TDateTime;
    FOrgID:integer;
  public
    property BeginDate:TDateTime read FBeginDate write FBeginDate;
    property EndDate:TDateTime read FEndDate write FEndDate;
    property OrgID:integer read FOrgID write FOrgID;
    // возвращает результат showmodal
    function ShowChoose(var BeginDate:TDateTime;var EndDate:TDateTime;var AVGMonth:boolean):integer;
  end;

var
  AVGReportForm: TAVGReportForm;

implementation

{$R *.dfm}

function TAVGReportForm.ShowChoose(var BeginDate: TDateTime; var EndDate: TDateTime;var AVGMonth:boolean): integer;
begin
  Result:=mrNone;
  BeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',BeginDate);
  EndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',EndDate);
  if ShowModal = mrOK then
    begin
      try
        BeginDate:=BeginDateEdit.Date;
        EndDate:=EndDateEdit.Date;
        AVGMonth:=AVGMonthCB.Checked;
        Result:=mrOK;
      except
        on e:exception do
        MainDM.MessageForm.ShowError('Ошибка: '+e.message);
      end;
    end;
end;

end.
