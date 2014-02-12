object TransporterForm: TTransporterForm
  Left = 0
  Top = 0
  Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
  ClientHeight = 104
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    472
    104)
  PixelsPerInch = 96
  TextHeight = 13
  object cxLabel1: TcxLabel
    Left = 16
    Top = 17
    Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082':'
  end
  object cxLabel3: TcxLabel
    Left = 16
    Top = 44
    Caption = #1062#1077#1085#1072':'
  end
  object CostEdit: TcxMaskEdit
    Left = 90
    Top = 43
    Properties.MaskKind = emkRegExpr
    Properties.MaxLength = 0
    Style.StyleController = MainDM.StyleController
    TabOrder = 2
    Width = 103
  end
  object cxButton1: TcxButton
    Left = 308
    Top = 71
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
    Left = 389
    Top = 71
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
    Left = 90
    Top = 16
    Properties.KeyFieldNames = 'ID'
    Properties.ListColumns = <
      item
        FieldName = 'MaterialGroupName'
      end>
    Properties.ListOptions.ShowHeader = False
    Style.StyleController = MainDM.StyleController
    TabOrder = 5
    Width = 363
  end
  object TranspQuery: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TransporterID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select * from Transporters')
    Left = 16
    Top = 72
  end
  object MatDS: TDataSource
    DataSet = TranspQuery
    Left = 64
    Top = 72
  end
end
