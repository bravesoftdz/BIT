object MainTransactForm: TMainTransactForm
  Left = 0
  Top = 0
  Caption = 'MainTransactForm'
  ClientHeight = 440
  ClientWidth = 497
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object ScrollBox1: TScrollBox
    Left = 0
    Top = 0
    Width = 497
    Height = 405
    Align = alClient
    TabOrder = 0
    object cxGroupBox1: TcxGroupBox
      Left = 8
      Top = 143
      Caption = #1042#1099#1074#1086#1079#1082#1072
      Style.StyleController = MainDM.StyleController
      TabOrder = 0
      Height = 50
      Width = 465
      object CostEdit: TcxMaskEdit
        Left = 64
        Top = 18
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        Style.StyleController = MainDM.StyleController
        TabOrder = 0
        Width = 66
      end
      object cxLabel5: TcxLabel
        Left = 11
        Top = 18
        Caption = #1062#1077#1085#1072':'
      end
      object cxLabel6: TcxLabel
        Left = 152
        Top = 18
        Caption = #1054#1073#1098#1077#1084':'
      end
      object cxLabel7: TcxLabel
        Left = 319
        Top = 19
        Caption = #1045#1076'. '#1080#1079#1084':'
      end
      object cxLookupComboBox2: TcxLookupComboBox
        Left = 378
        Top = 18
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'MaterialName'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.StyleController = MainDM.StyleController
        TabOrder = 4
        Width = 71
      end
      object cxMaskEdit1: TcxMaskEdit
        Left = 199
        Top = 18
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        Style.StyleController = MainDM.StyleController
        TabOrder = 5
        Width = 103
      end
    end
    object cxGroupBox2: TcxGroupBox
      Left = 8
      Top = 8
      Caption = #1054#1073#1097#1080#1077
      Style.StyleController = MainDM.StyleController
      TabOrder = 1
      Height = 129
      Width = 484
      object DateEdit: TcxDateEdit
        Left = 96
        Top = 15
        Style.StyleController = MainDM.StyleController
        TabOrder = 0
        Width = 121
      end
      object cxLabel1: TcxLabel
        Left = 11
        Top = 16
        Caption = #1044#1072#1090#1072':'
      end
      object cxLabel2: TcxLabel
        Left = 11
        Top = 42
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103':'
      end
      object matGroupComboBox: TcxLookupComboBox
        Left = 96
        Top = 70
        RepositoryItem = MainDM.MaterialsGroupRepository
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'MaterialGroupName'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.StyleController = MainDM.StyleController
        TabOrder = 3
        Width = 353
      end
      object cxLabel3: TcxLabel
        Left = 11
        Top = 65
        AutoSize = False
        Caption = #1043#1088#1091#1087#1087#1072' '#1091#1089#1083#1091#1075'/'#13#10#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074':'
        Properties.WordWrap = True
        Transparent = True
        Height = 32
        Width = 79
      end
      object matComboBox: TcxLookupComboBox
        Left = 96
        Top = 97
        RepositoryItem = MainDM.MaterialsRepository
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'MaterialName'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.StyleController = MainDM.StyleController
        TabOrder = 5
        Width = 353
      end
      object cxLabel4: TcxLabel
        Left = 11
        Top = 98
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083':'
      end
      object OrgComboBox: TcxLookupComboBox
        Left = 96
        Top = 42
        RepositoryItem = MainDM.OrganizationsRepository
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'OrgName'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.StyleController = MainDM.StyleController
        TabOrder = 7
        Width = 353
      end
      object OrgConfigure: TcxButton
        Left = 455
        Top = 39
        Width = 26
        Height = 25
        Caption = '...'
        LookAndFeel.Kind = lfOffice11
        LookAndFeel.NativeStyle = True
        TabOrder = 8
        OnClick = OrgConfigureClick
      end
    end
    object cxGroupBox3: TcxGroupBox
      Left = 6
      Top = 199
      Caption = #1047#1072#1082#1091#1087#1082#1072
      Style.StyleController = MainDM.StyleController
      TabOrder = 2
      Height = 82
      Width = 465
      object cxMaskEdit3: TcxMaskEdit
        Left = 65
        Top = 52
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        Style.StyleController = MainDM.StyleController
        TabOrder = 0
        Width = 66
      end
      object cxLabel9: TcxLabel
        Left = 12
        Top = 52
        Caption = #1062#1077#1085#1072':'
      end
      object cxLabel10: TcxLabel
        Left = 153
        Top = 52
        Caption = #1054#1073#1098#1077#1084':'
      end
      object cxLabel11: TcxLabel
        Left = 320
        Top = 53
        Caption = #1045#1076'. '#1080#1079#1084':'
      end
      object cxLookupComboBox3: TcxLookupComboBox
        Left = 379
        Top = 52
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'MaterialName'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.StyleController = MainDM.StyleController
        TabOrder = 4
        Width = 71
      end
      object cxMaskEdit4: TcxMaskEdit
        Left = 200
        Top = 52
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        Style.StyleController = MainDM.StyleController
        TabOrder = 5
        Width = 103
      end
      object cxLookupComboBox4: TcxLookupComboBox
        Left = 97
        Top = 19
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'MaterialGroupName'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.StyleController = MainDM.StyleController
        TabOrder = 6
        Width = 353
      end
      object cxLabel13: TcxLabel
        Left = 12
        Top = 20
        Caption = #1052#1077#1089#1090#1086' '#1079#1072#1082#1091#1087#1082#1080':'
      end
    end
    object cxGroupBox4: TcxGroupBox
      Left = 6
      Top = 287
      Caption = #1055#1077#1088#1077#1074#1086#1079#1082#1072
      Style.StyleController = MainDM.StyleController
      TabOrder = 3
      Height = 58
      Width = 465
      object cxMaskEdit6: TcxMaskEdit
        Left = 384
        Top = 20
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        Style.StyleController = MainDM.StyleController
        TabOrder = 0
        Width = 66
      end
      object cxLabel14: TcxLabel
        Left = 344
        Top = 20
        Caption = #1062#1077#1085#1072':'
      end
      object cxLookupComboBox6: TcxLookupComboBox
        Left = 97
        Top = 19
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'MaterialGroupName'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.StyleController = MainDM.StyleController
        TabOrder = 2
        Width = 241
      end
      object cxLabel18: TcxLabel
        Left = 12
        Top = 20
        Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082':'
      end
    end
    object cxGroupBox5: TcxGroupBox
      Left = 6
      Top = 345
      Caption = #1052#1077#1085#1077#1076#1078#1077#1088
      Style.StyleController = MainDM.StyleController
      TabOrder = 4
      Height = 50
      Width = 465
      object cxMaskEdit7: TcxMaskEdit
        Left = 387
        Top = 20
        Properties.MaskKind = emkRegExpr
        Properties.MaxLength = 0
        Style.StyleController = MainDM.StyleController
        TabOrder = 0
        Width = 66
      end
      object cxLabel15: TcxLabel
        Left = 320
        Top = 20
        Caption = #1055#1088#1080#1073#1099#1083#1100':'
      end
      object cxLookupComboBox5: TcxLookupComboBox
        Left = 97
        Top = 17
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'MaterialGroupName'
          end>
        Properties.ListOptions.ShowHeader = False
        Style.StyleController = MainDM.StyleController
        TabOrder = 2
        Width = 206
      end
      object cxLabel19: TcxLabel
        Left = 12
        Top = 20
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
      end
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 405
    Width = 497
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      497
      35)
    object cxButton1: TcxButton
      Left = 335
      Top = 5
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      ModalResult = 1
      TabOrder = 0
    end
    object cxButton2: TcxButton
      Left = 416
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
end
