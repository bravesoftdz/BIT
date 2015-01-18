unit GUIBuyingReportForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, cxMaskEdit,
  cxCalendar, Menus, StdCtrls, cxButtons, ExtCtrls, cxLabel, dxSkinDarkRoom,
  dxSkinBlack, cxTextEdit;

type
  TBuyingReportForm = class(TForm)
    BeginDateEdit: TcxDateEdit;
    EndDateEdit: TcxDateEdit;
    PlaceComboBox: TcxLookupComboBox;
    Panel2: TPanel;
    OKButton: TcxButton;
    CancelButton: TcxButton;
    Panel1: TPanel;
    cxLabel1: TcxLabel;
    OrgLbl: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel2: TcxLabel;
    TypeComboBox: TcxComboBox;
  private
    FBeginDate,FEndDate:TDateTime;
    FOrgID:integer;
  public
    property BeginDate:TDateTime read FBeginDate write FBeginDate;
    property EndDate:TDateTime read FEndDate write FEndDate;
    property OrgID:integer read FOrgID write FOrgID;
    // возвращает результат showmodal
    function ShowChoose(var BeginDate:TDateTime;var EndDate:TDateTime;
                        var PlaceID:integer; var TypeReport:integer):integer;
  end;

var
  BuyingReportForm: TBuyingReportForm;

implementation

{$R *.dfm}



function TBuyingReportForm.ShowChoose(var BeginDate: TDateTime; var EndDate: TDateTime;
  var PlaceID: integer; var TypeReport:integer): integer;
begin
  Result:=mrNone;
  PlaceComboBox.Visible:=True;
  OrgLbl.Visible:=True;
  BeginDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',BeginDate);
  EndDateEdit.EditValue:=FormatDateTime('dd.mm.yyyy',EndDate);
  if MainDM.PlacesQuery.RecordCount>0 then
   begin
      PlaceID:=MainDM.PlacesQuery.FieldByName('ID').AsInteger;
      PlaceComboBox.EditValue:=PlaceID;
   end;
  if ShowModal = mrOK then
    begin
      try
        BeginDate:=BeginDateEdit.Date;
        EndDate:=EndDateEdit.Date;
        if not varisnull(PlaceComboBox.EditValue) then
         PlaceID:=PlaceComboBox.EditValue;
        TypeReport:=TypeComboBox.ItemIndex;
        Result:=mrOK;
      except
        on e:exception do
        MainDM.MessageForm.ShowError('Ошибка: '+e.message);
      end;
    end;
end;

end.
