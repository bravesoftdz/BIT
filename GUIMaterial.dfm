object MaterialForm: TMaterialForm
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = #1052#1072#1090#1077#1088#1080#1072#1083'/'#1091#1089#1083#1091#1075#1072
  ClientHeight = 138
  ClientWidth = 461
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  DesignSize = (
    461
    138)
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 16
    Top = 13
    Caption = #1043#1088#1091#1087#1087#1072':'
  end
  object cxLabel2: TcxLabel
    Left = 16
    Top = 40
    Caption = #1052#1072#1090#1077#1088#1080#1072#1083':'
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 69
    Caption = #1062#1077#1085#1072':'
  end
  object cxButton1: TcxButton
    Left = 297
    Top = 105
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    ModalResult = 1
    TabOrder = 3
  end
  object cxButton2: TcxButton
    Left = 378
    Top = 105
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = #1054#1090#1084#1077#1085#1072
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = True
    ModalResult = 2
    TabOrder = 4
  end
  object matGroupComboBox: TcxLookupComboBox
    Left = 84
    Top = 12
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'MaterialGroupName'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = GroupDS
    Properties.OnEditValueChanged = matGroupComboBoxPropertiesEditValueChanged
    Style.StyleController = MainDM.StyleController
    TabOrder = 5
    Width = 369
  end
  object matComboBox: TcxLookupComboBox
    Left = 84
    Top = 39
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'MaterialName'
      end>
    Properties.ListOptions.ShowHeader = False
    Properties.ListSource = MatDS
    Properties.OnEditValueChanged = matComboBoxPropertiesEditValueChanged
    Style.StyleController = MainDM.StyleController
    TabOrder = 6
    Width = 369
  end
  object CostDBEdit: TcxDBTextEdit
    Left = 84
    Top = 66
    DataBinding.DataField = 'Cost'
    DataBinding.DataSource = MatDS
    Properties.ReadOnly = True
    Style.StyleController = MainDM.StyleController
    TabOrder = 7
    Width = 121
  end
  object GroupQuery: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from MaterialGroups order by MaterialGroupName')
    Left = 16
    Top = 96
  end
  object GroupDS: TDataSource
    DataSet = GroupQuery
    Left = 72
    Top = 96
  end
  object MatQuery: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'MaterialGroup'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Materials')
    Left = 128
    Top = 96
  end
  object MatDS: TDataSource
    DataSet = MatQuery
    Left = 184
    Top = 96
  end
end
