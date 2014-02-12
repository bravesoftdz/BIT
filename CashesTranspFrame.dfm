object CashTranspFrame: TCashTranspFrame
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
    object CashTranspView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvNever
      DataController.DataSource = CashTranspDS
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
      object CashTranspViewTransporterName: TcxGridDBColumn
        DataBinding.FieldName = 'TransporterName'
        Width = 220
      end
      object CashTranspViewSumPlus: TcxGridDBColumn
        DataBinding.FieldName = 'SumPlus'
        Width = 73
      end
      object CashTranspViewSumMinus: TcxGridDBColumn
        DataBinding.FieldName = 'SumMinus'
        Width = 72
      end
      object CashTranspViewDif: TcxGridDBColumn
        DataBinding.FieldName = 'Dif'
        Width = 73
      end
      object CashTranspViewTranspId: TcxGridDBColumn
        DataBinding.FieldName = 'TranspId'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = CashTranspView
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
      OnClick = dxBarButton1Click
    end
  end
  object CashTranspQR: TADOQuery
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
      
        '(select TranspId, TransporterName, SumPlus, SumMinus, (SumPlus-S' +
        'umMinus) as Dif'
      'from'
      
        '(select cc.TranspId,t.TransporterName, sum(SumPlus) as SumPlus, ' +
        'sum(SumMinus) as SumMinus'
      'from'
      '(select c.TranspId, sum(TransactValue) as SumPlus, 0 as SumMinus'
      'from CashTransp c'
      'where TransactDate between :bd and :ed'
      'group by TranspId'
      'union all'
      
        'select TransporterId as PlaceId, 0 as SumPlus, sum(TransporterCo' +
        'st) as  SumMinus '
      'from MainTransactions'
      'where TransactDate between :bd1 and :ed1'
      'group by TransporterId'
      ') cc, Transporters t'
      'where cc.TranspId=t.id'
      'group by TranspId,t.TransporterName)  a) b'
      'where (((Dif <> 0) and (:FilterDif = 1))'
      'or (:FilterDif1 = 0))')
    Left = 384
    Top = 168
    object CashTranspQRTransporterName: TWideStringField
      DisplayLabel = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
      FieldName = 'TransporterName'
      Size = 1000
    end
    object CashTranspQRSumPlus: TFloatField
      DisplayLabel = #1054#1090#1076#1072#1083#1080
      FieldName = 'SumPlus'
      ReadOnly = True
    end
    object CashTranspQRSumMinus: TFloatField
      DisplayLabel = #1042#1079#1103#1083#1080
      FieldName = 'SumMinus'
      ReadOnly = True
    end
    object CashTranspQRDif: TFloatField
      DisplayLabel = #1056#1072#1079#1085#1080#1094#1072
      FieldName = 'Dif'
      ReadOnly = True
    end
    object CashTranspQRTranspId: TIntegerField
      FieldName = 'TranspId'
    end
  end
  object CashTranspDS: TDataSource
    DataSet = CashTranspQR
    Left = 376
    Top = 224
  end
end
