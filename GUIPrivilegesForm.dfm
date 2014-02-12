object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'PrivilegeForm'
  ClientHeight = 249
  ClientWidth = 418
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 213
    Width = 418
    Height = 36
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      418
      36)
    object OKButton: TcxButton
      Left = 254
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      TabOrder = 0
    end
    object CancelButton: TcxButton
      Left = 335
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = #1054#1090#1084#1077#1085#1072
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      ModalResult = 2
      TabOrder = 1
    end
  end
  object cxVerticalGrid1: TcxVerticalGrid
    Left = 0
    Top = 0
    Width = 418
    Height = 213
    Align = alClient
    OptionsView.RowHeaderWidth = 313
    TabOrder = 1
    Version = 1
  end
end
