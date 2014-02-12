unit GUIPrivilegeForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, cxControls,
  dxSkinsCore, dxSkinBlack, dxSkinDarkRoom, cxStyles, cxEdit,
  cxInplaceContainer, cxVGrid, StdCtrls, cxButtons, ExtCtrls, IniFiles,
  cxCheckBox, cxContainer, cxSplitter, cxLabel, cxGroupBox, cxRadioGroup;

type
  TPrivilegeForm = class(TForm)
    Panel1: TPanel;
    OKButton: TcxButton;
    CancelButton: TcxButton;
    DataPrivilegesGrid: TcxVerticalGrid;
    Panel2: TPanel;
    UsersRecordsCB: TcxCheckBox;
    EditRecordsCB: TcxCheckBox;
    cxSplitter3: TcxSplitter;
    Panel4: TPanel;
    DataCB: TcxCheckBox;
    PlansCB: TcxCheckBox;
    VinnikCB: TcxCheckBox;
    ExpCB: TcxCheckBox;
    PagesRG: TcxRadioGroup;
    GraphCB: TcxCheckBox;
    FinanceCB: TcxCheckBox;
    cxRadioGroup1: TcxRadioGroup;
    cxSplitter1: TcxSplitter;
    RSaleCB: TcxCheckBox;
    RBuyCB: TcxCheckBox;
    RTranspCB: TcxCheckBox;
    RMngCB: TcxCheckBox;
    Panel3: TPanel;
    cxRadioGroup2: TcxRadioGroup;
    cxSplitter2: TcxSplitter;
    DoBackUpCB: TcxCheckBox;
    EditUserTypesCB: TcxCheckBox;
    EditUsersCB: TcxCheckBox;
    ProfitGraphCB: TcxCheckBox;
    CommonProfitGraphCB: TcxCheckBox;
    SaleProfitGraphCB: TcxCheckBox;
    ExpensesGraphCB: TcxCheckBox;
    ClearProfitsCB: TcxCheckBox;
    FinProfitGraphCB: TcxCheckBox;
    CanBlockRecCB: TcxCheckBox;
    CapitalCB: TcxCheckBox;
    CashesCB: TcxCheckBox;
    RBuySnabCB: TcxCheckBox;
    ClearProfitsSandCB: TcxCheckBox;
    ClearProfitsFinCB: TcxCheckBox;
    OrgListCB: TcxCheckBox;
    UsersRecordsGridCB: TcxCheckBox;
    procedure OKButtonClick(Sender: TObject);
  private
    IniPath:string;
  public
    function ShowPrivileges(Path: string): integer;
  end;

var
  PrivilegeForm: TPrivilegeForm;

implementation

uses Main;

{$R *.dfm}

procedure TPrivilegeForm.OKButtonClick(Sender: TObject);
var IniFile: TIniFile;
    i:integer;
begin
  IniFile:=TIniFile.Create(IniPath);
  try
    for i := 0 to MainForm.MainDataFrame.MainGridView.ColumnCount - 1 do
    begin
      IniFile.WriteBool('MainData',
              MainForm.MainDataFrame.MainGridView.Columns[i].Name,
              TcxEditorRow(DataPrivilegesGrid.Rows[i]).Properties.Value);
    end;
     IniFile.WriteBool('Pages','DataPage',DataCB.Checked);
     IniFile.WriteBool('Pages','PlansPage',PlansCB.Checked);
     IniFile.WriteBool('Pages','VinnikPage',VinnikCB.Checked);
     IniFile.WriteBool('Pages','ExpPage',ExpCB.Checked);
     IniFile.WriteBool('Pages','GraphPage',GraphCB.Checked);
     IniFile.WriteBool('Pages','FinancePage',FinanceCB.Checked);
     IniFile.WriteBool('Pages','CapitalPage',CapitalCB.Checked);
     IniFile.WriteBool('Pages','CashesPage',CashesCB.Checked);

     IniFile.WriteBool('Reports','RSale',RSaleCB.Checked);
     IniFile.WriteBool('Reports','RBuy',RBuyCB.Checked);
     IniFile.WriteBool('Reports','RBuySnab',RBuySnabCB.Checked);

     IniFile.WriteBool('Reports','RTransp',RTranspCB.Checked);
     IniFile.WriteBool('Reports','RMng',RMngCB.Checked);

     IniFile.WriteBool('Block','CanBlockRec',CanBlockRecCB.Checked);

     IniFile.WriteBool('Common','UsersRecordsOnly',UsersRecordsCB.Checked);
     IniFile.WriteBool('Common','UsersRecordsGridOnly',UsersRecordsGridCB.Checked);
     IniFile.WriteBool('Common','EditRecords',EditRecordsCB.Checked);


     IniFile.WriteBool('Common','EditUserTypes',EditUserTypesCB.Checked);
     IniFile.WriteBool('Common','EditUsers',EditUsersCB.Checked);
     IniFile.WriteBool('Common','EditOrgList',OrgListCB.Checked);
     IniFile.WriteBool('Common','DoBackUp',DoBackUpCB.Checked);


     IniFile.WriteBool('Graphs','ProfitGraph',ProfitGraphCB.Checked);
     IniFile.WriteBool('Graphs','SaleProfitGraph',SaleProfitGraphCB.Checked);
     IniFile.WriteBool('Graphs','FinProfitGraph',FinProfitGraphCB.Checked);
     IniFile.WriteBool('Graphs','CommonProfitGraph',CommonProfitGraphCB.Checked);
     IniFile.WriteBool('Graphs','ExpensesGraph',ExpensesGraphCB.Checked);
     IniFile.WriteBool('Graphs','ClearProfitsGraph',ClearProfitsCB.Checked);
     IniFile.WriteBool('Graphs','ClearProfitsSandGraph',ClearProfitsSandCB.Checked);
     IniFile.WriteBool('Graphs','ClearProfitsFinGraph',ClearProfitsFinCB.Checked);

  finally
    IniFile.Free;
  end;
  ModalResult:=mrOK;
end;

function TPrivilegeForm.ShowPrivileges(Path: string): integer;
var IniFile: TIniFile;
    Row:TcxCustomRow;
    i:integer;
    C:TcxCheckBoxProperties;
begin
  IniPath:=Path;
  IniFile:=TIniFile.Create(Path);
  try
  for i := 0 to MainForm.MainDataFrame.MainGridView.ColumnCount - 1 do
   begin
     Row:=DataPrivilegesGrid.Add(TcxEditorRow);
     C:= TcxCheckBoxProperties.Create(Row);
     TcxEditorRow(Row).Properties.Caption:=MainForm.MainDataFrame.MainGridView.Columns[i].Caption;
     TcxEditorRow(Row).Properties.EditPropertiesClass:=TcxCustomEditPropertiesClass(C.ClassType);
     TcxEditorRow(Row).Properties.EditProperties:=C;
     TcxEditorRow(Row).Properties.Value:=IniFile.ReadBool('MainData',
                                        MainForm.MainDataFrame.MainGridView.Columns[i].Name,True);
   end;

     DataCB.Checked:=IniFile.ReadBool('Pages','DataPage',True);
     PlansCB.Checked:=IniFile.ReadBool('Pages','PlansPage',True);
     VinnikCB.Checked:=IniFile.ReadBool('Pages','VinnikPage',True);
     ExpCB.Checked:=IniFile.ReadBool('Pages','ExpPage',True);
     GraphCB.Checked:=IniFile.ReadBool('Pages','GraphPage',True);
     FinanceCB.Checked:=IniFile.ReadBool('Pages','FinancePage',True);
     CapitalCB.Checked:=IniFile.ReadBool('Pages','CapitalPage',True);
     CashesCB.Checked:=IniFile.ReadBool('Pages','CashesPage',True);

     RSaleCB.Checked:=IniFile.ReadBool('Reports','RSale',True);
     RBuyCB.Checked:=IniFile.ReadBool('Reports','RBuy',True);
     RBuySnabCB.Checked:=IniFile.ReadBool('Reports','RBuySnab',True);
     RTranspCB.Checked:=IniFile.ReadBool('Reports','RTransp',True);
     RMngCB.Checked:=IniFile.ReadBool('Reports','RMng',True);

     UsersRecordsCB.Checked:=IniFile.ReadBool('Common','UsersRecordsOnly',True);
     UsersRecordsGridCB.Checked:=IniFile.ReadBool('Common','UsersRecordsGridOnly',True);
     EditRecordsCB.Checked:=IniFile.ReadBool('Common','EditRecords',True);

     EditUserTypesCB.Checked:=IniFile.ReadBool('Common','EditUserTypes',True);
     EditUsersCB.Checked:=IniFile.ReadBool('Common','EditUsers',True);
     OrgListCB.Checked:=IniFile.ReadBool('Common','EditOrgList',True);
     DoBackUpCB.Checked:=IniFile.ReadBool('Common','DoBackUp',True);

     CanBlockRecCB.Checked:=IniFile.ReadBool('Block','CanBlockRec',True);

     ProfitGraphCB.Checked:=IniFile.ReadBool('Graphs','ProfitGraph',True);
     SaleProfitGraphCB.Checked:=IniFile.ReadBool('Graphs','SaleProfitGraph',True);
     FinProfitGraphCB.Checked:=IniFile.ReadBool('Graphs','FinProfitGraph',True);
     CommonProfitGraphCB.Checked:=IniFile.ReadBool('Graphs','CommonProfitGraph',True);
     ExpensesGraphCB.Checked:=IniFile.ReadBool('Graphs','ExpensesGraph',True);
     ClearProfitsCB.Checked:=IniFile.ReadBool('Graphs','ClearProfitsGraph',True);
     ClearProfitsSandCB.Checked:=IniFile.ReadBool('Graphs','ClearProfitsSandGraph',True);
     ClearProfitsFinCB.Checked:=IniFile.ReadBool('Graphs','ClearProfitsFinGraph',True);

  Result:=ShowModal;
  finally
    IniFile.Free;
  end;
end;

end.
