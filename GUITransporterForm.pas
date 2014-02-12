unit GUITransporterForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DataModule, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, dxSkinsCore, Menus, DB, ADODB,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, StdCtrls,
  cxButtons, cxTextEdit, cxMaskEdit, cxLabel;

type
  TTransporterForm = class(TForm)
    cxLabel1: TcxLabel;
    cxLabel3: TcxLabel;
    CostEdit: TcxMaskEdit;
    cxButton1: TcxButton;
    cxButton2: TcxButton;
    matGroupComboBox: TcxLookupComboBox;
    TranspQuery: TADOQuery;
    MatDS: TDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  TransporterForm: TTransporterForm;

implementation

{$R *.dfm}

end.
