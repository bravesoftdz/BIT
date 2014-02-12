object PrivilegeForm: TPrivilegeForm
  Left = 0
  Top = 0
  Caption = #1053#1072#1089#1090#1088#1086#1081#1082#1072' '#1087#1088#1080#1074#1080#1083#1077#1075#1080#1081
  ClientHeight = 497
  ClientWidth = 521
  Color = clBtnFace
  Constraints.MinHeight = 463
  Constraints.MinWidth = 458
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 461
    Width = 521
    Height = 36
    Align = alBottom
    TabOrder = 0
    DesignSize = (
      521
      36)
    object OKButton: TcxButton
      Left = 357
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = OKButtonClick
    end
    object CancelButton: TcxButton
      Left = 438
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
  object DataPrivilegesGrid: TcxVerticalGrid
    Left = 0
    Top = 125
    Width = 521
    Height = 88
    Align = alTop
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.SkinName = 'Black'
    OptionsView.RowHeaderWidth = 313
    TabOrder = 1
    Version = 1
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 521
    Height = 117
    Align = alTop
    BevelOuter = bvNone
    TabOrder = 2
    object cxRadioGroup2: TcxRadioGroup
      Left = 0
      Top = 0
      Align = alClient
      Caption = #1054#1073#1097#1080#1077' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
      Properties.Items = <>
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 2
      Height = 117
      Width = 521
    end
    object EditRecordsCB: TcxCheckBox
      Left = 8
      Top = 70
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1077#1081
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Transparent = True
      Width = 162
    end
    object UsersRecordsCB: TcxCheckBox
      Left = 8
      Top = 24
      Caption = #1058#1086#1083#1100#1082#1086' '#1079#1072#1087#1080#1089#1080' '#1084#1077#1085#1077#1076#1078#1077#1088#1072' ('#1086#1090#1095#1077#1090')'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Transparent = True
      Width = 201
    end
    object DoBackUpCB: TcxCheckBox
      Left = 8
      Top = 94
      Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1088#1077#1079#1077#1088#1074#1085#1086#1081' '#1082#1086#1087#1080#1080
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 3
      Transparent = True
      Width = 162
    end
    object EditUserTypesCB: TcxCheckBox
      Left = 223
      Top = 47
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1090#1080#1087#1086#1074' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 4
      Transparent = True
      Width = 297
    end
    object EditUsersCB: TcxCheckBox
      Left = 223
      Top = 24
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 5
      Transparent = True
      Width = 297
    end
    object CanBlockRecCB: TcxCheckBox
      Left = 223
      Top = 93
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1085#1080#1077' '#1079#1072#1087#1080#1089#1077#1081
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 6
      Transparent = True
      Width = 145
    end
    object OrgListCB: TcxCheckBox
      Left = 223
      Top = 70
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077' '#1089#1087#1088#1072#1074#1086#1095#1085#1080#1082#1072' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1081
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 7
      Transparent = True
      Width = 297
    end
    object UsersRecordsGridCB: TcxCheckBox
      Left = 8
      Top = 47
      Caption = #1058#1086#1083#1100#1082#1086' '#1079#1072#1087#1080#1089#1080' '#1084#1077#1085#1077#1076#1078#1077#1088#1072'('#1090#1072#1073#1083#1080#1094#1072')'
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 8
      Transparent = True
      Width = 209
    end
  end
  object cxSplitter3: TcxSplitter
    Left = 0
    Top = 117
    Width = 521
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salTop
    Control = Panel2
  end
  object Panel4: TPanel
    Left = 0
    Top = 221
    Width = 521
    Height = 89
    Align = alTop
    AutoSize = True
    BevelOuter = bvNone
    TabOrder = 4
    object PagesRG: TcxRadioGroup
      Left = 0
      Top = 0
      Align = alClient
      Caption = #1042#1082#1083#1072#1076#1082#1080
      Properties.Items = <>
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 4
      Height = 89
      Width = 521
    end
    object DataCB: TcxCheckBox
      Left = 8
      Top = 24
      Caption = #1044#1072#1085#1085#1099#1077
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Transparent = True
      Width = 209
    end
    object PlansCB: TcxCheckBox
      Left = 8
      Top = 47
      Caption = #1055#1083#1072#1085#1099
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Transparent = True
      Width = 209
    end
    object VinnikCB: TcxCheckBox
      Left = 8
      Top = 70
      Caption = #1042#1080#1085#1085#1080#1082#1086#1074#1086
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 2
      Transparent = True
      Width = 209
    end
    object ExpCB: TcxCheckBox
      Left = 143
      Top = 24
      Caption = #1056#1072#1089#1093#1086#1076#1099
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 3
      Transparent = True
      Width = 169
    end
    object GraphCB: TcxCheckBox
      Left = 143
      Top = 47
      Caption = #1043#1088#1072#1092#1080#1082#1080
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 5
      Transparent = True
      Width = 162
    end
    object FinanceCB: TcxCheckBox
      Left = 143
      Top = 70
      Caption = #1060#1080#1085#1072#1085#1089#1099
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 6
      Transparent = True
      Width = 162
    end
    object CapitalCB: TcxCheckBox
      Left = 280
      Top = 24
      Caption = #1050#1072#1087#1080#1090#1072#1083#1080#1079#1072#1094#1080#1103
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 7
      Transparent = True
      Width = 169
    end
    object CashesCB: TcxCheckBox
      Left = 280
      Top = 47
      Caption = #1053#1072#1083#1080#1095#1085#1099#1081' '#1088#1072#1089#1095#1077#1090
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 8
      Transparent = True
      Width = 169
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 310
    Width = 521
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salTop
    Control = Panel4
  end
  object Panel3: TPanel
    Left = 0
    Top = 318
    Width = 521
    Height = 143
    Align = alClient
    Caption = 'Panel3'
    TabOrder = 6
    object cxRadioGroup1: TcxRadioGroup
      Left = 1
      Top = 1
      Align = alClient
      Caption = #1054#1090#1095#1077#1090#1099'/'#1043#1088#1072#1092#1080#1082#1080
      Properties.Columns = 3
      Properties.Items = <>
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      Height = 141
      Width = 519
    end
    object RBuyCB: TcxCheckBox
      Left = 8
      Top = 32
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1091#1087#1082#1077
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 1
      Transparent = True
      Width = 209
    end
    object RMngCB: TcxCheckBox
      Left = 8
      Top = 127
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1088#1077#1084#1080#1080' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 2
      Transparent = True
      Width = 169
    end
    object RSaleCB: TcxCheckBox
      Left = 8
      Top = 104
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1088#1086#1076#1072#1078#1072#1084
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 3
      Transparent = True
      Width = 209
    end
    object RTranspCB: TcxCheckBox
      Left = 8
      Top = 79
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1088#1072#1089#1095#1077#1090#1072#1084' '#1089' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072#1084#1080
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 4
      Transparent = True
      Width = 209
    end
    object ProfitGraphCB: TcxCheckBox
      Left = 223
      Top = 32
      Caption = #1042#1099#1088#1091#1095#1082#1072
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 5
      Transparent = True
      Width = 140
    end
    object CommonProfitGraphCB: TcxCheckBox
      Left = 223
      Top = 102
      Caption = #1054#1073#1097#1072#1103' '#1074#1099#1088#1091#1095#1082#1072
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 6
      Transparent = True
      Width = 140
    end
    object SaleProfitGraphCB: TcxCheckBox
      Left = 223
      Top = 55
      Caption = #1042#1099#1088#1091#1095#1082#1072' '#1087#1088#1086#1076#1072#1078#1080
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 7
      Transparent = True
      Width = 140
    end
    object ExpensesGraphCB: TcxCheckBox
      Left = 223
      Top = 125
      Caption = #1056#1072#1089#1093#1086#1076#1099
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 8
      Transparent = True
      Width = 140
    end
    object ClearProfitsCB: TcxCheckBox
      Left = 360
      Top = 32
      Caption = #1063#1080#1089#1090#1072#1103' '#1087#1088#1080#1073#1099#1083#1100
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 9
      Transparent = True
      Width = 150
    end
    object FinProfitGraphCB: TcxCheckBox
      Left = 223
      Top = 78
      Caption = #1042#1099#1088#1091#1095#1082#1072' '#1092#1080#1085#1072#1085#1089#1099
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 10
      Transparent = True
      Width = 140
    end
    object RBuySnabCB: TcxCheckBox
      Left = 8
      Top = 55
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1091#1087#1082#1077' '#1073#1077#1079' '#1089#1090#1086#1080#1084#1086#1089#1090#1080
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 11
      Transparent = True
      Width = 209
    end
    object ClearProfitsSandCB: TcxCheckBox
      Left = 360
      Top = 55
      Caption = #1063#1080#1089#1090#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' '#1087#1077#1089#1086#1082
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 12
      Transparent = True
      Width = 150
    end
    object ClearProfitsFinCB: TcxCheckBox
      Left = 360
      Top = 78
      Caption = #1063#1080#1089#1090#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' '#1092#1080#1085#1072#1085#1089#1099
      Style.LookAndFeel.Kind = lfOffice11
      Style.LookAndFeel.SkinName = 'Black'
      StyleDisabled.LookAndFeel.Kind = lfOffice11
      StyleDisabled.LookAndFeel.SkinName = 'Black'
      StyleFocused.LookAndFeel.Kind = lfOffice11
      StyleFocused.LookAndFeel.SkinName = 'Black'
      StyleHot.LookAndFeel.Kind = lfOffice11
      StyleHot.LookAndFeel.SkinName = 'Black'
      TabOrder = 13
      Transparent = True
      Width = 150
    end
  end
  object cxSplitter2: TcxSplitter
    Left = 0
    Top = 213
    Width = 521
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salTop
    Control = DataPrivilegesGrid
  end
end
