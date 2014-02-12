object ListForm: TListForm
  Left = 0
  Top = 0
  Caption = 'ListForm'
  ClientHeight = 293
  ClientWidth = 437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 28
    Width = 437
    Height = 230
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object ListGrid: TcxGrid
      Left = 0
      Top = 0
      Width = 437
      Height = 230
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      object OrgView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.OrganizationsDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.ShowEditButtons = gsebAlways
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object OrgViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object OrgViewColumn1: TcxGridDBColumn
          DataBinding.FieldName = 'Enabled'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Properties.ImmediatePost = True
          Visible = False
          Options.Filtering = False
          IsCaptionAssigned = True
        end
        object OrgViewOrgName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'OrgName'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnChange = OrgViewOrgNamePropertiesChange
          Width = 300
        end
        object OrgViewColumn2: TcxGridDBColumn
          Caption = #1044#1072#1090#1072' '#1087#1077#1088#1074#1086#1081' '#1087#1088#1086#1076#1072#1078#1080
          DataBinding.FieldName = 'FirstSaleDate'
        end
      end
      object TransporterView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.TransportersDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object TransporterViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object TransporterViewTransporterName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'TransporterName'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 200
        end
        object TransporterViewCost: TcxGridDBColumn
          Caption = #1058#1072#1088#1080#1092
          DataBinding.FieldName = 'Cost'
          Options.Filtering = False
        end
      end
      object UsersView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.UsersDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.HeaderAutoHeight = True
        object UsersViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Width = 20
        end
        object UsersViewUserFIO: TcxGridDBColumn
          Caption = #1060#1048#1054
          DataBinding.FieldName = 'UserFIO'
          Options.Filtering = False
          Width = 168
        end
        object UsersViewLogin: TcxGridDBColumn
          Caption = #1051#1086#1075#1080#1085
          DataBinding.FieldName = 'Login'
          PropertiesClassName = 'TcxTextEditProperties'
          Options.Filtering = False
          Width = 85
        end
        object UsersViewPassword: TcxGridDBColumn
          Caption = #1055#1072#1088#1086#1083#1100
          DataBinding.FieldName = 'Password'
          Options.Filtering = False
          Width = 102
        end
        object UsersViewUserType: TcxGridDBColumn
          Caption = #1058#1080#1087
          DataBinding.FieldName = 'UserType'
          RepositoryItem = MainDM.UserTypesRepository
          Options.Filtering = False
          Width = 119
        end
        object UsersViewManagerPercent: TcxGridDBColumn
          Caption = #1055#1088#1086#1094#1077#1085#1090
          DataBinding.FieldName = 'ManagerPercent'
          Options.Filtering = False
          Width = 158
        end
      end
      object PlacesView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.PlacesDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object PlacesViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object PlacesViewPlaceName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'PlaceName'
          Options.Filtering = False
        end
      end
      object MatGroupsView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.MatGroupsDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object MatGroupsViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object MatGroupsViewMaterialGroupName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'MaterialGroupName'
          Options.Filtering = False
        end
      end
      object MaterialsView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        FilterBox.Visible = fvNever
        DataController.DataSource = MainDM.MaterialsDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object MaterialsViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object MaterialsViewMaterialName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'MaterialName'
          Options.Filtering = False
          Width = 266
        end
        object MaterialsViewMaterialGroup: TcxGridDBColumn
          Caption = #1043#1088#1091#1087#1087#1072' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
          DataBinding.FieldName = 'MaterialGroup'
          RepositoryItem = MainDM.MaterialsGroupRepository
          Visible = False
          GroupIndex = 0
          Width = 198
        end
        object MaterialsViewCost: TcxGridDBColumn
          Caption = #1062#1077#1085#1072
          DataBinding.FieldName = 'Cost'
          Options.Filtering = False
          Width = 153
        end
      end
      object VMaterialsView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.VMaterialsDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object VMaterialsViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object VMaterialsViewVMaterialName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'VMaterialName'
        end
        object VMaterialsViewVMaterialCost: TcxGridDBColumn
          Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
          DataBinding.FieldName = 'VMaterialCost'
        end
      end
      object UserTypesView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.UserTypesDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object UserTypesViewID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object UserTypesViewUserTypeName: TcxGridDBColumn
          Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
          DataBinding.FieldName = 'UserTypeName'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.OnChange = UserTypesViewUserTypeNamePropertiesChange
          Width = 245
        end
        object UserTypesViewUserPrivileges: TcxGridDBColumn
          Caption = #1055#1088#1080#1074#1080#1083#1077#1075#1080#1080
          DataBinding.FieldName = 'UserPrivileges'
          PropertiesClassName = 'TcxBlobEditProperties'
          Properties.BlobEditKind = bekBlob
          Properties.BlobPaintStyle = bpsDefault
          Properties.OnButtonClick = UserTypesViewUserPrivilegesPropertiesButtonClick
          Width = 480
        end
      end
      object OrgLevel: TcxGridLevel
        GridView = OrgView
      end
      object TransporterLevel: TcxGridLevel
        GridView = TransporterView
      end
      object UsersLevel: TcxGridLevel
        GridView = UsersView
      end
      object PlacesLevel: TcxGridLevel
        GridView = PlacesView
      end
      object MatGroupsLevel: TcxGridLevel
        GridView = MatGroupsView
      end
      object MaterialsLevel: TcxGridLevel
        GridView = MaterialsView
      end
      object VMaterialsLevel: TcxGridLevel
        GridView = VMaterialsView
      end
      object UserTypesLevel: TcxGridLevel
        GridView = UserTypesView
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 258
    Width = 437
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      437
      35)
    object OKButton: TcxButton
      Left = 270
      Top = 6
      Width = 75
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = 'OK'
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = True
      TabOrder = 0
      OnClick = OKButtonClick
    end
    object CancelButton: TcxButton
      Left = 351
      Top = 6
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
    LookAndFeel.NativeStyle = True
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 152
    Top = 56
    DockControlHeights = (
      0
      0
      28
      0)
    object dxBarManager1Bar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 506
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'UpdateButton'
        end
        item
          Visible = True
          ItemName = 'AddButton'
        end
        item
          Visible = True
          ItemName = 'ChangeButton'
        end
        item
          Visible = True
          ItemName = 'dxBarButton1'
        end
        item
          Visible = True
          ItemName = 'DeleteButton'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object AddButton: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = AddButtonClick
    end
    object ChangeButton: TdxBarButton
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Visible = ivNever
      ImageIndex = 1
      OnClick = ChangeButtonClick
    end
    object DeleteButton: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = DeleteButtonClick
    end
    object dxBarButton4: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 4
    end
    object UpdateButton: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
      OnClick = UpdateButtonClick
    end
    object dxBarButton1: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 4
      OnClick = dxBarButton1Click
    end
  end
end
