unit GUIReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCalendar, Menus, StdCtrls, cxButtons, ExtCtrls, cxLabel, dxSkinDarkRoom,
  dxSkinBlack, cxPropertiesStore;

type
  TReportForm = class(TForm)
    BeginDateEdit: TcxDateEdit;
    EndDateEdit: TcxDateEdit;
    OrgsCB: TcxLookupComboBox;
    Panel2: TPanel;
    OKButton: TcxButton;
    CancelButton: TcxButton;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    OrgLbl: TcxLabel;
    cxLabel3: TcxLabel;
    HideNR_CB: TCheckBox;
    cxPropertiesStore1: TcxPropertiesStore;
    Samovyvoz_CB: TCheckBox;
    MngCB: TcxLookupComboBox;
    cxLabel2: TcxLabel;
  private
    FBeginDate,FEndDate:TDateTime;
  //  FOrgID:integer;
  //  FMngID:integer;
    FHideNR: boolean;
    FSamovyvoz: boolean;
  public
    property BeginDate:TDateTime read FBeginDate write FBeginDate;
    property EndDate:TDateTime read FEndDate write FEndDate;
   // property OrgID:integer read FOrgID write FOrgID;
   // property MngID:integer read FMngID write FMngID;
    property HideNR:boolean read FHideNR write FHideNR;
    property Samovyvoz:boolean read FSamovyvoz write FSamovyvoz;
    // возвращает результат showmodal
    function ShowChoose(var BeginDate:TDateTime;var EndDate:TDateTime;var OrgID:integer; var MngId: integer):integer;
  end;

var
  ReportForm: TReportForm;

implementation

{$R *.dfm}

function TReportForm.ShowChoose(var BeginDate: TDateTime; var EndDate: TDateTime;
  var OrgID: integer; var MngId: integer): integer;
begin
  Result:=mrNone;
  OrgsCB.Visible:=True;
  OrgLbl.Visible:=True;
  BeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',BeginDate);
  EndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',EndDate);
  if MainDM.ManagersQR.Active then MainDM.ManagersQR.Close;
  MainDM.ManagersQR.Open;
  if ShowModal = mrOK then
    begin
      try
        BeginDate:=BeginDateEdit.Date;
        EndDate:=EndDateEdit.Date;
        if not varisnull(OrgsCB.EditValue) then
         OrgID:=OrgsCB.EditValue;
        if not varisnull(MngCB.EditValue) then
         MngId:=MngCB.EditValue;
        HideNR := HideNR_CB.Checked;
        Samovyvoz := Samovyvoz_CB.Checked;
        Result:=mrOK;
      except
        on e:exception do
        MainDM.MessageForm.ShowError('Ошибка: '+e.message);
      end;
    end;
end;

end.
