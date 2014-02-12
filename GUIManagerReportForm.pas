unit GUIManagerReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxTextEdit, cxMaskEdit,
  cxCalendar, Menus, StdCtrls, cxButtons, ExtCtrls, cxLabel, dxSkinDarkRoom,
  dxSkinBlack;

type
  TManagerReportForm = class(TForm)
    BeginDateEdit: TcxDateEdit;
    EndDateEdit: TcxDateEdit;
    ManagerComboBox: TcxLookupComboBox;
    Panel2: TPanel;
    OKButton: TcxButton;
    CancelButton: TcxButton;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    OrgLbl: TcxLabel;
    cxLabel3: TcxLabel;
    TypeLabel: TcxLabel;
    TypeComboBox: TcxComboBox;
  private
    FBeginDate,FEndDate:TDateTime;
    FOrgID:integer;
  public
    property BeginDate:TDateTime read FBeginDate write FBeginDate;
    property EndDate:TDateTime read FEndDate write FEndDate;
    property OrgID:integer read FOrgID write FOrgID;
    // возвращает результат showmodal
    function ShowAdminChoose(var BeginDate:TDateTime;var EndDate:TDateTime;
                        var PlaceID:integer; var TypeReport:integer):integer;
     // возвращает результат showmodal
    function ShowUserChoose(var BeginDate:TDateTime;var EndDate:TDateTime):integer;
  end;

var
  ManagerReportForm: TManagerReportForm;

implementation

{$R *.dfm}

function TManagerReportForm.ShowAdminChoose(var BeginDate: TDateTime; var EndDate: TDateTime;
  var PlaceID: integer; var TypeReport:integer): integer;
begin
  try
    ManagerComboBox.Visible:=True;
    TypeComboBox.Visible:=True;
    OrgLbl.Visible:=True;
    TypeLabel.Visible:=True;

    BeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',BeginDate);
    EndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',EndDate);
    if MainDM.UsersQuery.RecordCount>0 then
     begin
      ManagerComboBox.EditValue:=MainDM.UsersQuery.FieldByName('ID').AsInteger;
     end;
    if ShowModal = mrOK then
      begin
          BeginDate:=BeginDateEdit.Date;
          EndDate:=EndDateEdit.Date;
          if not varisnull(ManagerComboBox.EditValue) then
           PlaceID:=ManagerComboBox.EditValue;
          TypeReport:=TypeComboBox.ItemIndex;
          Result:=mrOK;
      end;
  except
    on e:exception do
     MainDM.MessageForm.ShowError('Ошибка: '+e.message);
  end;
end;

function TManagerReportForm.ShowUserChoose(var BeginDate: TDateTime;
                                 var EndDate: TDateTime): integer;
begin
  ManagerComboBox.Visible:=False;
  TypeComboBox.Visible:=False;
  OrgLbl.Visible:=False;
  TypeLabel.Visible:=False;
  BeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',BeginDate);
  EndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',EndDate);
  if ShowModal = mrOK then
    begin
      try
        BeginDate:=BeginDateEdit.Date;
        EndDate:=EndDateEdit.Date;
        Result:=mrOK;
      except
        on e:exception do
        MainDM.MessageForm.ShowError('Ошибка: '+e.message);
      end;
    end;
end;

end.
