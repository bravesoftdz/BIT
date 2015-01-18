unit GUIMessageForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, cxLookAndFeelPainters, StdCtrls, cxButtons, ExtCtrls,
  dxSkinsCore, dxSkinsDefaultPainters, dxSkinscxPCPainter, cxPC, cxControls,
  cxEdit, cxEditRepositoryItems, cxContainer, cxTextEdit, cxMemo,
  cxGraphics, cxLookAndFeels, dxGDIPlusClasses, dxSkinDarkRoom, dxSkinBlack,
  Buttons,ShellAPI;

type

  TMessageForm = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    PageControl: TcxPageControl;
    ErrorTabSheet: TcxTabSheet;
    NotifyTabSheet: TcxTabSheet;
    QuestionTabSheet: TcxTabSheet;
    Panel2: TPanel;
    Image2: TImage;
    Panel3: TPanel;
    Image3: TImage;
    CancelButton: TcxButton;
    NoButton: TcxButton;
    YesButton: TcxButton;
    cxButton5: TcxButton;
    ErrorMemo: TcxMemo;
    OkBtn: TcxButton;
    QuestionMemo: TcxMemo;
    NotifyMemo: TcxMemo;
    ErrorTitle: TLabel;
    BitBtn1: TBitBtn;
    procedure BitBtn1Click(Sender: TObject);
  private
    FMailText:string;
    procedure CreateButtons(CountButtons:integer);
  public
    function ShowError(Text:string;FullText:string = ''):integer;
    function ShowNotify(Text:string):integer;
    function ShowQuestion(Text:string;CountButtons:integer):integer;
  end;

var
  MessageForm: TMessageForm;

implementation

{$R *.dfm}

{ TMessageForm }

procedure TMessageForm.BitBtn1Click(Sender: TObject);
begin
   ShellExecute(Handle, nil, PWideChar('mailto:savina.marina@yahoo.com?subject=БИТ&body='+FMailText),
   nil, nil, SW_RESTORE);
end;

procedure TMessageForm.CreateButtons(CountButtons: integer);
begin
  case CountButtons of
    2: begin
        YesButton.Left:= 235;
        NoButton.Left:= 316;
        CancelButton.Visible:=true;
       end;
    3: begin
        YesButton.Left:= 154;
        NoButton.Left:= 235;
        CancelButton.Visible:=true;
       end;
  end;
end;

function TMessageForm.ShowError(Text: string;FullText:string =''): integer;
begin
  Self.Caption:='Ошибка';
  ErrorMemo.Clear;
  ErrorMemo.Lines.Add(Text);
  PageControl.ActivePage:=ErrorTabSheet;
  FMailText := Text + '%0A' +FullText;
  Result:=ShowModal;
end;

function TMessageForm.ShowNotify(Text: string): integer;
begin
  Self.Caption:='Информация';
  NotifyMemo.Clear;
  NotifyMemo.Lines.Add(Text);
  PageControl.ActivePage:=NotifyTabSheet;
  Result:=ShowModal;
end;

function TMessageForm.ShowQuestion(Text: string;CountButtons:integer): integer;
begin
  Self.Caption:='Выбор';
  QuestionMemo.Clear;
  QuestionMemo.Lines.Add(Text);
  PageControl.ActivePage:=QuestionTabSheet;
  CreateButtons(CountButtons);
  Result:=ShowModal;
end;

end.
