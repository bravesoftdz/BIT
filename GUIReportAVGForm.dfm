object AVGReportForm: TAVGReportForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1042#1099#1073#1086#1088' '#1087#1077#1088#1080#1086#1076#1072
  ClientHeight = 95
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  DesignSize = (
    428
    95)
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 8
    Top = 12
    Caption = #1055#1077#1088#1080#1086#1076': '
  end
  object BeginDateEdit: TcxDateEdit
    Left = 100
    Top = 12
    Properties.DateButtons = [btnToday]
    Style.StyleController = MainDM.StyleController
    TabOrder = 1
    Width = 137
  end
  object cxLabel3: TcxLabel
    Left = 243
    Top = 12
    Caption = '-'
  end
  object EndDateEdit: TcxDateEdit
    Left = 264
    Top = 12
    Properties.DateButtons = [btnToday]
    Style.StyleController = MainDM.StyleController
    TabOrder = 3
    Width = 137
  end
  object CancelButton: TcxButton
    Left = 345
    Top = 62
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    TabOrder = 4
  end
  object OKButton: TcxButton
    Left = 264
    Top = 62
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    TabOrder = 5
  end
  object AVGMonthCB: TCheckBox
    Left = 8
    Top = 35
    Width = 105
    Height = 30
    Alignment = taLeftJustify
    Caption = #1057#1088#1077#1076#1085#1077#1084#1077#1089#1103#1095#1085#1099#1077' '#1079#1085#1072#1095#1077#1085#1080#1103':'
    TabOrder = 6
    WordWrap = True
  end
end
