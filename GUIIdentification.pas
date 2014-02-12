unit GUIIdentification;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, Menus, StdCtrls, cxButtons, cxLabel,
  cxTextEdit, ADODB, dxSkinDarkRoom, cxPropertiesStore, dxSkinBlack,
  dxSkinscxPCPainter, cxPC, dxGDIPlusClasses, cxImage;

type
  TIdentForm = class(TForm)
    LoginEdit: TcxTextEdit;
    PasswordEdit: TcxTextEdit;
    cxLabel1: TcxLabel;
    cxLabel2: TcxLabel;
    cxLabel3: TcxLabel;
    EnterButton: TcxButton;
    cxButton1: TcxButton;
    cxPropertiesStore1: TcxPropertiesStore;
    cxPageControl1: TcxPageControl;
    cxTabSheet1: TcxTabSheet;
    cxImage1: TcxImage;
    procedure EnterButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  IdentForm: TIdentForm;

implementation

uses DataModule;

{$R *.dfm}

procedure TIdentForm.EnterButtonClick(Sender: TObject);
var Query:TADOQuery;
begin
 Query:=TADOQuery.Create(nil);
 try
   Query.Connection:=MainDM.DBConnect;
   Query.SQL.Text:='Select * from Users where Login=:Login and Password=:Password';
   Query.Parameters.ParamByName('Login').Value:=LoginEdit.Text;
   Query.Parameters.ParamByName('Password').Value:=PasswordEdit.Text;
   try
     Query.Open;
     if Query.RecordCount>0 then
        begin
           ModalResult:=mrOK;
           MainDM.CurrentUser.ID:=Query.FieldByName('ID').AsInteger;
           MainDM.CurrentUser.Login:=Query.FieldByName('Login').AsString;
           MainDM.CurrentUser.UserType:=Query.FieldByName('UserType').AsInteger;
           MainDM.CurrentUser.Percent:=Query.FieldByName('ManagerPercent').AsFloat;
        end
     else
        MainDM.MessageForm.ShowError('Неправильное имя пользователя или пароль');
   except
      on e:exception do
      MainDM.MessageForm.ShowError('Ошибка запроса к БД '+e.message);
   end;
 finally
   Query.Free;
 end;
end;

end.
