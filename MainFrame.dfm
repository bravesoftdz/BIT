object MainDataFrame: TMainDataFrame
  Left = 0
  Top = 0
  Width = 658
  Height = 488
  TabOrder = 0
  object MainGrid: TcxGrid
    Left = 0
    Top = 26
    Width = 658
    Height = 462
    Align = alClient
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object MainGridView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvNever
      DataController.DataSource = MainDM.MainDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'TransporterCost'
          Column = MainGridViewTransporterCost
        end
        item
          Kind = skSum
          FieldName = 'CommonProfit'
          Column = MainGridViewCommonProfit
        end
        item
          Kind = skSum
          FieldName = 'ManagerProfit'
          Column = MainGridViewManagerProfit
        end
        item
          Kind = skSum
          Column = MainGridViewSaleProfit
        end>
      DataController.Summary.SummaryGroups = <>
      NewItemRow.InfoText = #1065#1077#1083#1082#1085#1080#1090#1077' '#1079#1076#1077#1089#1100' '#1076#1083#1103' '#1076#1086#1073#1072#1074#1083#1077#1085#1080#1103' '#1085#1086#1074#1086#1081' '#1079#1072#1087#1080#1089#1080
      OptionsBehavior.CellHints = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
      OptionsView.ColumnAutoWidth = True
      OptionsView.Footer = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      Styles.OnGetContentStyle = MainGridViewStylesGetContentStyle
      object MainGridViewBlocked: TcxGridDBColumn
        Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072
        DataBinding.FieldName = 'Blocked'
        PropertiesClassName = 'TcxImageComboBoxProperties'
        Properties.Images = cxImageList1
        Properties.ImmediatePost = True
        Properties.Items = <
          item
            Description = #1079#1072#1073#1083#1086#1082#1080#1088#1086#1074#1072#1085#1086
            ImageIndex = 0
            Value = True
          end
          item
            Description = #1089#1074#1086#1073#1086#1076#1085#1086
            ImageIndex = 1
            Value = False
          end>
        Properties.LargeImages = cxImageList1
        Properties.ShowDescriptions = False
      end
      object MainGridViewID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object MainGridViewTransactDate: TcxGridDBColumn
        Caption = #1044#1072#1090#1072
        DataBinding.FieldName = 'TransactDate'
        PropertiesClassName = 'TcxDateEditProperties'
        Properties.DateButtons = [btnToday]
        Properties.OnEditValueChanged = EditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 54
      end
      object MainGridViewOrganizationID: TcxGridDBColumn
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1103
        DataBinding.FieldName = 'OrganizationID'
        RepositoryItem = MainDM.OrgRepository
        HeaderAlignmentHorz = taCenter
        Width = 80
      end
      object MainGridViewMaterialID: TcxGridDBColumn
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083
        DataBinding.FieldName = 'MaterialID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'MaterialName'
          end>
        Properties.ListSource = MainDM.MaterialsDS
        Properties.OnEditValueChanged = MainGridViewMaterialIDPropertiesEditValueChanged
        RepositoryItem = MainDM.MaterialsRepository
        HeaderAlignmentHorz = taCenter
        Width = 65
      end
      object MainGridViewSalePrice: TcxGridDBColumn
        Caption = #1062#1077#1085#1072' '#1087#1088#1086#1076#1072#1078#1080
        DataBinding.FieldName = 'SalePrice'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = EditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 44
      end
      object MainGridViewSaleVolume: TcxGridDBColumn
        Caption = #1054#1073#1098#1077#1084' '#1074#1099#1074#1086#1079#1082#1080
        DataBinding.FieldName = 'SaleVolume'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = EditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 44
      end
      object MainGridViewSaleUnitID: TcxGridDBColumn
        Caption = #1045#1076'. '#1080#1079#1084'.'
        DataBinding.FieldName = 'SaleUnitID'
        RepositoryItem = MainDM.UnitsRepository
        HeaderAlignmentHorz = taCenter
        MinWidth = 27
        Options.Filtering = False
        Width = 28
      end
      object MainGridViewSaleProfit: TcxGridDBColumn
        Caption = #1054#1073#1086#1088#1086#1090
        DataBinding.FieldName = 'SaleProfit'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 47
      end
      object MainGridViewBuyingPlaceID: TcxGridDBColumn
        Caption = #1052#1077#1089#1090#1086' '#1079#1072#1082#1091#1087#1082#1080
        DataBinding.FieldName = 'BuyingPlaceID'
        RepositoryItem = MainDM.PlacesRepository
        HeaderAlignmentHorz = taCenter
        Width = 89
      end
      object MainGridViewBuyingPrice: TcxGridDBColumn
        Caption = #1062#1077#1085#1072' '#1079#1072#1082#1091#1087#1082#1080
        DataBinding.FieldName = 'BuyingPrice'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.MaskKind = emkRegExpr
        Properties.OnEditValueChanged = EditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 42
      end
      object MainGridViewBuyingPriceReal: TcxGridDBColumn
        Caption = #1062#1077#1085#1072' '#1079#1072#1082#1091#1087#1082#1080' '#1088#1077#1072#1083#1100#1085#1072#1103
        DataBinding.FieldName = 'BuyingPriceReal'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = EditValueChanged
      end
      object MainGridViewBuyingVolume: TcxGridDBColumn
        Caption = #1054#1073#1098#1077#1084' '#1079#1072#1082#1091#1087#1082#1080
        DataBinding.FieldName = 'BuyingVolume'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = EditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 46
      end
      object MainGridViewBuyingCost: TcxGridDBColumn
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1079#1072#1082#1091#1087#1082#1080
        DataBinding.FieldName = 'BuyingCost'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = EditValueChanged
        OnGetPropertiesForEdit = MainGridViewBuyingCostGetPropertiesForEdit
      end
      object MainGridViewBuyingUnitID: TcxGridDBColumn
        Caption = #1045#1076'. '#1080#1079#1084'.'
        DataBinding.FieldName = 'BuyingUnitID'
        RepositoryItem = MainDM.UnitsRepository
        HeaderAlignmentHorz = taCenter
        MinWidth = 27
        Options.Filtering = False
        Width = 27
      end
      object MainGridViewMatPaymentType: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099' '#1084#1072#1090#1077#1088#1080#1072#1083#1072
        DataBinding.FieldName = 'MatPaymentType'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'PaymentTypeMatName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = MainDM.PaymentTypesMatDS
        Properties.OnEditValueChanged = EditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
      end
      object MainGridViewTransporterID: TcxGridDBColumn
        Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082
        DataBinding.FieldName = 'TransporterID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'TransporterName'
          end>
        Properties.ListSource = MainDM.TransportersDS
        Properties.OnEditValueChanged = MainGridViewTransporterIDPropertiesEditValueChanged
        RepositoryItem = MainDM.TransporterRepository
        HeaderAlignmentHorz = taCenter
        Width = 72
      end
      object MainGridViewTransporterPrice: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092
        DataBinding.FieldName = 'TransporterPrice'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = MainGridViewTransporterPricePropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 45
      end
      object MainGridViewTransporterPriceReal: TcxGridDBColumn
        Caption = #1058#1072#1088#1080#1092' '#1088#1077#1072#1083#1100#1085#1099#1081
        DataBinding.FieldName = 'TransporterPriceReal'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = EditValueChanged
      end
      object MainGridViewTransporterCost: TcxGridDBColumn
        Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
        DataBinding.FieldName = 'TransporterCost'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = MainGridViewTransporterCostPropertiesEditValueChanged
        OnGetPropertiesForEdit = MainGridViewTransporterCostGetPropertiesForEdit
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 45
      end
      object MainGridViewTranspPaymentType: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1086#1087#1083#1072#1090#1099' '#1087#1077#1088#1077#1074#1086#1079#1082#1080
        DataBinding.FieldName = 'PaymentTypesTransp'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'PaymentTypeMatName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = MainDM.PaymentTypesMatDS
        Properties.OnEditValueChanged = EditValueChanged
      end
      object MainGridViewSpecial: TcxGridDBColumn
        Caption = #1054#1089#1086#1073#1086#1077
        DataBinding.FieldName = 'SpecialCost'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = EditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Options.Grouping = False
      end
      object MainGridViewCommonProfit: TcxGridDBColumn
        Caption = #1053#1040#1064#1040' '#1056#1040#1064#1040' '#1088#1077#1072#1083#1100#1085#1072#1103
        DataBinding.FieldName = 'CommonProfit'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 46
      end
      object MainGridViewCommonProfitMng: TcxGridDBColumn
        Caption = #1053#1040#1064#1040' '#1056#1040#1064#1040
        DataBinding.FieldName = 'CommonProfitMng'
      end
      object MainGridViewPaymentType: TcxGridDBColumn
        Caption = #1058#1080#1087' '#1087#1083#1072#1090#1077#1078#1072
        DataBinding.FieldName = 'PaymentType'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.DropDownListStyle = lsFixedList
        Properties.ImmediatePost = True
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'PaymentName'
          end>
        Properties.ListOptions.ShowHeader = False
        Properties.ListSource = MainDM.PaymenttypsDS
        Properties.OnEditValueChanged = MainGridViewPaymentTypePropertiesEditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 27
      end
      object MainGridViewManagerID: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'ManagerID'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'ID'
        Properties.ListColumns = <
          item
            FieldName = 'UserFIO'
          end>
        Properties.ListSource = MainDM.UsersDS
        Properties.OnEditValueChanged = MainGridViewManagerIDPropertiesEditValueChanged
        RepositoryItem = MainDM.UsersRepository
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 60
      end
      object MainGridViewManagerPercent: TcxGridDBColumn
        Caption = #1057#1090#1072#1074#1082#1072
        DataBinding.FieldName = 'ManagerPercent'
        PropertiesClassName = 'TcxMaskEditProperties'
        Properties.OnEditValueChanged = EditValueChanged
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 46
      end
      object MainGridViewManagerProfit: TcxGridDBColumn
        Caption = #1055#1088#1077#1084#1080#1103' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
        DataBinding.FieldName = 'ManagerProfit'
        HeaderAlignmentHorz = taCenter
        Options.Editing = False
        Options.Filtering = False
        Width = 57
      end
      object MainGridViewComment: TcxGridDBColumn
        Caption = #1050#1086#1084#1084#1077#1085#1090#1072#1088#1080#1081
        DataBinding.FieldName = 'Comment'
        PropertiesClassName = 'TcxMemoProperties'
        Properties.MaxLength = 1000
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
        Width = 92
      end
      object MainGridViewRent: TcxGridDBColumn
        Caption = #1056#1077#1085#1090#1072#1073#1077#1083#1100#1085#1086#1089#1090#1100
        DataBinding.FieldName = 'Rent'
        PropertiesClassName = 'TcxTextEditProperties'
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
      end
      object MainGridViewRentReal: TcxGridDBColumn
        Caption = #1056#1077#1085#1090#1072#1073#1077#1083#1100#1085#1086#1089#1090#1100' '#1088#1077#1072#1083#1100#1085#1072#1103
        DataBinding.FieldName = 'RentReal'
      end
    end
    object MainGridLevel1: TcxGridLevel
      GridView = MainGridView
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
    MenusShowRecentItemsFirst = False
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 304
    Top = 144
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
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton3'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'BlockRecBtn'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
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
    object dxBarButton1: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Visible = ivAlways
      ImageIndex = 2
      OnClick = UpdateDataExecute
    end
    object dxBarButton2: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 3
      OnClick = DeleteMainTransactExecute
    end
    object dxBarButton3: TdxBarButton
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
      OnClick = InsertMainTransactExecute
    end
    object dxBarButton4: TdxBarButton
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 1
      OnClick = CopyMainTransactExecute
    end
    object dxBarButton5: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
      OnClick = AppendRecordExecute
    end
    object dxBarButton6: TdxBarButton
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Category = 0
      Hint = #1054#1090#1084#1077#1085#1080#1090#1100' '#1080#1079#1084#1077#1085#1077#1085#1080#1103
      Visible = ivAlways
      ImageIndex = 6
      OnClick = dxBarButton6Click
    end
    object BlockRecBtn: TdxBarButton
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100'/'#1088#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100'/'#1088#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 7
      OnClick = BlockRecBtnClick
    end
  end
  object ActionList1: TActionList
    Images = MainDM.cxImageList1
    Left = 376
    Top = 144
    object InsertMainTransact: TAction
      Category = 'Bar'
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      ImageIndex = 0
      OnExecute = InsertMainTransactExecute
    end
    object UpdateData: TAction
      Category = 'Bar'
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 2
      OnExecute = UpdateDataExecute
    end
    object CopyMainTransact: TAction
      Category = 'Bar'
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 1
      OnExecute = CopyMainTransactExecute
    end
    object DeleteMainTransact: TAction
      Category = 'Bar'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 3
      OnExecute = DeleteMainTransactExecute
    end
    object AppendRecord: TAction
      Category = 'Bar'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 4
      OnExecute = AppendRecordExecute
    end
  end
  object PM: TdxBarPopupMenu
    BarManager = dxBarManager1
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarButton3'
      end
      item
        Visible = True
        ItemName = 'BlockRecBtn'
      end
      item
        Visible = True
        ItemName = 'dxBarButton4'
      end
      item
        Visible = True
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 448
    Top = 144
  end
  object cxImageList1: TcxImageList
    FormatVersion = 1
    DesignInfo = 15729232
    ImageInfo = <
      item
        Image.Data = {
          36040000424D3604000000000000360000002800000010000000100000000100
          2000000000000004000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000040000000D000000050000000B0000000C0000000E0000000E0000
          000D0000000B000000050000000C000000060000000000000000000000000000
          00000000000602050A1E0F4B8CB2125FB2D7125EB1D7125FB4D71260B4D7125E
          B1D71260B4D810539AC0030C152E000000080000000000000000000000000000
          00000000000009375F641486EDFF1486ECFF1487EDFF1483E4FF1381E2FF1487
          EDFF1486ECFF1486EDFF0C4A818A000000000000000000000000000000000000
          00000000000008446F781091ECFF1091ECFF119CFEFF1D5778FF0C3554FF109B
          FDFF1091ECFF1091ECFF0A568E99000000000000000000000000000000000000
          00000000000007486E750C9CEFFF0C9CEFFF0BA5FDFF20698FFF0F4A70FF0CA7
          FFFF0C9CEFFF0C9CEFFF075C8D96000000000000000000000000000000000000
          000000000000054E707708A7F1FF09A7F1FF0AB3FFFF216082FF104162FF08B1
          FEFF09A7F1FF09A7F1FF05649098000000000000000000000000000000000000
          0000000000000A506B6F09B4F5FF00B2F6FF02B3F5FF07AEEDFF05ABEAFF03B4
          F5FF00B2F6FF06B4F5FF0B6C9096000000000000000000000000000000000000
          000000000000031014151A94BBC329C0F0FF1DB3E3ED17AFE0E417B1E1E51AB1
          E1E929C0F0FF1FA3CDD6061E2627000000000000000000000000000000000000
          00000000000000000000201A1827ACADAEFF3537385000020202000202021C1E
          1E2AABADAEFF3D38375300000000000000000000000000000000000000000000
          0000000000000000000024232333B2B0B1FF3533334A00000000000000001B19
          1823B2B0B1FF4140405C00000000000000000000000000000000000000000000
          0000000000000000000024242431B6B6B7FF3D3D3D5500000000000000001E1E
          1E29B5B5B6FF4343435B00000000000000000000000000000000000000000000
          000000000000000000000909090BB8B8B9F69A9A9BD5171717200E0E0F148282
          83B4BEBEBFFF1D1D1D2600000000000000000000000000000000000000000000
          000000000000000000000000000043434356C4C5C5FFC0C0C1FFC0C0C1FFC3C4
          C4FF6161627D0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002121212A666666806D6D6E892F2F
          303C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end>
  end
end
