object CashForm: TCashForm
  Left = 0
  Top = 0
  Caption = 'CashForm'
  ClientHeight = 264
  ClientWidth = 601
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
    Width = 601
    Height = 201
    Align = alClient
    BevelOuter = bvNone
    Caption = 'Panel1'
    TabOrder = 0
    object ListGrid: TcxGrid
      Left = 0
      Top = 0
      Width = 601
      Height = 201
      Align = alClient
      TabOrder = 0
      LookAndFeel.Kind = lfOffice11
      LookAndFeel.NativeStyle = False
      LookAndFeel.SkinName = 'Black'
      object OrgView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.CashOrgDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object OrgViewid: TcxGridDBColumn
          DataBinding.FieldName = 'id'
          Visible = False
        end
        object OrgViewOrgId: TcxGridDBColumn
          DataBinding.FieldName = 'OrgId'
          RepositoryItem = MainDM.OrgRepository
          Width = 129
        end
        object OrgViewTransactDate: TcxGridDBColumn
          DataBinding.FieldName = 'TransactDate'
          Width = 102
        end
        object OrgViewTransactValue: TcxGridDBColumn
          DataBinding.FieldName = 'TransactValue'
          Width = 98
        end
        object OrgViewNote: TcxGridDBColumn
          DataBinding.FieldName = 'Note'
          Width = 270
        end
      end
      object TransporterView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.CashTranspDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object TransporterViewId: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          Visible = False
        end
        object TransporterViewTranspId: TcxGridDBColumn
          DataBinding.FieldName = 'TranspId'
          RepositoryItem = MainDM.TransporterRepository
          Width = 171
        end
        object TransporterViewTransactDate: TcxGridDBColumn
          DataBinding.FieldName = 'TransactDate'
          Width = 95
        end
        object TransporterViewTransactValue: TcxGridDBColumn
          DataBinding.FieldName = 'TransactValue'
          Width = 122
        end
        object TransporterViewNote: TcxGridDBColumn
          DataBinding.FieldName = 'Note'
          Width = 211
        end
      end
      object PlacesView: TcxGridDBTableView
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = MainDM.CashPlaceDS
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
        OptionsView.ShowEditButtons = gsebForFocusedRecord
        OptionsView.CellAutoHeight = True
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        object PlacesViewId: TcxGridDBColumn
          DataBinding.FieldName = 'Id'
          Visible = False
        end
        object PlacesViewPlaceId: TcxGridDBColumn
          DataBinding.FieldName = 'PlaceId'
          RepositoryItem = MainDM.PlacesRepository
          Width = 153
        end
        object PlacesViewTransactDate: TcxGridDBColumn
          DataBinding.FieldName = 'TransactDate'
          Width = 91
        end
        object PlacesViewTransactValue: TcxGridDBColumn
          DataBinding.FieldName = 'TransactValue'
          Width = 92
        end
        object PlacesViewNote: TcxGridDBColumn
          DataBinding.FieldName = 'Note'
          Width = 263
        end
      end
      object OrgLevel: TcxGridLevel
        GridView = OrgView
      end
      object TransporterLevel: TcxGridLevel
        GridView = TransporterView
      end
      object PlacesLevel: TcxGridLevel
        GridView = PlacesView
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 229
    Width = 601
    Height = 35
    Align = alBottom
    BevelOuter = bvNone
    TabOrder = 1
    DesignSize = (
      601
      35)
    object OKButton: TcxButton
      Left = 434
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
      Left = 515
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
