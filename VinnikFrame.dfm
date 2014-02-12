object VFrame: TVFrame
  Left = 0
  Top = 0
  Width = 739
  Height = 423
  TabOrder = 0
  object cxGrid1: TcxGrid
    Left = 0
    Top = 26
    Width = 739
    Height = 397
    Align = alClient
    TabOrder = 0
    LookAndFeel.SkinName = 'Black'
    object VinnikView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvNever
      DataController.DataSource = MainDM.VinnikDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'VCommonCost'
          Column = VinnikViewVCommonCost
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
      object VinnikViewID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
      end
      object VinnikViewVTransactDate: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'VTransactDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = [btnToday]
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Width = 98
      end
      object VinnikViewVMaterial: TcxGridDBColumn
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083
        DataBinding.FieldName = 'VMaterial'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'VMaterialName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = MainDM.VMaterialsDS
        Properties.OnEditValueChanged = VinnikViewVMaterialPropertiesEditValueChanged
        RepositoryItem = MainDM.VMaterialsRepository
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 100
      end
      object VinnikViewVMaterialCost: TcxGridDBColumn
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
        DataBinding.FieldName = 'VMaterialCost'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = VinnikViewVMaterialCostPropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Width = 100
      end
      object VinnikViewBuyingVolume: TcxGridDBColumn
        Caption = #1054#1073#1098#1077#1084' '#1087#1086#1082#1091#1087#1082#1080
        DataBinding.FieldName = 'VBuyingVolume'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = VinnikViewBuyingVolumePropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 69
      end
      object VinnikViewLoadingVolume: TcxGridDBColumn
        Caption = #1054#1073#1098#1077#1084' '#1079#1072#1075#1088#1091#1079#1082#1080
        DataBinding.FieldName = 'VLoadingVolume'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = VinnikViewLoadingVolumePropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 92
      end
      object VinnikViewVTransporter: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
        DataBinding.FieldName = 'VTransporter'
        RepositoryItem = MainDM.TransporterRepository
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 94
      end
      object VinnikViewVOrganization: TcxGridDBColumn
        Caption = #1054#1073#1098#1077#1082#1090
        DataBinding.FieldName = 'VOrganization'
        RepositoryItem = MainDM.OrgRepository
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Width = 91
      end
      object VinnikViewVCommonCost: TcxGridDBColumn
        Caption = #1053#1040#1064#1040' '#1056#1040#1064#1040
        DataBinding.FieldName = 'VCommonCost'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Filtering = False
        Width = 93
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = VinnikView
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
    Left = 528
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
      FloatLeft = 795
      FloatTop = 0
      FloatClientWidth = 0
      FloatClientHeight = 0
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
    Left = 624
    Top = 192
  end
end
