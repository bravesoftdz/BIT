object CashFormOrg: TCashFormOrg
  Left = 0
  Top = 0
  Caption = 'CashFormOrg'
  ClientHeight = 117
  ClientWidth = 423
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    423
    117)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 35
    Width = 44
    Height = 13
    Caption = #1050#1072#1088#1100#1077#1088': '
  end
  object Label2: TLabel
    Left = 8
    Top = 59
    Width = 38
    Height = 13
    Caption = #1057#1091#1084#1084#1072': '
  end
  object Label3: TLabel
    Left = 8
    Top = 13
    Width = 33
    Height = 13
    Caption = #1044#1072#1090#1072': '
  end
  object DBETransactValue: TDBEdit
    Left = 58
    Top = 59
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 58
    Top = 32
    Width = 352
    Height = 21
    TabOrder = 1
  end
  object DLCBPlace: TcxDBLookupComboBox
    Left = 58
    Top = 32
    RepositoryItem = MainDM.PlacesRepository
    Properties.ListColumns = <>
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 2
    Width = 199
  end
  object cxDBTextEdit1: TcxDBTextEdit
    Left = 185
    Top = 59
    TabOrder = 3
    Width = 121
  end
  object OKButton: TcxButton
    Left = 340
    Top = 84
    Width = 75
    Height = 25
    Anchors = [akRight, akBottom]
    Caption = 'OK'
    LookAndFeel.SkinName = 'Black'
    TabOrder = 4
    ExplicitTop = 44
  end
  object DETransactDate: TcxDateEdit
    Left = 58
    Top = 5
    Properties.ImmediatePost = True
    Properties.SaveTime = False
    Properties.ShowTime = False
    Style.LookAndFeel.Kind = lfUltraFlat
    Style.LookAndFeel.SkinName = 'Black'
    StyleDisabled.LookAndFeel.Kind = lfUltraFlat
    StyleDisabled.LookAndFeel.SkinName = 'Black'
    StyleFocused.LookAndFeel.Kind = lfUltraFlat
    StyleFocused.LookAndFeel.SkinName = 'Black'
    StyleHot.LookAndFeel.Kind = lfUltraFlat
    StyleHot.LookAndFeel.SkinName = 'Black'
    TabOrder = 5
    Width = 121
  end
  object ETransactValue: TcxTextEdit
    Left = 58
    Top = 86
    TabOrder = 6
    Text = 'ETransactValue'
    Width = 121
  end
  object QR: TADOQuery
    Connection = MainDM.DBConnect
    Parameters = <
      item
        Name = 'id'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select PlaceId,TransactDate,TransactValue'
      'from CashOrg where id = :id')
    Left = 312
    Top = 8
  end
end
