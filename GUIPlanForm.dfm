object PlanForm: TPlanForm
  Left = 0
  Top = 0
  Caption = #1055#1083#1072#1085
  ClientHeight = 177
  ClientWidth = 406
  Color = clBtnFace
  Constraints.MinHeight = 215
  Constraints.MinWidth = 215
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnShow = FormShow
  DesignSize = (
    406
    177)
  PixelsPerInch = 96
  TextHeight = 13
  object PlanCB: TcxComboBox
    Left = 75
    Top = 7
    RepositoryItem = MainDM.PlanTypesCB
    Anchors = [akLeft, akTop, akRight]
    Properties.OnEditValueChanged = PlanCBPropertiesEditValueChanged
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 0
    Width = 318
  end
  object MonthCB: TcxComboBox
    Left = 75
    Top = 61
    RepositoryItem = MainDM.MonthCB
    Anchors = [akLeft, akTop, akRight]
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 1
    Width = 318
  end
  object PlanEdit: TcxTextEdit
    Left = 75
    Top = 115
    Anchors = [akLeft, akTop, akRight]
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 2
    Width = 318
  end
  object cxLabel1: TcxLabel
    Left = 8
    Top = 8
    Caption = #1058#1080#1087':'
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
  end
  object cxLabel2: TcxLabel
    Left = 8
    Top = 31
    Caption = #1052#1077#1085#1077#1076#1078#1077#1088':'
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
  end
  object cxLabel3: TcxLabel
    Left = 8
    Top = 61
    Caption = #1052#1077#1089#1103#1094':'
  end
  object cxLabel4: TcxLabel
    Left = 8
    Top = 89
    Caption = #1043#1086#1076':'
  end
  object cxLabel5: TcxLabel
    Left = 8
    Top = 116
    Caption = #1055#1083#1072#1085':'
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
  end
  object OKButton: TcxButton
    Left = 318
    Top = 143
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    LookAndFeel.SkinName = 'Black'
    TabOrder = 8
  end
  object cxDBLookupComboBox1: TcxDBLookupComboBox
    Left = 75
    Top = 142
    RepositoryItem = MainDM.UsersRepository
    Properties.ImmediatePost = True
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'UserFIO'
      end>
    Properties.ListSource = DataSource1
    Style.StyleController = MainDM.StyleController
    TabOrder = 9
    Visible = False
    Width = 145
  end
  object ManagerCB: TDBLookupComboBox
    Left = 75
    Top = 34
    Width = 318
    Height = 21
    Anchors = [akLeft, akTop, akRight]
    KeyField = 'ID'
    ListField = 'UserFIO'
    ListSource = DataSource1
    TabOrder = 10
    OnCloseUp = ManagerCBCloseUp
    OnExit = ManagerCBExit
  end
  object YearEdit: TcxMaskEdit
    Left = 75
    Top = 88
    Anchors = [akLeft, akTop, akRight]
    Properties.MaskKind = emkRegExpr
    Properties.EditMask = '[0-9]{4}'
    Properties.MaxLength = 0
    Style.StyleController = MainDM.StyleController
    TabOrder = 11
    Text = '1'
    Width = 318
  end
  object ADOTable1: TADOTable
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    TableName = 'Users'
    Left = 328
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 288
    Top = 88
  end
end
