unit GUIPlanForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, Menus,
  StdCtrls, cxButtons, cxLabel, cxTextEdit, cxMaskEdit, cxDropDownEdit,
  DataModule, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, ADODB, DB,
  DBCtrls;

type
  TPlanForm = class(TForm)
    PlanCB: TcxComboBox;
    MonthCB: TcxComboBox;
    PlanEdit: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    cxLabel4: TcxLabel;
    cxLabel5: TcxLabel;
    OKButton: TcxButton;
    cxDBLookupComboBox1: TcxDBLookupComboBox;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ManagerCB: TDBLookupComboBox;
    YearEdit: TcxMaskEdit;
    procedure FormShow(Sender: TObject);
    procedure PlanCBPropertiesEditValueChanged(Sender: TObject);
    procedure ManagerCBExit(Sender: TObject);
    procedure ManagerCBCloseUp(Sender: TObject);
  private
    idplan:integer;
    procedure InsertNewPlan(Sender:TObject);
    procedure UpdatePlan(Sender:TObject);
  public
    function ShowPlan(id:integer):integer;
    function ShowNew:integer;
  end;

var
  PlanForm: TPlanForm;

implementation

{$R *.dfm}

procedure TPlanForm.InsertNewPlan(Sender:TObject);
var Query:TADOQuery;
begin
  Query:=TADOQuery.Create(self);
  try
    Query.Connection:=MainDM.DBConnect;
    Query.SQL.Add('Insert into Plans (PlanType,PlanOwner,PlanMonth,PlanYear,PlanValue)');
    Query.SQL.Add(' values (:PlanType,:PlanOwner,:PlanMonth,:PlanYear,:PlanValue)');
    Query.Parameters.ParamByName('PlanType').Value:=PlanCB.ItemIndex;
    Query.Parameters.ParamByName('PlanOwner').Value:=ManagerCB.KeyValue;//EditValue для экспресса
    Query.Parameters.ParamByName('PlanMonth').Value:=MonthCB.ItemIndex;
    Query.Parameters.ParamByName('PlanYear').Value:=YearEdit.Text;
    Query.Parameters.ParamByName('PlanValue').Value:=PlanEdit.Text;
    Query.ExecSQL;
    ModalResult:=mrOK;
  finally
    Query.Free;
  end;
end;

procedure TPlanForm.ManagerCBCloseUp(Sender: TObject);
begin
 if ManagerCB.KeyValue>0 then
    PlanCB.ItemIndex:=2;
end;

procedure TPlanForm.ManagerCBExit(Sender: TObject);
begin
  {if ManagerCB.KeyValue>0 then
    PlanCB.ItemIndex:=2;}
end;

procedure TPlanForm.PlanCBPropertiesEditValueChanged(Sender: TObject);
begin
  if PlanCB.ItemIndex=1 then
    ManagerCB.KeyValue:=0;
end;

procedure TPlanForm.FormShow(Sender: TObject);
begin
   AdoTable1.Open;
end;

function TPlanForm.ShowNew: integer;
begin
  OKButton.OnClick:=InsertNewPlan;
  PlanCB.ItemIndex:=1;
  MonthCB.ItemIndex:=1;
  YearEdit.Text:=formatdatetime('yyyy',now);
  Result:=ShowModal;
end;

function TPlanForm.ShowPlan(id: integer): integer;
begin
   OKButton.OnClick:=UpdatePlan;
   idplan:=id;
   MainDM.CommonPlansQR.Locate('ID',id,[]);
   PlanCB.ItemIndex:=MainDM.CommonPlansQR.FieldByName('PlanType').Value;
   ManagerCB.KeyValue:=MainDM.CommonPlansQR.FieldByName('PlanOwner').Value;//EditValue для экспресса
   MonthCB.ItemIndex:=MainDM.CommonPlansQR.FieldByName('PlanMonth').Value;
   YearEdit.Text:=MainDM.CommonPlansQR.FieldByName('PlanYear').Value;
   PlanEdit.Text:=MainDM.CommonPlansQR.FieldByName('PlanValue').Value;
   Result:=ShowModal;
end;

procedure TPlanForm.UpdatePlan(Sender:TObject);
var Query:TADOQuery;
begin
  Query:=TADOQuery.Create(self);
  try
    Query.Connection:=MainDM.DBConnect;
    Query.SQL.Add('Update Plans  set PlanType=:PlanType,PlanOwner=:PlanOwner,');
    Query.SQL.Add(' PlanMonth=:PlanMonth,PlanYear=:PlanYear,PlanValue=:PlanValue');
    Query.SQL.Add(' where id=:id');
    Query.Parameters.ParamByName('PlanType').Value:=PlanCB.ItemIndex;
    Query.Parameters.ParamByName('PlanOwner').Value:=ManagerCB.KeyValue;//EditValue для экспресса
    Query.Parameters.ParamByName('PlanMonth').Value:=MonthCB.ItemIndex;
    Query.Parameters.ParamByName('PlanYear').Value:=YearEdit.Text;
    Query.Parameters.ParamByName('PlanValue').Value:=PlanEdit.Text;
    Query.Parameters.ParamByName('id').Value:=idplan;
    Query.ExecSQL;
    ModalResult:=mrOK;
  finally
    Query.Free;
  end;
end;

end.
