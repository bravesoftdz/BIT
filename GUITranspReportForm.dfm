object TranspReportForm: TTranspReportForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1091
  ClientHeight = 101
  ClientWidth = 419
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 66
    Width = 419
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      419
      35)
    object OKButton: TcxButton
      Left = 252
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      ModalResult = 1
      TabOrder = 0
    end
    object CancelButton: TcxButton
      Left = 333
      Top = 6
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 66
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object BeginDateEdit: TcxDateEdit
      Left = 88
      Top = 11
      Properties.DateButtons = [btnToday]
      Style.StyleController = MainDM.StyleController
      TabOrder = 0
      Width = 145
    end
    object EndDateEdit: TcxDateEdit
      Left = 264
      Top = 11
      Properties.DateButtons = [btnToday]
      Style.StyleController = MainDM.StyleController
      TabOrder = 1
      Width = 145
    end
    object TransporterComboBox: TcxLookupComboBox
      Left = 88
      Top = 38
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'TransporterName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = MainDM.TransportersDS
      Style.StyleController = MainDM.StyleController
      TabOrder = 2
      Width = 321
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 12
      Caption = #1055#1077#1088#1080#1086#1076': '
    end
    object OrgLbl: TcxLabel
      Left = 8
      Top = 40
      Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082':'
    end
    object cxLabel3: TcxLabel
      Left = 243
      Top = 12
      Caption = '-'
    end
  end
end
