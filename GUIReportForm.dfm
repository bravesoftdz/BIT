object ReportForm: TReportForm
  Left = 0
  Top = 0
  BorderStyle = bsToolWindow
  Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1088#1086#1076#1072#1078#1072#1084
  ClientHeight = 149
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
    Top = 119
    Width = 419
    Height = 30
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 0
    ExplicitTop = 97
    DesignSize = (
      419
      30)
    object OKButton: TcxButton
      Left = 252
      Top = 1
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
      Top = 1
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
    Height = 119
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
    object OrgsCB: TcxLookupComboBox
      Left = 88
      Top = 38
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'OrgName'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = MainDM.OrganizationsDS
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
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
    end
    object cxLabel3: TcxLabel
      Left = 243
      Top = 12
      Caption = '-'
    end
    object HideNR_CB: TCheckBox
      Left = 269
      Top = 89
      Width = 140
      Height = 17
      Alignment = taLeftJustify
      Caption = #1057#1082#1088#1099#1074#1072#1090#1100' '#1053#1040#1064#1059' '#1056#1040#1064#1059
      TabOrder = 6
    end
    object Samovyvoz_CB: TCheckBox
      Left = 153
      Top = 89
      Width = 110
      Height = 17
      Alignment = taLeftJustify
      Caption = #1058#1086#1083#1100#1082#1086' '#1089#1072#1084#1086#1074#1099#1074#1086#1079
      TabOrder = 7
    end
    object MngCB: TcxLookupComboBox
      Left = 88
      Top = 62
      Properties.DropDownListStyle = lsFixedList
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'UserFIO'
        end>
      Properties.ListOptions.ShowHeader = False
      Properties.ListSource = MainDM.ManagersDS
      Style.StyleController = MainDM.StyleController
      TabOrder = 8
      Width = 321
    end
    object cxLabel2: TcxLabel
      Left = 8
      Top = 64
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = BeginDateEdit
        Properties.Strings = (
          'Date')
      end
      item
        Component = EndDateEdit
        Properties.Strings = (
          'Date')
      end
      item
        Component = HideNR_CB
        Properties.Strings = (
          'Checked')
      end>
    StorageName = 'cxPropertiesStore1'
    StorageType = stRegistry
    Left = 24
    Top = 80
  end
end
