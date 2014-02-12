unit GUIPrivilegesForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxLookAndFeels, cxLookAndFeelPainters, Menus, StdCtrls,
  cxButtons, ExtCtrls, cxControls, dxSkinsCore, dxSkinBlack, dxSkinDarkRoom,
  cxStyles, cxEdit, cxInplaceContainer, cxVGrid, IniFiles;

type
  TGUIPrivilegesForm = class(TForm)
    Panel1: TPanel;
    OKButton: TcxButton;
    CancelButton: TcxButton;
    cxVerticalGrid1: TcxVerticalGrid;
  private
    { Private declarations }
  public
    function ShowPrivileges(Path:string):integer;
  end;

var
  PrivilegeForm: TGUIPrivilegesForm;

implementation

uses Main;

{$R *.dfm}

{ TGUIPrivilegesForm }

function TGUIPrivilegesForm.ShowPrivileges(Path: string): integer;
var IniFile: TIniFile;
begin
  IniFile:=TIniFile.Create(Path);

  Result:=ShowModal;
end;

end.
