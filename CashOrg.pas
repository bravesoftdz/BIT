unit CashOrg;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, Menus,
  StdCtrls, cxButtons, cxDBEdit, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, DBCtrls, Mask, DataModule,
  cxCalendar, DB, ADODB;

type
  TCashFormOrg = class(TForm)
    DBETransactValue: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DLCBPlace: TcxDBLookupComboBox;
    cxDBTextEdit1: TcxDBTextEdit;
    Label1: TLabel;
    Label2: TLabel;
    OKButton: TcxButton;
    Label3: TLabel;
    DETransactDate: TcxDateEdit;
    ETransactValue: TcxTextEdit;
    QR: TADOQuery;
  private
    v_id: integer;
    procedure InsertNewValue(Sender:TObject);
    procedure UpdateValue(Sender:TObject);
  public
     function ShowNew:integer;
     function ShowValue(id: integer): integer;
  end;

var
  CashFormOrg: TCashFormOrg;

implementation

{$R *.dfm}

{ TCashFormOrg }

function TCashFormOrg.ShowNew: integer;
begin
  OKButton.OnClick:=InsertNewValue;
  DETransactDate.Date:=now;
  Result:=ShowModal;
end;

procedure TCashFormOrg.InsertNewValue(Sender:TObject);
var Query:TADOQuery;
begin
  Query:=TADOQuery.Create(self);
  try
    Query.Connection:=MainDM.DBConnect;
    Query.SQL.Add('Insert into CashOrg (PlaceId,TransactDate,TransactValue)');
    Query.SQL.Add(' values (:PlaceId,:TransactDate,:TransactValue)');
    Query.Parameters.ParamByName('PlaceId').Value:=DLCBPlace.EditValue;
    Query.Parameters.ParamByName('TransactDate').Value:= DETransactDate.Date; //ManagerCB.KeyValue;//EditValue для экспресса
    Query.Parameters.ParamByName('TransactValue').Value:=ETransactValue.Text;
    Query.ExecSQL;
    ModalResult:=mrOK;
  finally
    Query.Free;
  end;
end;

function TCashFormOrg.ShowValue(id: integer): integer;
begin
   OKButton.OnClick:=UpdateValue;
   v_id:=id;
   MainDM.CommonPlansQR.Locate('ID',id,[]);
   DLCBPlace.EditValue:=MainDM.CommonPlansQR.FieldByName('PlaceId').Value;
   DETransactDate.Date:=MainDM.CommonPlansQR.FieldByName('TransactDate').Value;//EditValue для экспресса
   ETransactValue.Text:=MainDM.CommonPlansQR.FieldByName('TransactValue').Value;
   Result:=ShowModal;
end;

procedure TCashFormOrg.UpdateValue(Sender:TObject);
var Query:TADOQuery;
begin
  Query:=TADOQuery.Create(self);
  try
    Query.Connection:=MainDM.DBConnect;
    Query.SQL.Add('Update Plans set PlaceId = :PlaceID,');
    Query.SQL.Add(' TransactDate=:TransactDate,TransactValue=:TransactValue');
    Query.SQL.Add(' where id=:id');
    Query.Parameters.ParamByName('PlaceId').Value:=DLCBPlace.EditValue;
    Query.Parameters.ParamByName('TransactDate').Value:=DETransactDate.Date;//EditValue для экспресса
    Query.Parameters.ParamByName('TransactValue').Value:=ETransactValue.Text;
    Query.Parameters.ParamByName('id').Value:=v_id;
    Query.ExecSQL;
    ModalResult:=mrOK;
  finally
    Query.Free;
  end;
end;

end.
