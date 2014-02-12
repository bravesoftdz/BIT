unit GUILogoForm;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, cxGraphics, cxControls, cxLookAndFeels, cxLookAndFeelPainters,
  cxContainer, cxEdit, dxSkinsCore, cxProgressBar, ExtCtrls, cxLabel, jpeg,
  dxSkinDarkRoom, dxSkinBlack;

type
  TLogoForm = class(TForm)
    Image1: TImage;
    ProgressBar: TcxProgressBar;
    Status_Label: TcxLabel;
  private
    FCurrStep:integer;
  public
    procedure NextStep(Comments: string);
    procedure ShowProgress(StepCount: Integer);
  end;

var
  LogoForm: TLogoForm;

implementation

{$R *.dfm}

procedure TLogoForm.NextStep(Comments: string);
begin
  Inc(FCurrStep);
  ProgressBar.Position := FCurrStep;
  Status_Label.Caption:=Comments;
  Application.ProcessMessages;
end;

procedure TLogoForm.ShowProgress(StepCount: Integer);
begin
  ProgressBar.Visible := True;
  FCurrStep:=0;
  ProgressBar.Properties.Max := StepCount;
  ProgressBar.Properties.Min := 0;
  ProgressBar.Position := 0;
  Show;
end;

end.
