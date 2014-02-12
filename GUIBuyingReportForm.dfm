object BuyingReportForm: TBuyingReportForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1091#1087#1082#1077
  ClientHeight = 129
  ClientWidth = 417
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
    Top = 94
    Width = 417
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    DesignSize = (
      417
      35)
    object OKButton: TcxButton
      Left = 250
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
      Left = 331
      Top = 6
      Width = 78
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
    Width = 417
    Height = 94
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 1
    object BeginDateEdit: TcxDateEdit
      Left = 99
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
    object PlaceComboBox: TcxLookupComboBox
      Left = 97
      Top = 38
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'PlaceName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = MainDM.PlacesDS
      Style.StyleController = MainDM.StyleController
      TabOrder = 2
      Width = 312
    end
    object cxLabel1: TcxLabel
      Left = 8
      Top = 12
      Caption = #1055#1077#1088#1080#1086#1076': '
    end
    object OrgLbl: TcxLabel
      Left = 8
      Top = 40
      Caption = #1052#1077#1089#1090#1086' '#1079#1072#1082#1091#1087#1082#1080':'
    end
    object cxLabel3: TcxLabel
      Left = 250
      Top = 12
      Caption = '-'
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 65
      Caption = #1058#1080#1087' '#1086#1090#1095#1077#1090#1072':'
    end
    object TypeComboBox: TcxComboBox
      Left = 96
      Top = 65
      Properties.DropDownListStyle = lsFixedList
      Properties.Items.Strings = (
        #1086#1073#1097#1080#1081
        #1076#1077#1090#1072#1083#1100#1085#1099#1081)
      Style.StyleController = MainDM.StyleController
      TabOrder = 7
      Text = #1076#1077#1090#1072#1083#1100#1085#1099#1081
      Width = 313
    end
  end
end
