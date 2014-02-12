object FinExpFrame: TFinExpFrame
  Left = 0
  Top = 0
  Width = 502
  Height = 423
  TabOrder = 0
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 502
    Height = 397
    Align = alClient
    TabOrder = 4
    LookAndFeel.SkinName = 'Black'
    object FinExpView: TcxGridDBTableView
      PopupMenu = PM
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvNever
      DataController.DataSource = MainDM.FinExpDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'FinExpValue'
          Column = FinExpViewFinExpValue
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = VinnikViewStylesGetContentStyle
      object FinExpViewid: TcxGridDBColumn
        DataBinding.FieldName = 'id'
        Visible = False
        Width = 105
      end
      object FinExpViewFinExpDate: TcxGridDBColumn
        DataBinding.FieldName = 'FinExpDate'
        Width = 86
      end
      object FinExpViewFinExpName: TcxGridDBColumn
        DataBinding.FieldName = 'FinExpName'
        Width = 182
      end
      object FinExpViewFinExpValue: TcxGridDBColumn
        DataBinding.FieldName = 'FinExpValue'
        Width = 121
      end
      object FinExpViewClearProfitException: TcxGridDBColumn
        DataBinding.FieldName = 'ClearProfitException'
        Width = 111
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = FinExpView
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
        end
        item
          Visible = True
          ItemName = 'ApplyVTransactBtn'
        end
        item
          Visible = True
          ItemName = 'dxBarButton2'
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
      Visible = ivAlways
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
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      OnClick = InsertVTransactBtnClick
    end
    object CopyVTransactBtn: TdxBarButton
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 1
      OnClick = CopyVTransactBtnClick
    end
    object ApplyVTransactBtn: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      OnClick = ApplyVTransactBtnClick
    end
  end
  object PM: TdxBarPopupMenu
    BarManager = dxBarManager1
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
      end
      item
        Visible = True
        ItemName = 'ApplyVTransactBtn'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 368
    Top = 128
  end
end
