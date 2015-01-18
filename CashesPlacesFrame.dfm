object CashPlacesFrame: TCashPlacesFrame
  Left = 0
  Top = 0
  Width = 440
  Height = 423
  TabOrder = 0
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 440
    Height = 397
    Align = alClient
    TabOrder = 4
    LookAndFeel.SkinName = 'Black'
    object CashPlaceView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvNever
      DataController.DataSource = CashPlaceDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'InvExpValue'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.Deleting = False
      OptionsData.Editing = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = VinnikViewStylesGetContentStyle
      object CashPlaceViewPlaceName: TcxGridDBColumn
        DataBinding.FieldName = 'PlaceName'
        Width = 203
      end
      object CashPlaceViewSumPlus: TcxGridDBColumn
        DataBinding.FieldName = 'SumPlus'
        Width = 78
      end
      object CashPlaceViewSumMinus: TcxGridDBColumn
        DataBinding.FieldName = 'SumMinus'
        Width = 79
      end
      object CashPlaceViewDif: TcxGridDBColumn
        DataBinding.FieldName = 'Dif'
        Width = 78
      end
      object CashPlaceViewPlaceId: TcxGridDBColumn
        DataBinding.FieldName = 'PlaceId'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = CashPlaceView
    end
  end
  object dxBarManager1: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.Images = MainDM.cxImageList1
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 624
    Top = 192
    DockControlHeights = (
      0
      0
      26
      0)
    object EditBar: TdxBar
      Caption = 'EditBar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 322
      FloatTop = 223
      FloatClientWidth = 51
      FloatClientHeight = 66
      ItemLinks = <
        item
          Visible = True
          ItemName = 'UpdateDataBtn'
        end
        item
          Visible = True
          ItemName = 'InsertVTransactBtn'
        end
        item
          Visible = True
          ItemName = 'CopyVTransactBtn'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object UpdateDataBtn: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Visible = ivNever
      ImageIndex = 2
      OnClick = UpdateDataBtnClick
    end
    object dxBarButton2: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 3
      OnClick = dxBarButton2Click
    end
    object InsertVTransactBtn: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      PaintStyle = psCaptionGlyph
      OnClick = InsertVTransactBtnClick
    end
    object CopyVTransactBtn: TdxBarButton
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      Category = 0
      Hint = #1055#1086#1076#1088#1086#1073#1085#1086
      Visible = ivAlways
      ImageIndex = 8
      PaintStyle = psCaptionGlyph
      OnClick = CopyVTransactBtnClick
    end
    object ApplyVTransactBtn: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      OnClick = ApplyVTransactBtnClick
    end
    object dxBarButton6: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton1: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
  end
  object CashPlaceQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'bd'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'ed'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'bd1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'ed1'
        DataType = ftDateTime
        Size = -1
        Value = Null
      end
      item
        Name = 'FilterDif'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'FilterDif1'
        DataType = ftInteger
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'select * from'
      
        '(select PlaceId, PlaceName, SumPlus, SumMinus, (SumPlus-SumMinus' +
        ') as Dif'
      'from'
      
        '(select cc.PlaceId,p.PlaceName, sum(SumPlus) as SumPlus, sum(Sum' +
        'Minus) as SumMinus'
      'from'
      '(select c.PlaceId, sum(TransactValue) as SumPlus, 0 as SumMinus'
      'from CashPlace c'
      'where TransactDate between :bd and :ed'
      'group by PlaceId'
      'union all'
      
        'select BuyingPlaceId as PlaceId, 0 as SumPlus, sum(BuyingPrice*B' +
        'uyingVolume) as  SumMinus '
      'from MainTransactions'
      'where TransactDate between :bd1 and :ed1'
      ' -- and PaymentType = 1'
      'group by BuyingPlaceId'
      ') cc, Places p'
      'where cc.PlaceId=p.id'
      'group by PlaceId,p.PlaceName)  a) b'
      'where (((Dif <> 0) and (:FilterDif = 1))'
      'or (:FilterDif1 = 0))')
    Left = 384
    Top = 168
    object CashPlaceQRPlaceName: TWideStringField
      DisplayLabel = #1050#1072#1088#1100#1077#1088
      FieldName = 'PlaceName'
      Size = 1000
    end
    object CashPlaceQRSumPlus: TFloatField
      DisplayLabel = #1054#1090#1076#1072#1083#1080
      FieldName = 'SumPlus'
      ReadOnly = True
    end
    object CashPlaceQRSumMinus: TFloatField
      DisplayLabel = #1042#1079#1103#1083#1080
      FieldName = 'SumMinus'
      ReadOnly = True
    end
    object CashPlaceQRDif: TFloatField
      DisplayLabel = #1056#1072#1079#1085#1080#1094#1072
      FieldName = 'Dif'
      ReadOnly = True
    end
    object CashPlaceQRPlaceId: TIntegerField
      FieldName = 'PlaceId'
    end
  end
  object CashPlaceDS: TDataSource
    DataSet = CashPlaceQR
    Left = 376
    Top = 224
  end
end
