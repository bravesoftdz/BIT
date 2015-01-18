object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1041#1048#1058' ('#1058#1086#1088#1075#1086#1074#1086'-'#1080#1085#1092#1086#1088#1084#1072#1094#1080#1086#1085#1085#1072#1103' '#1073#1072#1079#1072') '
  ClientHeight = 627
  ClientWidth = 1060
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 126
    Width = 1060
    Height = 478
    Align = alClient
    TabOrder = 0
    object PageControl: TcxPageControl
      Left = 1
      Top = 1
      Width = 1058
      Height = 476
      ActivePage = MainPage
      Align = alClient
      LookAndFeel.SkinName = 'Black'
      TabOrder = 0
      OnPageChanging = PageControlPageChanging
      ClientRectBottom = 471
      ClientRectLeft = 2
      ClientRectRight = 1053
      ClientRectTop = 24
      object MainPage: TcxTabSheet
        Caption = 'MainPage'
        ImageIndex = 0
        inline MainDataFrame: TMainDataFrame
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited MainGrid: TcxGrid
            Width = 1051
            Height = 421
            TabOrder = 4
            inherited MainGridView: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'TransporterCost'
                  Column = MainDataFrame.MainGridViewTransporterCost
                end
                item
                  Kind = skSum
                  FieldName = 'CommonProfit'
                  Column = MainDataFrame.MainGridViewCommonProfit
                end
                item
                  Kind = skSum
                  FieldName = 'ManagerProfit'
                  Column = MainDataFrame.MainGridViewManagerProfit
                end
                item
                  Kind = skSum
                  Column = MainDataFrame.MainGridViewSaleProfit
                end>
              inherited MainGridViewTransactDate: TcxGridDBColumn
                Properties.OnEditValueChanged = nil
              end
            end
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
          inherited cxImageList1: TcxImageList
            FormatVersion = 1
          end
        end
      end
      object PlanPage: TcxTabSheet
        Caption = 'PlanPage'
        ImageIndex = 2
        inline PlanFrame: TPlanFrame
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited cxGrid2: TcxGrid
            Height = 421
            ExplicitHeight = 421
            inherited PlanView: TcxGridTableView
              Styles.OnGetContentStyle = nil
            end
          end
          inherited cxSplitter1: TcxSplitter
            Height = 421
            ExplicitHeight = 421
          end
          inherited Chart1: TChart
            Width = 608
            Height = 421
            ExplicitWidth = 608
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
      end
      object ExpensesPage: TcxTabSheet
        Caption = 'ExpensesPage'
        ImageIndex = 3
        object cxSplitter1: TcxSplitter
          Left = 233
          Top = 0
          Width = 8
          Height = 447
          HotZoneClassName = 'TcxXPTaskBarStyle'
          Control = ExpenseFrame
        end
        object cxSplitter2: TcxSplitter
          Left = 551
          Top = 0
          Width = 8
          Height = 447
          HotZoneClassName = 'TcxXPTaskBarStyle'
          Control = SalaryFrame
        end
        inline FinExpFrame: TFinExpFrame
          Left = 559
          Top = 0
          Width = 300
          Height = 447
          Align = alLeft
          TabOrder = 2
          ExplicitLeft = 559
          ExplicitWidth = 300
          ExplicitHeight = 447
          inherited cxGrid1: TcxGrid
            Width = 300
            Height = 421
            ExplicitWidth = 300
            ExplicitHeight = 421
            inherited FinExpView: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'FinExpValue'
                  Column = FinExpFrame.FinExpViewFinExpValue
                end>
            end
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        object cxSplitter3: TcxSplitter
          Left = 859
          Top = 0
          Width = 8
          Height = 447
          HotZoneClassName = 'TcxXPTaskBarStyle'
          Control = FinExpFrame
        end
        inline InvExpFrame: TInvestExpFrame
          Left = 867
          Top = 0
          Width = 184
          Height = 447
          Align = alClient
          TabOrder = 4
          ExplicitLeft = 867
          ExplicitWidth = 184
          ExplicitHeight = 447
          inherited cxGrid1: TcxGrid
            Width = 184
            Height = 421
            ExplicitWidth = 184
            ExplicitHeight = 421
            inherited InvExpView: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'InvExpValue'
                  Column = InvExpFrame.InvExpViewInvExpValue
                end>
            end
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline SalaryFrame: TSalFrame
          Left = 241
          Top = 0
          Width = 310
          Height = 447
          Align = alLeft
          TabOrder = 5
          ExplicitLeft = 241
          ExplicitWidth = 310
          ExplicitHeight = 447
          inherited cxGrid1: TcxGrid
            Width = 310
            Height = 421
            ExplicitWidth = 310
            ExplicitHeight = 421
            inherited SalView: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'SalaryValue'
                  Column = SalaryFrame.SalViewSalaryValue
                end>
            end
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline ExpenseFrame: TExpFrame
          Left = 0
          Top = 0
          Width = 233
          Height = 447
          Align = alLeft
          TabOrder = 6
          ExplicitWidth = 233
          ExplicitHeight = 447
          inherited cxGrid1: TcxGrid
            Width = 233
            Height = 421
            ExplicitWidth = 233
            ExplicitHeight = 421
            inherited ExpView: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'ExpenseValue'
                  Column = ExpenseFrame.ExpViewExpenseValue
                end>
            end
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
      end
      object VinnikPage: TcxTabSheet
        Caption = 'VinnikPage'
        ImageIndex = 2
        inline VFrame: TVFrame
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited cxGrid1: TcxGrid
            Width = 1051
            Height = 421
            ExplicitWidth = 1051
            ExplicitHeight = 421
            inherited VinnikView: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'VCommonCost'
                  Column = VFrame.VinnikViewVCommonCost
                end>
            end
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
      end
      object GraphPage: TcxTabSheet
        Caption = 'GraphPage'
        ImageIndex = 4
        inline ProfitFrame: TProfitFrame
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited Chart1: TChart
            Width = 1051
            Height = 421
            ExplicitWidth = 1051
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline SaleProfitGraphFrame: TSaleProfitGraphForm
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited Chart1: TChart
            Width = 1051
            Height = 421
            ExplicitWidth = 1051
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline FinGraphFrame: TFinGraphForm
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited Chart1: TChart
            Width = 1051
            Height = 421
            ExplicitWidth = 1051
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline ExpensesGraphFrame: TExpensesGraphForm
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited Chart1: TChart
            Width = 1051
            Height = 421
            ExplicitWidth = 1051
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
          end
          inherited BarManager: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline ClearProfitGraphFrame: TClearProfitGraphForm
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited Chart1: TChart
            Width = 1051
            Height = 421
            ExplicitWidth = 1051
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline CommonProfitGraphFrame: TCommonProfitGraphForm
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 5
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited Chart1: TChart
            Width = 1051
            Height = 421
            ExplicitWidth = 1051
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline CommonProfitFinancesGraphFrame: TCommonProfitGraphFormFinances
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 6
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited Chart1: TChart
            Width = 1051
            Height = 421
            ExplicitWidth = 1051
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
            inherited Series3: TBarSeries
              Data = {
                000600000009AC1C5AD4D6644015AE47E11ADF674000000000000059405D8FC2
                F558C66A405939B4C8C6736C4049E17A14EE186B40}
            end
            inherited Series1: TBarSeries
              Data = {
                0006000000CDCCCCCCCC8B6440CDCCCCCCCC69624000000000003263409A9999
                9999C363403433333333D266409A99999999CE6940}
            end
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline CommonProfitSandGraphFrame: TCommonProfitGraphFormSand
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 7
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited Chart1: TChart
            Width = 1051
            Height = 421
            ExplicitWidth = 1051
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
      end
      object FinancePage: TcxTabSheet
        Caption = 'FinancePage'
        ImageIndex = 5
        inline FinanceFrame: TFinanceFrame
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited cxGrid2: TcxGrid
            Height = 421
            ExplicitHeight = 421
            inherited FinancesView: TcxGridDBTableView
              DataController.Summary.FooterSummaryItems = <
                item
                  Kind = skSum
                  FieldName = 'FinValue'
                  Column = FinanceFrame.FinancesViewFinValue
                end>
              Styles.OnGetContentStyle = nil
            end
          end
          inherited cxSplitter1: TcxSplitter
            Height = 421
            ExplicitHeight = 421
          end
          inherited Chart1: TChart
            Width = 608
            Height = 421
            ExplicitLeft = 443
            ExplicitWidth = 608
            ExplicitHeight = 421
            PrintMargins = (
              5
              15
              5
              15)
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
      end
      object CashesPage: TcxTabSheet
        Caption = 'CashesPage'
        ImageIndex = 6
        object cxSplitter4: TcxSplitter
          Left = 296
          Top = 0
          Width = 8
          Height = 447
          Control = CashPlacesFrame
        end
        inline CashPlacesFrame: TCashPlacesFrame
          Left = 0
          Top = 0
          Width = 296
          Height = 447
          Align = alLeft
          TabOrder = 1
          ExplicitWidth = 296
          ExplicitHeight = 447
          inherited cxGrid1: TcxGrid
            Width = 296
            Height = 421
            ExplicitWidth = 296
            ExplicitHeight = 421
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        inline CashTranspFrame: TCashTranspFrame
          Left = 304
          Top = 0
          Width = 289
          Height = 447
          Align = alLeft
          TabOrder = 2
          ExplicitLeft = 304
          ExplicitWidth = 289
          ExplicitHeight = 447
          inherited cxGrid1: TcxGrid
            Width = 289
            Height = 421
            ExplicitWidth = 289
            ExplicitHeight = 421
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
        object cxSplitter5: TcxSplitter
          Left = 593
          Top = 0
          Width = 8
          Height = 447
          Control = CashTranspFrame
        end
        inline CashOrgFrame: TCashOrgFrame
          Left = 601
          Top = 0
          Width = 450
          Height = 447
          Align = alClient
          TabOrder = 4
          ExplicitLeft = 601
          ExplicitWidth = 450
          ExplicitHeight = 447
          inherited cxGrid1: TcxGrid
            Width = 450
            Height = 421
            ExplicitWidth = 450
            ExplicitHeight = 421
          end
          inherited dxBarManager1: TdxBarManager
            Categories.ItemsVisibles = (
              2)
            Categories.Visibles = (
              True)
            DockControlHeights = (
              0
              0
              26
              0)
          end
        end
      end
      object CapitalPage: TcxTabSheet
        Caption = 'CapitalPage'
        ImageIndex = 7
        inline CapFrame: TCapitalFrame
          Left = 0
          Top = 0
          Width = 1051
          Height = 447
          Align = alClient
          TabOrder = 0
          ExplicitWidth = 1051
          ExplicitHeight = 447
          inherited cxGrid1: TcxGrid
            Width = 1051
            ExplicitWidth = 1051
            inherited CapitalView: TcxGridDBTableView
              inherited CapitalViewname: TcxGridDBColumn
                Width = 83
              end
              inherited CapitalViewJan: TcxGridDBColumn
                Width = 80
              end
              inherited CapitalViewFeb: TcxGridDBColumn
                Width = 81
              end
              inherited CapitalViewMar: TcxGridDBColumn
                Width = 81
              end
              inherited CapitalViewApr: TcxGridDBColumn
                Width = 81
              end
              inherited CapitalViewMay: TcxGridDBColumn
                Width = 79
              end
              inherited CapitalViewJun: TcxGridDBColumn
                Width = 81
              end
              inherited CapitalViewJul: TcxGridDBColumn
                Width = 81
              end
              inherited CapitalViewAug: TcxGridDBColumn
                Width = 80
              end
              inherited CapitalViewSep: TcxGridDBColumn
                Width = 80
              end
              inherited CapitalViewOct: TcxGridDBColumn
                Width = 81
              end
              inherited CapitalViewNov: TcxGridDBColumn
                Width = 81
              end
              inherited CapitalViewDcm: TcxGridDBColumn
                Width = 80
              end
            end
          end
          inherited cxSplitter1: TcxSplitter
            Width = 1051
            ExplicitWidth = 1051
          end
          inherited Chart1: TChart
            Width = 1051
            Height = 216
            ExplicitWidth = 1051
            ExplicitHeight = 216
            PrintMargins = (
              5
              15
              5
              15)
          end
        end
      end
    end
  end
  object dxRibbonStatusBar1: TdxRibbonStatusBar
    Left = 0
    Top = 604
    Width = 1060
    Height = 23
    Panels = <>
    Ribbon = Ribbon
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
  end
  object Ribbon: TdxRibbon
    Left = 0
    Top = 0
    Width = 1060
    Height = 126
    BarManager = dxBarManager1
    ColorSchemeName = 'Black'
    Contexts = <>
    TabOrder = 6
    TabStop = False
    OnTabChanged = RibbonTabChanged
    object DataTab: TdxRibbonTab
      Active = True
      Caption = #1055#1088#1086#1076#1072#1078#1080
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar1'
        end
        item
          ToolbarName = 'MainBarBlock'
        end
        item
          ToolbarName = 'dxBarManager1Bar2'
        end>
      Index = 0
    end
    object PlansTab: TdxRibbonTab
      Caption = #1055#1083#1072#1085#1099
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar4'
        end>
      Index = 1
    end
    object ExpensesTab: TdxRibbonTab
      Caption = #1056#1072#1089#1093#1086#1076#1099
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar7'
        end
        item
          ToolbarName = 'dxBarManager1Bar9'
        end>
      Index = 2
    end
    object VinniksTab: TdxRibbonTab
      Caption = #1042#1080#1085#1085#1080#1082#1086#1074#1086
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar6'
        end>
      Index = 3
    end
    object GraphTab: TdxRibbonTab
      Caption = #1043#1088#1072#1092#1080#1082#1080
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar8'
        end
        item
          ToolbarName = 'dxBarManager1Bar10'
        end>
      Index = 4
    end
    object FinanceTab: TdxRibbonTab
      Caption = #1060#1080#1085#1072#1085#1089#1099
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar3'
        end>
      Index = 5
    end
    object CashesTab: TdxRibbonTab
      Caption = #1053#1072#1083#1080#1095#1085#1099#1081' '#1088#1072#1089#1095#1077#1090
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar11'
        end
        item
          ToolbarName = 'dxBarManager1Bar13'
        end>
      Index = 6
    end
    object CapitalTab: TdxRibbonTab
      Caption = #1050#1072#1087#1080#1090#1072#1083#1080#1079#1072#1094#1080#1103
      Groups = <
        item
          ToolbarName = 'dxBarManager1Bar12'
        end>
      Index = 7
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
    Left = 888
    Top = 88
    DockControlHeights = (
      0
      0
      0
      0)
    object MainViewBar: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'MainEditBar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1010
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton7'
        end
        item
          Visible = True
          ItemName = 'dxBarButton4'
        end
        item
          Visible = True
          ItemName = 'dxBarButton6'
        end
        item
          Visible = True
          ItemName = 'dxBarButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarButton5'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar1: TdxBar
      Caption = #1044#1080#1072#1087#1072#1079#1086#1085
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1094
      FloatTop = 8
      FloatClientWidth = 129
      FloatClientHeight = 73
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton12'
        end
        item
          Visible = True
          ItemName = 'ChangeModeBox'
        end
        item
          Visible = True
          ItemName = 'dxBarButton23'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'BarBeginDateEdit'
        end
        item
          Visible = True
          ItemName = 'BarEndDateEdit'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar2: TdxBar
      Caption = #1054#1090#1095#1077#1090#1099
      CaptionButtons = <>
      DockedLeft = 432
      DockedTop = 0
      FloatLeft = 1094
      FloatTop = 8
      FloatClientWidth = 160
      FloatClientHeight = 270
      ItemLinks = <
        item
          Visible = True
          ItemName = 'SaleReportButton'
        end
        item
          Visible = True
          ItemName = 'BuyingReportButton'
        end
        item
          Visible = True
          ItemName = 'BuyingSnabReportButton'
        end
        item
          Visible = True
          ItemName = 'TranspReportBtn'
        end
        item
          Visible = True
          ItemName = 'ManagerReportBtn'
        end
        item
          Visible = True
          ItemName = 'CrossReportButton'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton6'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar4: TdxBar
      Caption = #1055#1083#1072#1085#1099
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 918
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton7'
        end
        item
          Visible = True
          ItemName = 'PrintPlanBtn'
        end
        item
          Visible = True
          ItemName = 'PlanBeginDateEdit'
        end
        item
          Visible = True
          ItemName = 'PlanEndDateEdit'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton8'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton9'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar5: TdxBar
      Caption = 'PlanEditBar'
      CaptionButtons = <>
      DockedDockingStyle = dsNone
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsNone
      FloatLeft = 1094
      FloatTop = 7
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton14'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarManager1Bar6: TdxBar
      Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1042#1080#1085#1085#1080#1082#1086#1074#1086
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1094
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton17'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 31
          Visible = True
          ItemName = 'ChangeModeVinnik'
        end
        item
          Visible = True
          ItemName = 'dxBarButton25'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 124
          Visible = True
          ItemName = 'VBeginDateEdit'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 122
          Visible = True
          ItemName = 'VEndDateEdit'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar7: TdxBar
      Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1088#1072#1089#1093#1086#1076#1086#1074
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1094
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton19'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 35
          Visible = True
          ItemName = 'ChangeModeExp1'
        end
        item
          Visible = True
          ItemName = 'dxBarButton24'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'ExpBeginDateEdit'
        end
        item
          Visible = True
          ItemName = 'ExpEndDateEdit'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar3: TdxBar
      Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1092#1080#1085#1072#1085#1089#1086#1074
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1094
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton20'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 31
          Visible = True
          ItemName = 'ChangeModeFinance'
        end
        item
          Visible = True
          ItemName = 'dxBarButton26'
        end
        item
          BeginGroup = True
          UserDefine = [udWidth]
          UserWidth = 125
          Visible = True
          ItemName = 'FinFrameBeginDate'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 124
          Visible = True
          ItemName = 'FinFrameEndDate'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar8: TdxBar
      Caption = #1043#1088#1072#1092#1080#1082#1080
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1094
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'ProfitGraphBtn'
        end
        item
          Visible = True
          ItemName = 'SaleProfitGraphBtn'
        end
        item
          Visible = True
          ItemName = 'FinProfitGraphBtn'
        end
        item
          Visible = True
          ItemName = 'CommonProfitGraphBtn'
        end
        item
          Visible = True
          ItemName = 'ExpensesGraphBtn'
        end
        item
          Visible = True
          ItemName = 'ClearProfitsGraphBtn'
        end
        item
          Visible = True
          ItemName = 'ClearProfitsSandGraphBtn'
        end
        item
          Visible = True
          ItemName = 'ClearProfitsFinGraphBtn'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar9: TdxBar
      Caption = #1054#1090#1095#1077#1090#1099' '#1087#1086' '#1088#1072#1089#1093#1086#1076#1072#1084
      CaptionButtons = <>
      DockedLeft = 340
      DockedTop = 0
      FloatLeft = 1094
      FloatTop = 8
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'SumExpReportBtn'
        end
        item
          Visible = True
          ItemName = 'ExpReportBtn'
        end
        item
          Visible = True
          ItemName = 'SalExpReportBtn'
        end
        item
          Visible = True
          ItemName = 'FinExpReportBtn'
        end
        item
          Visible = True
          ItemName = 'InvExpReportBtn'
        end
        item
          Visible = True
          ItemName = 'dxBarLargeButton12'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar10: TdxBar
      Caption = #1056#1072#1089#1095#1077#1090
      CaptionButtons = <>
      DockedLeft = 644
      DockedTop = 0
      FloatLeft = 704
      FloatTop = 204
      FloatClientWidth = 51
      FloatClientHeight = 22
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton10'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar11: TdxBar
      Caption = #1044#1080#1072#1087#1072#1079#1086#1085' '#1085#1072#1083#1080#1095#1085#1099#1081' '#1088#1072#1089#1095#1077#1090
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1094
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarButton28'
        end
        item
          UserDefine = [udWidth]
          UserWidth = 23
          Visible = True
          ItemName = 'CB_cash_filter'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'CashBeginDateEdit'
        end
        item
          Visible = True
          ItemName = 'CashEndDateEdit'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar12: TdxBar
      Caption = #1050#1072#1087#1080#1090#1072#1083#1080#1079#1072#1094#1080#1103
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1093
      FloatTop = 10
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton11'
        end
        item
          Visible = True
          ItemName = 'CapitalYearEdit'
        end
        item
          Visible = True
          ItemName = 'RefreshCapitaFrameBtn'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object MainBarBlock: TdxBar
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1082#1072
      CaptionButtons = <>
      DockedLeft = 336
      DockedTop = 0
      FloatLeft = 937
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarLargeButton14'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object dxBarManager1Bar13: TdxBar
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 271
      DockedTop = 0
      FloatLeft = 1094
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = False
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton2: TdxBarButton
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
      Category = 0
      Hint = #1048#1079#1084#1077#1085#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton3: TdxBarButton
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
    end
    object DeleteAction: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton4: TdxBarButton
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 0
    end
    object dxBarButton5: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton6: TdxBarButton
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 1
    end
    object dxBarButton7: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Visible = ivAlways
      ImageIndex = 2
    end
    object cxBarEditItem1: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxShellComboBoxProperties'
    end
    object dxBarButton8: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Visible = ivAlways
      ImageIndex = 4
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarButton9: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cxBarEditItem2: TcxBarEditItem
      Caption = #1089':  '
      Category = 0
      Hint = #1089':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cxBarEditItem3: TcxBarEditItem
      Caption = #1087#1086':'
      Category = 0
      Hint = #1087#1086':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.ShowTime = False
    end
    object cxBarEditItem4: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxImageProperties'
    end
    object cxBarEditItem5: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxButtonEditProperties'
      Properties.Buttons = <
        item
          Default = True
          Kind = bkEllipsis
        end>
    end
    object dxBarButton10: TdxBarButton
      Category = 0
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0003000000080000000000000000000000090000000D0000000D0000000D0000
        000D0000000C0000000000000000000000060000000300000000000000000000
        00100000000D0A0C2F7F10134CB4010102300000002C00000133000001330000
        0030000000200D0F3E9D0F1142A1000000140000000E00000000000000000000
        00000B0D34611A1F82FF191E82FF131761BE0101020200000000000000000000
        00000E11478B191E82FF191E82FF11144E970001020200000000000000000101
        060A191F89FF191F89FF191F89FF191F89FF131767BF00000102000000000E12
        4C8D191F88FF191F89FF191F89FF191F89FF06071D3600000000000000000000
        00000D1049801A1F91FF1A1F91FF1A1F91FF1A1F90FF131666B30F114F8A1A1F
        90FF1A1F91FF1A1F91FF1A1F91FF121766B40101050800000000000000000000
        0000000000000E114D811A2099FF1A2099FF1A2099FF1A2098FF1A2098FF1A20
        99FF1A2099FF1A2099FF13176BB4000000000000000000000000000000000000
        000000000000000000000E1150801A209FFC1A20A1FF1A20A1FF1A20A1FF1A20
        A1FF1A20A1FF12176FB100000000000000000000000000000000000000000000
        0000000000000000000000000000151B83C71B21A8FF1B21A8FF1B21A8FF1B21
        A8FF191F9DEE0101030400000000000000000000000000000000000000000000
        000000000000000000000F13628D1B22B0FF1B22B0FF1A21B0FF1A20AFFF1B22
        B0FF1B22B0FF141983BD01010305000000000000000000000000000000000000
        0000000000000F13668D1B22B8FF1B22B9FF1A20B8FF1E27BCFF212ABEFF1920
        B7FF1B22B9FF1B22B8FF14198BBF010103040000000000000000000000000000
        01010F12698C1C23C0FF1C23C0FF1A21C0FF1E26C2FF1E2686A8181F647C212B
        C5FF1A21BFFF1C23C0FF1C23C0FF141990BF0101080B00000000000000000203
        080A232CCBFF1B21C7FF1B21C7FF1E27CAFF202894B40000000000000000181F
        6B81222BCBFF1A21C7FF1A21C7FF2129CAFF090B2B3500000000000000000000
        000013184B582530D4FF202AD2FF202998B40000000000000000000000000000
        0000181F6D81232DD3FF222CD3FF1B23778D0101010100000000000000000000
        0000000000000F13434D19207283000000000000000000000000000000000000
        000000000000141A5B69161C6271000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton11: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Category = 0
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0003000000080000000000000000000000090000000D0000000D0000000D0000
        000D0000000C0000000000000000000000060000000300000000000000000000
        00100000000D0A0C2F7F10134CB4010102300000002C00000133000001330000
        0030000000200D0F3E9D0F1142A1000000140000000E00000000000000000000
        00000B0D34611A1F82FF191E82FF131761BE0101020200000000000000000000
        00000E11478B191E82FF191E82FF11144E970001020200000000000000000101
        060A191F89FF191F89FF191F89FF191F89FF131767BF00000102000000000E12
        4C8D191F88FF191F89FF191F89FF191F89FF06071D3600000000000000000000
        00000D1049801A1F91FF1A1F91FF1A1F91FF1A1F90FF131666B30F114F8A1A1F
        90FF1A1F91FF1A1F91FF1A1F91FF121766B40101050800000000000000000000
        0000000000000E114D811A2099FF1A2099FF1A2099FF1A2098FF1A2098FF1A20
        99FF1A2099FF1A2099FF13176BB4000000000000000000000000000000000000
        000000000000000000000E1150801A209FFC1A20A1FF1A20A1FF1A20A1FF1A20
        A1FF1A20A1FF12176FB100000000000000000000000000000000000000000000
        0000000000000000000000000000151B83C71B21A8FF1B21A8FF1B21A8FF1B21
        A8FF191F9DEE0101030400000000000000000000000000000000000000000000
        000000000000000000000F13628D1B22B0FF1B22B0FF1A21B0FF1A20AFFF1B22
        B0FF1B22B0FF141983BD01010305000000000000000000000000000000000000
        0000000000000F13668D1B22B8FF1B22B9FF1A20B8FF1E27BCFF212ABEFF1920
        B7FF1B22B9FF1B22B8FF14198BBF010103040000000000000000000000000000
        01010F12698C1C23C0FF1C23C0FF1A21C0FF1E26C2FF1E2686A8181F647C212B
        C5FF1A21BFFF1C23C0FF1C23C0FF141990BF0101080B00000000000000000203
        080A232CCBFF1B21C7FF1B21C7FF1E27CAFF202894B40000000000000000181F
        6B81222BCBFF1A21C7FF1A21C7FF2129CAFF090B2B3500000000000000000000
        000013184B582530D4FF202AD2FF202998B40000000000000000000000000000
        0000181F6D81232DD3FF222CD3FF1B23778D0101010100000000000000000000
        0000000000000F13434D19207283000000000000000000000000000000000000
        000000000000141A5B69161C6271000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      GlyphLayout = glBottom
      HotGlyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0003000000080000000000000000000000090000000D0000000D0000000D0000
        000D0000000C0000000000000000000000060000000300000000000000000000
        00100000000D0A0C2F7F10134CB4010102300000002C00000133000001330000
        0030000000200D0F3E9D0F1142A1000000140000000E00000000000000000000
        00000B0D34611A1F82FF191E82FF131761BE0101020200000000000000000000
        00000E11478B191E82FF191E82FF11144E970001020200000000000000000101
        060A191F89FF191F89FF191F89FF191F89FF131767BF00000102000000000E12
        4C8D191F88FF191F89FF191F89FF191F89FF06071D3600000000000000000000
        00000D1049801A1F91FF1A1F91FF1A1F91FF1A1F90FF131666B30F114F8A1A1F
        90FF1A1F91FF1A1F91FF1A1F91FF121766B40101050800000000000000000000
        0000000000000E114D811A2099FF1A2099FF1A2099FF1A2098FF1A2098FF1A20
        99FF1A2099FF1A2099FF13176BB4000000000000000000000000000000000000
        000000000000000000000E1150801A209FFC1A20A1FF1A20A1FF1A20A1FF1A20
        A1FF1A20A1FF12176FB100000000000000000000000000000000000000000000
        0000000000000000000000000000151B83C71B21A8FF1B21A8FF1B21A8FF1B21
        A8FF191F9DEE0101030400000000000000000000000000000000000000000000
        000000000000000000000F13628D1B22B0FF1B22B0FF1A21B0FF1A20AFFF1B22
        B0FF1B22B0FF141983BD01010305000000000000000000000000000000000000
        0000000000000F13668D1B22B8FF1B22B9FF1A20B8FF1E27BCFF212ABEFF1920
        B7FF1B22B9FF1B22B8FF14198BBF010103040000000000000000000000000000
        01010F12698C1C23C0FF1C23C0FF1A21C0FF1E26C2FF1E2686A8181F647C212B
        C5FF1A21BFFF1C23C0FF1C23C0FF141990BF0101080B00000000000000000203
        080A232CCBFF1B21C7FF1B21C7FF1E27CAFF202894B40000000000000000181F
        6B81222BCBFF1A21C7FF1A21C7FF2129CAFF090B2B3500000000000000000000
        000013184B582530D4FF202AD2FF202998B40000000000000000000000000000
        0000181F6D81232DD3FF222CD3FF1B23778D0101010100000000000000000000
        0000000000000F13434D19207283000000000000000000000000000000000000
        000000000000141A5B69161C6271000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object cxBarEditItem6: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cxBarEditItem7: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarButton12: TdxBarButton
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Category = 0
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Visible = ivAlways
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0003000000080000000000000000000000090000000D0000000D0000000D0000
        000D0000000C0000000000000000000000060000000300000000000000000000
        00100000000D0A0C2F7F10134CB4010102300000002C00000133000001330000
        0030000000200D0F3E9D0F1142A1000000140000000E00000000000000000000
        00000B0D34611A1F82FF191E82FF131761BE0101020200000000000000000000
        00000E11478B191E82FF191E82FF11144E970001020200000000000000000101
        060A191F89FF191F89FF191F89FF191F89FF131767BF00000102000000000E12
        4C8D191F88FF191F89FF191F89FF191F89FF06071D3600000000000000000000
        00000D1049801A1F91FF1A1F91FF1A1F91FF1A1F90FF131666B30F114F8A1A1F
        90FF1A1F91FF1A1F91FF1A1F91FF121766B40101050800000000000000000000
        0000000000000E114D811A2099FF1A2099FF1A2099FF1A2098FF1A2098FF1A20
        99FF1A2099FF1A2099FF13176BB4000000000000000000000000000000000000
        000000000000000000000E1150801A209FFC1A20A1FF1A20A1FF1A20A1FF1A20
        A1FF1A20A1FF12176FB100000000000000000000000000000000000000000000
        0000000000000000000000000000151B83C71B21A8FF1B21A8FF1B21A8FF1B21
        A8FF191F9DEE0101030400000000000000000000000000000000000000000000
        000000000000000000000F13628D1B22B0FF1B22B0FF1A21B0FF1A20AFFF1B22
        B0FF1B22B0FF141983BD01010305000000000000000000000000000000000000
        0000000000000F13668D1B22B8FF1B22B9FF1A20B8FF1E27BCFF212ABEFF1920
        B7FF1B22B9FF1B22B8FF14198BBF010103040000000000000000000000000000
        01010F12698C1C23C0FF1C23C0FF1A21C0FF1E26C2FF1E2686A8181F647C212B
        C5FF1A21BFFF1C23C0FF1C23C0FF141990BF0101080B00000000000000000203
        080A232CCBFF1B21C7FF1B21C7FF1E27CAFF202894B40000000000000000181F
        6B81222BCBFF1A21C7FF1A21C7FF2129CAFF090B2B3500000000000000000000
        000013184B582530D4FF202AD2FF202998B40000000000000000000000000000
        0000181F6D81232DD3FF222CD3FF1B23778D0101010100000000000000000000
        0000000000000F13434D19207283000000000000000000000000000000000000
        000000000000141A5B69161C6271000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = cxImage1Click
    end
    object ChangeModeBox: TcxBarEditItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Category = 0
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Visible = ivAlways
      Width = 30
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = ChangeModeBoxPropertiesEditValueChanged
      InternalEditValue = False
    end
    object SaleReportButton: TdxBarLargeButton
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1088#1086#1076#1072#1078#1072#1084
      Category = 0
      Hint = #1054#1090#1095#1077#1090' '#1087#1086' '#1087#1088#1086#1076#1072#1078#1072#1084
      Visible = ivAlways
      Glyph.Data = {
        36400000424D3640000000000000360000002800000040000000400000000100
        2000000000000040000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001070C0E062A464E0B48747E0D4B777E0E4E
        797E0F507B7E08283D3E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000051B2B2E07263B3E07273C3E02090E0E00000000000000000000
        000000000000000000000522383E117DD2EF22A6EEFF3CCEF8FF44D4FAFF4CDA
        FBFF4ED9FBFF3EC5F9FF218CC9CF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000060B0E0748
        869F1D9BE9FF2BAEF0FF39C1F6FF3FC7F8FF34B9F8FF2497D9DF0D456B6E010D
        191E085194AF1E9CEAFF2CB0F1FF3AC2F7FF40C8F9FF30B4F7FF28AFF8FF39CF
        FCFF4BE6FFFF55ECFFFF59EBFEFF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000004F4F4F5E0C0C0C0E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000123373E17BE
        F8FF29D3FFFF35DAFFFF41E1FFFF4CE7FFFF56ECFFFF5FF1FFFF4DD8FBFF0348
        707E1CC7FBFF2BD5FFFF38DCFFFF43E2FFFF4EE8FFFF58EEFFFF61F2FFFF40D4
        FBFF23C4EFEF2696AFAF15464E4E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002625252EADACABCFD8D7D6FFD3D2D2EF6D6D6D7E0C0C0C0E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000161E1E00A5
        DFDF04BFFFFF0CC3FFFF18CAFFFF25D1FFFF32D9FFFF3EDFFFFF2C828F8F0022
        2E2E00A5DFDF05C0FFFF0EC5FFFF1BCCFFFF28D3FFFF35DAFFFF40E1FFFF2773
        7E7E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006766
        667ED6D5D4FFD4D3D2FFD9D8D7FFDFDEDEFFE3E2E2FFD1D0D0EF6D6D6D7E1A1A
        1A1E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000161E1E002E3E3E002E3E3E022F3E3E06313E3E020B0E0E000000000000
        00000000000000222E2E056AACBF0C9FEEFF21B0F2FF29B7F5FF2DB3F6FF30B5
        F8FF1D88C9CF0B3C5B5E00000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001818181EAAAAA9CFD6D5
        D4FFD4D3D2FFD6D5D4FFDEDDDDFFDFDEDEFFE1E0E0FFDFDEDEFFE2E1E1FFDFDE
        DEFF8A89899F1A1A1A1E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000527444E0B4C808F116DB0BF1371B4BF1576B7BF13649A9F0B3C
        5C5E02090E0E0010242E149FE9FF1FA4ECFF21A1EDFF1C99EFFF23A4F3FF2EB3
        F7FF3AC2FAFF39C0F9FF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000005A59596EC7C6C5EFD6D5D4FFD6D5
        D4FFD4D3D2FFD6D5D4FFD4D3D2FFE2E1E1FFE1E0E0FFE1E0E0FFE2E1E1FFE2E1
        E1FFE2E1E1FFE1E0E0FF6694A5AF32555E5E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000003325B6E1798E6FF23A7EEFF35BEF5FF3BC4F8FF40C9FAFF3AC1F9FF3FC6
        FAFF1F81B8BF063A626E1192E3FF23AAEEFF29AFF2FF29ACF3FF2DB1F6FF3DC5
        FAFF40C7FBFF3EC5F9FF0B48757E0D4B777E0E4E797E0F507B7E061E2D2E0000
        000000000000000000000B0B0B0E9D9D9DBFD6D5D4FFD4D3D2FFD6D5D4FFD4D3
        D2FFD6D5D4FFD6D5D4FFD8D7D7FFE2E1E1FFDFDEDEFFE2E1E1FFDFDEDEFFE1E0
        E0FFE1E0E0FFDFDEDEFF8DD3EFFF82E1FFFF72C4DFDF27444E4E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000003436E7E199AE6FF27ADEFFF33BCF4FF39C2F7FF3FC7F9FF3FC6FAFF3FC6
        FAFF37BEF8FF2FB8F2FF1191E2FF26B3F1FF32BEF5FF47D7FBFF4EDCFCFF45CF
        FAFF4CD6FBFF34BAF8FF32BBF4FF38C1F7FF3EC7F9FF47D0FBFF3EC5F9FF155E
        8A8F00000000403F3F4EC5C4C3EFD6D5D4FFD6D5D4FFD4D3D2FFD6D5D4FFD8D7
        D7FFD6D5D4FFD6D5D4FFDFDEDDFFE6E5E5FFDFDEDEFFE2E1E1FFE1E0E0FFE2E1
        E1FFDFDEDEFFE3E2E2FF87CDEFFF79D9FFFF7AD9FFFF94DBF7FFA8A7A7BF3635
        353E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000349717E138DE2FF27ACEEFF31BAF3FF38C0F5FF3DC5F8FF43CAFAFF31B6
        F8FF33B8F7FF1EA5F3FF0E8DE2FF1E9DE9FF2FB8F2FF36BEF5FF3CC4F7FF41C9
        F9FF36BCF9FF2FB5F9FF33BBF4FF39C1F6FF3FC6F8FF39BFF8FF31B7F9FF399E
        C8CF5C5B5B6EC7C6C5EFD6D5D4FFD6D5D4FFD6D5D4FFD6D5D4FFD6D5D4FFD4D3
        D2FFD6D5D4FFEAE6E2FFF2D5B5FFF3DDC4FFF0ECEAFFE6E5E5FFE1E0E0FFE2E1
        E1FFDFDEDEFFE1E0E0FF9DD2EDFF71D1FFFF71D1FFFF7ED2FAFFE1E0E0FFDFDE
        DEFFB4B3B3CF5151515E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000024D737E18CAFFFF25D1FFFF32D8FFFF3EDFFFFF49E5FFFF53EBFFFF5DF0
        FFFF4AD7FBFF2FB3F1FF12C1FBFF21CFFFFF2ED6FFFF3ADDFFFF46E3FFFF50E9
        FFFF5AEFFFFF58E7FDFF21A3EFFF26AAF2FF2AAFF6FF2EB5F8FF46D1FCFF6DD5
        EFFFDCDBDAFFD6D5D4FFD6D5D4FFD6D5D4FFD4D3D2FFD6D5D4FFD6D5D4FFDDDC
        DBFFEFE3D4FFF0C592FFF2C693FFF4CA9AFFF6D0A7FFF6E2CEFFF2EEECFFE8E7
        E7FFE3E2E2FFE1E0E0FFA6D5EFFF6AC9FFFF6AC9FFFF6AC9FFFFE2E1E1FFE2E1
        E1FFE3E2E2FFE1E0E0FFC5C4C4DF5151515E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000222E2E008EBFBF02BEFFFF09C2FFFF15C8FFFF22CFFFFF2FD7FFFF3EDF
        FFFF52E7FEFF4BD7FBFF26D2FFFF01BDFFFF07C1FFFF11C6FFFF1ECDFFFF2BD5
        FFFF37DBFFFF3AD2FAFF3DD1FAFF46D7FBFF4DDCFCFF4FDBFCFF4BD5FBFF5FC3
        F0FFDDDCDCFFD9D8D7FFD4D3D2FFD6D5D4FFD6D5D4FFD6D5D4FFE7E3DFFFEFD3
        B2FFEEBF87FFF0C38EFFCEB279FF878C44FFF7D0A6FFFAD4AEFFFCDABAFFFAE5
        D2FFF3EEEAFFE8E7E7FFA9D8F1FF64C2FFFF64C3FFFF64C3FFFFDFDEDEFFDFDE
        DEFFDFDEDEFFE1E0E0FFE1E0E0FFDFDEDEFFC5C4C4DF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000002E3E3E046E999F0D97E9FF1A9BEBFF27A8
        F1FF2BAEF4FF2FB4F7FF2EB4F8FF39C1FAFF27899E9F002E3E3E012E3E3E045B
        858F108CE1FF26ACEEFF30B9F3FF37BFF5FF3DC5F7FF42CAFAFF31B6F8FF5BC0
        EEFFD9D8D8FFD9D8D7FFD6D5D4FFD6D5D4FFD2D1D0FFE0DCD8FFEBC290FFEDBD
        82FFC0A767FFB5A363FF4A6813FFB9A96FFF888E49FF7D8942FFF0D3AFFFFFDE
        BFFFFFE0C0FFDEE3DDFF87D5FBFF6AC8FFFF5EBDFFFF5EBDFFFFD2DDE5FFE2E1
        E1FFE1E0E0FFE2E1E1FFE2E1E1FFE2E1E1FFD1D0D0EF00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000004446E7E1FB6F3FF2DBFF6FF31BD
        F6FF38C2F8FF3DC8FAFF4BD6FCFF50DBFCFF1C5D7B7E0000000000000000024C
        737E17A9EFFF1A9AEAFF1F9EEEFF2CAEF4FF2AAEF6FF2DB3F7FF3DC6FBFF74DD
        F3FFD9D8D7FFD9D8D8FFD6D5D4FFD2D1D0FFD6D5D4FFE2E1E1FFE2DEDAFFE5CD
        B0FF6B7E35FF566F1CFFD0B67FFF56701EFFA29F62FF8A914EFFBEB483FFCBBE
        90FFAED2D9FF6BCDF8FF8CEBFEFF9AF7FFFF8DEAFFFF6CC9FFFFBFD5E7FFDFDE
        DEFFE1E0E0FFDFDEDEFFDFDEDEFFE1E0E0FFDFDEDEFF0C0C0C0E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000023E6C7E199BE7FF2FBDF3FF3FD0
        F9FF47D6FAFF4EDCFBFF4AD4FBFF3AC1F9FF16587A7E00000000000000000230
        5A6E1AADEFFF31C8F8FF31BDF6FF38C2F8FF3DC8FAFF4EDBFCFF50DBFCFF63C7
        F0FFD6D5D5FFD7D6D5FFD2D1D0FFD6D5D4FFD6D5D4FFE0DFDEFFDFDEDEFFE2E1
        E1FFDFDEDEFFD9CDB8FFC1B17EFF898F4AFFD4BE8EFF4B6A17FF4F7735FF4FAB
        C1FF71D3F8FF8CEBFFFF91EFFFFF96F4FFFF9BF8FFFFCEF5E3FFF6F1E5FFEDEC
        ECFFE5E4E4FFE2E1E1FFE2E1E1FFE2E1E1FFE2E1E1FF2828282E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000652767E1394E6FF1F9EEBFF26A6
        EFFF2AACF3FF2EB2F6FF30B6F8FF34BBFAFF256A7D7E00000000000000003671
        96AF118BE1FF27B0EFFF3BCAF7FF47D6FAFF4FDCFBFF45CEFAFF3AC1F9FF5BC0
        EEFFD2D1D0FFD4D3D2FFD6D5D4FFD6D5D4FFD6D5D4FFDFDEDEFFE1E0E0FFE2E1
        E1FFE2E1E1FFE2E1E1FFE1E0E0FF9EAD8AFF6D823DFF6FA292FF52B6DCFF77D8
        FBFF84E3FFFF89E7FFFF8EECFFFF80D4CFFFEBEDCCFFFFEDC1FFFFEFC1FFFCF1
        CDFFF7F2DFFFEDECECFFE3E2E2FFDFDEDEFFDFDEDEFF2828282E000000000000
        00000000000000000000000000000000000000000000000000003939393E4848
        474E7474737E7474737E8383838FAFAFAFBF5EA9CDDF22CAFCFF32D8FFFF3DDF
        FFFF49E5FFFF53EBFFFF5CF0FFFF5FEFFEFF9ADFF1FFDBDBDAEFAFAFAFBF6DB8
        DEFF149DEAFF1A9AE9FF26A6EFFF2AACF3FF2EB2F6FF2BB0F7FF34BBFAFF6ED7
        F2FFD6D5D4FFD6D5D4FFD6D5D4FFD6D5D4FFD4D3D2FFDAD9D9FFE2E1E1FFDFDE
        DEFFE1E0E0FFE1E0E0FFDFDEDEFFDFDEDEFFBED5E0FF78D7F7FF7ADAFDFF7CDB
        FFFF80DFFFFF85E4FFFFB0E0D7FF587524FFA5AC6CFF657F30FFB2B878FFFFF2
        C1FFFFF4C1FFFDF5C7FFF7F4E0FFEEEDEDFFE6E5E5FF3737373E000000000000
        00000000000000000000000000005858585EBDBCBCCFEBEBEAFFEFEEEEFFF0F0
        EFFFEFEFEEFFEEEEEDFFEFEFEEFFF0F0EFFFA5E0F4FF02BEFFFF09C2FFFF14C8
        FFFF22CFFFFF2FD7FFFF3BDDFFFF46E4FFFFC0EFF4FFEEEEEDFFF0EFEFFF7BAF
        D6FF1AB6F3FF32D8FFFF3DDFFFFF49E5FFFF53EBFFFF5CF0FFFF5FEFFEFF64CA
        EEFFD6D5D4FFD6D5D4FFD4D3D2FFD6D5D4FFD6D5D4FFDAD9D8FFE2E1E1FFE1E0
        E0FFE2E1E1FFDFDEDEFFE3E2E2FFE2E1E1FFC1D7E3FF77D6FAFF80DFFFFF7FDE
        FFFF85D4EAFF93B188FF587524FF4B6C18FF7E9148FFD8D39CFF658030FFFFF2
        C1FFFFF5C1FFFFF6C1FFFCF7CEFFF3F2EFFF8888888F0D0D0D0E000000000000
        0000000000000D0D0D0EBEBDBCCFE3E3E2FFEBEAE9FFF2F1F1FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFE3EEF2FF3CA5EBFF5BC6
        F5FF7BD8F8FF80DBF8FFB0E6F6FFE6F0F2FFF3F2F2FFF3F2F2FFF3F2F2FFA2D1
        E1FF02BEFFFF09C2FFFF14C8FFFF22CFFFFF2FD7FFFF3BDDFFFF46E4FFFF8DE3
        EEFFD6D5D4FFD4D3D2FFD6D5D4FFD6D5D4FFDAD9D9FFEBEAEAFFE6E5E5FFE1E0
        E0FFE2E1E1FFDFDEDEFFE1E0E0FFDFDEDEFFE1E0E0FF72D1FBFF77D7FFFF78D7
        FFFFB2DBECFFBEC5B4FFBFC09AFF657F30FFF2E4B4FF72893CFFA5B06CFFFFF3
        C1FFFFF5C1FFF9F4D9FFD5D4D4DF3B3B3B3E0000000000000000000000000000
        00000D0D0D0EBCBBBACFE7E6E6FFF0EFEFFFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFE3E9F0FFB6D1ECFF88B8E8FF006DDCFF5B9F
        E4FF3C8FE2FF1E7FDFFFD4E1EFFFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFE1E0
        E0FFC9D4D7FF84CAE2FF77D5F6FF74C5D5FF73CEEBFF83D0E5FFB5D4DBFFD6D5
        D4FFD4D3D2FFD6D5D4FFD8D7D7FFE3E2E2FFF1DABFFFF2C999FFF3DEC6FFF1EE
        EBFFE8E7E7FFE3E2E2FFE1E0E0FFE1E0E0FFE2E1E1FF6CCBFCFF6FCFFFFF6FCF
        FFFFA8D8F0FFE3E2E2FFDFDEDEFFCBD0C4FF728B52FFB2B878FFFFF2C1FFFCF3
        CAFFF5F2E8FFA7A6A6AF0D0D0D0E000000000000000000000000000000000000
        0000A1A1A0AFE6E6E5FFF2F1F1FFF3F2F2FFF1F1F0FFEBEBEAFFF3F2F2FFF3F2
        F2FFF3F2F2FFE3EAF0FF5BA3E6FF0074DFFF0074DFFF0074DFFF0074DFFF0075
        DFFF0075E0FF0075E0FF1E85E2FF5BA5E7FFB6D3EDFFF3F2F2FFF3F2F2FFDDDC
        DBFFD8D7D7FFE9E5E0FFEBC492FFE3BD8DFFD6D5D4FFD6D5D4FFD6D5D4FFD4D3
        D2FFD8D7D7FFD8D7D7FFEBE1D6FFF0C99CFFF1C48FFFF3C897FFF5CC9FFFF7D2
        ABFFF7E0C8FFF2EDE9FFE8E7E7FFE2E1E1FFDFDEDEFF69C9FDFF68C7FFFF68C7
        FFFFA4D3EEFFDFDEDEFFE1E0E0FFE1E0E0FFDFDEDEFFE4E1DBFFECE7D4FFE2E1
        E1EF4A4A4A4E0000000000000000000000000000000000000000000000002B2B
        2B2EE6E6E5FFEAEAE9FFF3F2F2FFF1F0F0FFEBEBEAFFEEEEEDFFECECEBFFF3F2
        F2FFF3F2F2FF4BA0E7FF007AE2FF007BE3FF007BE3FF007BE3FF007BE3FF007B
        E3FF007CE3FF007CE3FF007CE3FF007CE3FF007DE4FF5BA9E9FFF3F2F2FFE8E7
        E6FFF0EFEFFFF1E6D9FFECC494FFE8BF8CFFD6D5D4FFD6D5D4FFD6D5D4FFD6D5
        D4FFE1E0E0FFF0D9BFFFEEC18AFFEFC18AFFE6BE88FF7A8438FFADA366FFF9D2
        AAFFFBD7B3FFFDDBBCFFFAE6D2FFF4EFEBFFEAE9E9FF75C9FAFF62C1FFFF62C1
        FFFF8BCCF6FFE1E0E0FFE2E1E1FFE2E1E1FFE2E1E1FFE1E0E0FFE1E0E0FF706F
        6F7E000000000000000000000000000000000000000000000000000000008584
        848FEBEBEAFFEDEDECFFF2F1F1FFEAEAE9FFECECEBFFECECEBFFF0EFEFFFF3F2
        F2FF97C8EDFF0081E6FF0081E6FF0082E6FF0082E6FF0082E6FF0082E6FF0082
        E6FF0083E7FF0083E7FF0083E7FF0083E7FF0083E7FF0084E7FFC5DDF0FFF3F2
        F2FFE3E2E1FFEEEDEDFFF2F1F1FFEFE5D9FFD6D5D4FFD6D5D4FFD8D7D7FFEBE3
        DBFFECC697FFECBB7FFFD7B275FFA99B58FF566E1BFF93934FFF949451FF5771
        20FF7E8A44FFFEDDBEFFFFDFC0FFF5E0C3FF8BD2F5FF7AD9FEFF6DCBFFFF5DBB
        FFFF7DC3F6FFE1E0E0FFDFDEDEFFDFDEDEFFE1E0E0FFDFDEDEFFE1E0E0FF7D7C
        7C8F00000000000000000000000000000000000000000000000000000000B2B2
        B1BFEAEAE9FFF0EFEFFFEDEDECFFEAEAE9FFEEEEEDFFECECEBFFF3F2F2FFF3F2
        F2FF4BA9ECFF0088E9FF0088E9FF0089EAFF88C3EEFF6AB7EDFF2D9DEBFFB6D7
        EFFF008AEAFF3CA3ECFF008AEAFF008AEAFF008BEAFF008BEBFF79BEEEFFF3F2
        F2FFE3E2E1FFE4E4E3FFEAEAE9FFF1F1F0FFD8D7D7FFDFDEDDFFEDDCC7FFEAB9
        7CFFEBB97BFFEDBC81FFD7B377FF3E6109FFABA060FFACA163FF7C8740FFEECE
        A6FF587222FFBEB583FFA5BDABFF6CC8F2FF86E5FDFF96F4FFFF9BF8FFFF8EEB
        FFFF94D4F8FFE5E4E4FFE2E1E1FFE1E0E0FFE2E1E1FFE2E1E1FFE3E2E2FF9998
        98AF00000000000000000000000000000000000000000000000000000000DFDE
        DEEFEAEAE9FFF3F2F2FFECECEBFFEAEAE9FFEEEEEDFFF1F1F0FFF3F2F2FFF3F2
        F2FF97CCEFFF79C0EFFF88C6EFFFD4E5F1FFF3F2F2FF3CA8EEFF3CA8EEFFF3F2
        F2FF0091EEFFB6D9F1FF5BB5EFFF0091EEFF0092EEFF0092EEFF79C2F0FFF3F2
        F2FFE6E5E5FFE2E1E0FFEAEAE9FFEDEDECFFEAE9E9FFF3F2F2FFEFDEC9FFECC5
        95FFECBA7DFFEEBE84FFE4BB83FFDAB981FFF4CA9BFF6F7E32FFAEA66BFF6479
        2CFF4D7126FF489DA1FF65C9F3FF86E5FEFF8EECFFFF92F0FFFF97F5FFFFC1F4
        E7FFF6EFD1FFF7F1DFFFEDECECFFE3E2E2FFDFDEDEFFDFDEDEFFDFDEDEFFA9A9
        A9BF0000000000000000000000000000000000000000000000000D0D0D0EECEC
        EBFFEDEDECFFF3F2F2FFECECEBFFEAEAE9FFF2F1F1FFEDEDECFFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FF3CAEF1FF3CAEF1FFF3F2
        F2FF0098F1FFD4E6F1FF6ABFF1FF0098F1FF0099F2FF0099F2FFB6DBF2FFF3F2
        F2FFEBEAE9FFE1E0DFFFEAEAE9FFEBEBEAFFF1F0F0FFF3F2F2FFEEEDEDFFF3F2
        F2FFF1E4D5FFF0CCA2FFF1C38EFFF3C796FFF5CC9EFFD2BA87FF969858FF8FA8
        89FF57B4D6FF6DD0F8FF80DFFFFF85E4FFFF8AE8FFFF89E4EFFFAAC9A4FFFFEC
        C1FFFFEEC1FFFFF0C1FFFDF2C7FFF7F2DFFFEEEDEDFFE6E5E5FFE1E0E0FFB8B7
        B7CF0000000000000000000000000000000000000000000000003B3B3B3EEAEA
        E9FFF3F2F2FFF3F2F2FFEDEDECFFEAEAE9FFF0EFEFFFE8E8E7FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFB6DDF2FF3CB3F4FF009EF4FF3CB3F4FF79C9
        F3FF009FF5FF2DAFF5FF009FF5FF009FF5FF009FF5FF00A0F5FFB6DDF2FFF1F1
        F0FFEDEDECFFE1E0DFFFE7E7E6FFEAEAE9FFEBEBEAFFF3F2F2FFE7E7E6FF1E8E
        E7FF79B9ECFFE3EBF1FFF2E6DAFFF3D8BAFFF6CDA1FFEDCFACFF91BFC9FF4EB8
        E8FF6ECFFBFF78D7FFFF7DDCFFFF82E0FFFFACE6EBFF77904CFF7E9148FF5876
        24FF587624FFE5DEA8FFFFF3C1FFFFF5C1FFFDF6C7FFF6F4E3FFF0EFEFFFD6D5
        D5EF0000000000000000000000000000000000000000000000006867676EEAEA
        E9FFF3F2F2FFF3F2F2FFF1F0F0FFEBEBEAFFEEEDEDFFE7E7E6FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FF88D0F4FF00A5F8FF00A5F8FF00A5F8FF00A5F8FF00A5
        F8FF00A6F8FF00A6F8FF00A6F8FF00A6F8FF00A6F8FF0FABF8FFE1EBF0FFEAEA
        E9FFF1F1F0FFE2E1E0FFE4E4E3FFEAEAE9FFEAEAE9FFF2F1F1FFE7E7E6FF1E94
        EAFF2D9AEAFF0F8EEAFF79BDEEFFE3EBF1FFD0DFE3FF60B3D2FF55BCEFFF6BCB
        FFFF6FCFFFFF74D4FFFF81D9FBFF609C7BFF657E30FF657E30FF587624FFE5DB
        A8FF8B9B54FFCBCC90FFFFF3C1FFFFF5C1FFFDF7C8FFF6F3E6FFA7A6A6AF0D0D
        0D0E0000000000000000000000000000000000000000000000004848484EEAEA
        E9FFF3F2F2FFF3F2F2FFF1F0F0FFEDEDECFFEFEEEEFFE7E6E5FFF3F2F2FFF3F2
        F2FFF3F2F2FF97D7F5FF00ABFBFF00ABFBFF00ACFBFF00ACFBFF00ACFBFF00AC
        FBFF00ADFCFF00ADFCFF00ADFCFF00ADFCFF5BC6F8FFD4E9F3FFF0F0EFFFEAEA
        E9FFF0F0EFFFE5E4E3FFE1E0DFFFEAEAE9FFEAEAE9FFF1F1F0FF91C7E9FF79C0
        EFFFB6D9F0FF008EECFFE3EBF1FF1E9BEDFF39A9DDFF5BBDF7FF66C5FFFF69C8
        FFFF6CCCFFFF94D5EFFFEDE2C7FFF2DDB4FFD8CE9CFFCBC690FF72883CFF98A4
        60FF587724FFFFF2C1FFFFF4C1FFFAF4D3FFE4E3DFEF6968686E000000000000
        00000000000000000000000000000000000000000000000000001C1C1C1EEAEA
        E9FFF3F2F2FFF3F2F2FFF1F0F0FFF0F0EFFFF1F0F0FFE5E4E3FFF2F1F1FFF3F2
        F2FFF3F2F2FF3CC2FBFF00B2FEFF00B2FEFF00B2FEFF00B2FEFF2DBEFCFF2DBE
        FCFF0FB6FDFF4BC6FAFF88D6F7FFD4EAF3FFF3F2F2FFF3F2F2FFF0EFEFFFEAEA
        E9FFEEEEEDFFE8E7E6FFE3E3E2FFEAEAE9FFECECEBFFF2F1F1FF3CACF0FF79C3
        F1FFB6DAF1FF0F9BF0FFF3F2F2FF3CADF0FF0C9BF2FF37AEF9FF5EC0FEFF67C6
        FFFFAEDEF8FFF9EAD9FFFEE6C3FFFFE7C1FFFFE9C1FFFFEBC1FFA5AD6CFFA5AE
        6CFFF2E8B4FFFEF3C4FFF6F2E2FFB6B5B5BF1D1C1C1E00000000000000000000
        000000000000000000000000000000000000000000000000000000000000EBEB
        EAFFF1F0F0FFF3F2F2FFEDEDECFFEEEEEDFFEDEDECFFE7E6E6FFEFEEEEFFF3F2
        F2FFF3F2F2FF3CC2FBFF00B3FFFF00B3FFFFC5E6F4FF00B3FFFFB6E2F5FF88D6
        F7FF3CC2FBFFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFECECEBFFEAEA
        E9FFECECEBFFEAE9E8FFE6E5E4FFEAEAE9FFEFEFEEFFC5E2F2FF009BF3FF6AC2
        F3FF88CDF2FF2DACF3FF79C8F3FF009DF3FF009DF4FF009DF4FF06A0F5FFE1EC
        F3FFF3F2F2FFF1F0F0FFF3F1EEFFF9EDD9FFFDEBC7FFFFECC1FFFFEEC1FFFFF0
        C1FFFBF2D0FFF3F2EEFF7878787E000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000BFBF
        BECFEFEFEEFFF3F2F2FFECECEBFFEEEEEDFFEBEBEAFFEDEDECFFEAE9E9FFF3F2
        F2FFF3F2F2FF3CC2FBFF00B3FFFF00B3FFFF5BCAFAFF00B3FFFFB6E2F5FF6ACE
        F9FF4BC6FAFFD4EAF3FF79D2F8FF97DAF6FFE3EEF2FFF0F0EFFFEAEAE9FFEAEA
        E9FFECECEBFFE8E7E6FFE9E9E8FFECECEBFFF3F2F2FF5BC0F5FF00A2F6FF00A3
        F7FF00A3F7FF00A3F7FF00A3F7FF00A4F7FF00A4F7FF00A4F7FF1EAEF6FFEFEE
        EEFFEEEEEDFFECEBEAFFE5E4E3FFEFEEEEFFF3F2F2FFF7F0DFFFFCEFCAFFF8F1
        DCFFC5C4C4CF2C2C2C2E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005A59
        595EF3F2F2FFF3F2F2FFEEEEEDFFEEEEEDFFEBEBEAFFF1F0F0FFEAE9E8FFF0EF
        EFFFF3F2F2FF79D2F8FF00B3FFFF00B3FFFF00B3FFFF00B3FFFF88D6F7FF2DBE
        FCFF1EBAFDFF00B3FFFF00B3FFFF00B3FFFF3CC2FBFFECECEBFFEAEAE9FFEAEA
        E9FFECECEBFFEBEBEAFFEEEEEDFFF3F2F2FFE3EDF2FF0FAEFAFF00A9FAFF00AA
        FAFF00AAFAFF00AAFAFF00AAFAFF00AAFBFF00ABFBFF1EB3FAFFB6E0F4FFEEEE
        EDFFEAEAE9FFF1F0F0FFE2E1E0FFE3E2E1FFECECEBFFF0F0EFFFF3F2F2FFA6A5
        A5AF000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000E4E3E3EFF3F2F2FFEFEFEEFFEDEDECFFECECEBFFEDEDECFFEEEEEDFFE4E3
        E2FFF1F1F0FFD4EAF3FF1EBAFDFF00B3FFFF00B3FFFF00B3FFFF00B3FFFF00B3
        FFFF00B3FFFF00B3FFFF00B3FFFF1EBAFDFFC5E6F4FFECECEBFFEAEAE9FFEAEA
        E9FFF0F0EFFFF0F0EFFFF3F2F2FFF3F2F2FF97D9F6FF00B0FDFF00B0FDFF00B0
        FEFF00B1FEFF00B1FEFF00B1FEFF4BC5FAFF97D9F6FFF3F2F2FFF3F2F2FFEEEE
        EDFFEAEAE9FFF1F0F0FFE2E1E0FFE4E4E3FFEAEAE9FFEDEDECFFF1F0F0FF1C1C
        1C1E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004A4A4A4EF3F2F2FFF1F0F0FFEBEBEAFFEFEFEEFFEAEAE9FFF0F0EFFFE7E6
        E5FFE9E8E8FFF3F2F2FFF3F2F2FFB6E2F5FF1EBAFDFF00B3FFFF00B3FFFF00B3
        FFFF2DBEFCFF5BCAFAFF97DAF6FFF3F2F2FFF3F2F2FFECECEBFFEAEAE9FFEDED
        ECFFF3F2F2FFF3F2F2FFF0F0EFFFE1ECF0FF1EBAFDFF6ACEF9FF00B3FFFFB6E2
        F5FF4BC6FAFF79D2F8FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFECEC
        EBFFEAEAE9FFEFEEEEFFE5E4E3FFE7E6E5FFEAEAE9FFF0EFEFFFB6B5B5BF0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005A59595EE4E3E3EFEDEDECFFF2F1F1FFF1F0F0FFEBEBEAFFF0EF
        EFFFE3E3E2FFEDEDECFFF3F2F2FFF3F2F2FFA7DEF6FFC5E6F4FFF3F2F2FF00B3
        FFFFC5E6F4FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFEBEBEAFFEAEAE9FFF1F1
        F0FFF3F2F2FFEFEFEEFFEBEBEAFF5AC9F9FF1EBAFDFF97DAF6FF00B3FFFFF3F2
        F2FF3CC2FBFF79D2F8FFF3F2F2FFC5E6F4FFF3F2F2FFF3F2F2FFF0EFEFFFEAEA
        E9FFEAEAE9FFEEEEEDFFE4E4E3FFEAEAE9FFECECEBFFF3F2F2FF4A4A4A4E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002C2C2C2EDBDAD9EFEEEDEDFFF1F0F0FFECECEBFFF1F1
        F0FFF1F1F0FFE8E7E6FFE9E8E8FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFE3EE
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF0EFEFFFEAEAE9FFEFEEEEFFF3F2
        F2FFEFEFEEFFEBEBEAFF97D9F6FF00B3FFFF00B3FFFF0FB6FEFF00B3FFFFF3F2
        F2FF00B3FFFF6ACEF9FF1EBAFDFF00B3FFFF0FB6FEFFA7DEF6FFEBEBEAFFEAEA
        E9FFEAEAE9FFEEEEEDFFE8E8E7FFECECEBFFF2F1F1FFD5D4D4DF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002A29292ED6D5D4EFECEBEAFFEDEDECFFE6E5
        E4FFEEEDEDFFECECEBFFE9E8E8FFE8E8E7FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFEFEFEEFFEBEBEAFFEAEAE9FFF2F1F1FFF1F0
        F0FFECECEBFFF2F1F1FF79D2F8FF00B3FFFF00B3FFFF00B3FFFF00B3FFFF00B3
        FFFF00B3FFFF00B3FFFF00B3FFFF00B3FFFF00B3FFFFA7DEF6FFEAEAE9FFEAEA
        E9FFEAEAE9FFEFEFEEFFEFEFEEFFF3F2F2FFF3F2F2FF7878787E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001D1C1C1E7171707EC1C0C0CFEBEB
        EAFFE5E4E3FFEAE9E9FFE7E7E6FFE3E3E2FFEBEBEAFFF3F2F2FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFEFEFEEFFEAEAE9FFEAE9E8FFE6E5E4FFE9E9E8FFECEC
        EBFFEAE9E8FFF1F0F0FFF3F2F2FF97DAF6FF4BC6FAFF00B3FFFF00B3FFFF00B3
        FFFF00B3FFFF00B3FFFF0FB6FEFF5BCAFAFFD4EAF3FFF3F2F2FFEAEAE9FFEAEA
        E9FFEEEEEDFFF3F2F2FFF3F2F2FFF1F1F0FFE3E2E2EF0D0D0D0E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000D0D0D0EBAB9
        B8CFE5E4E3FFE3E3E2FFECEBEAFFECEBEBFFE8E8E7FFF0F0EFFFF3F2F2FFF2F1
        F1FFEEEDEDFFE8E7E6FFEAEAE9FFEBEAEAFFE4E3E2FFE7E6E5FFEDEDECFFEFEF
        EEFFE9E8E8FFE7E6E6FFF3F2F2FFF3F2F2FFF3F2F2FF3CC2FBFF97DAF6FF88D6
        F7FF00B3FFFFC5E6F4FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFEAEAE9FFEAEA
        E9FFF1F1F0FFF3F2F2FFF1F0F0FFEBEBEAFF6867676E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003837373E6363626EE7E7E6FFECEBEAFFEBEAE9FFEAEAE9FFEDECEBFFE7E6
        E5FFE3E2E1FFE8E8E7FFEAEAE9FFECECEBFFEBEAEAFFF1F1F0FFF0F0EFFFEEEE
        EDFFF3F2F2FFEAE9E9FFE8E7E6FFF1F0F0FFF3F2F2FFF3F2F2FFF3F2F2FFD4EA
        F3FF88D6F7FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFF0F0EFFFEAEAE9FFEEEE
        EDFFF3F2F2FFF1F0F0FFEBEBEAFF9695959F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000ECEBEBFFECECEBFFECEBEAFFEDEDECFFECECEBFFECEC
        EBFFD9D9D9EF6464636E1C1C1C1E000000009D9C9CAFE9E8E8FFF1F0F0FFEAEA
        E9FFEBEAEAFFF0F0EFFFEDEDECFFE7E6E5FFF0EFEFFFF3F2F2FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFF3F2F2FFEFEFEEFFEBEBEAFFEBEBEAFFF3F2
        F2FFF1F0F0FFEBEBEAFFA5A4A4AF000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000004545444EE7E7E6FFE9E9E8FFE9E8E7FFE7E7E6FFE4E3E2FFE0DF
        DEFFD5D4D3EF9392919F7676767E7676757E8888888FDCDBDBEFEDECECFFF1F0
        F0FFE6E5E4FFE7E6E5FFEBEBEAFFE4E4E3FFE6E5E4FFF1F0F0FFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFF3F2F2FFF1F0F0FFEAEAE9FFEBEBEAFFE9E9E8FFEDED
        ECFFEBEBEAFF9695959F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000009A9A99AFE1E0DFFFE7E6E5FFE8E7E6FFE8E7E6FFE7E7E6FFEBEA
        E9FFE9E8E7FFEBEAE9FFECEBEAFFE8E8E7FFE3E3E2FFECECEBFFF3F2F2FFF3F2
        F2FFEFEEEEFFE5E4E3FFE8E7E6FFEFEEEEFFE6E5E5FFEBEBEAFFF3F2F2FFF3F2
        F2FFF3F2F2FFF3F2F2FFEDECECFFEAEAE9FFEAEAE9FFE2E1E0FFE4E4E3FFDCDC
        DBEF6867676E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000D3D2D1EFE4E3E2FFE7E6E5FFE8E8E7FFEBEBEAFFE5E4E3FFEFEF
        EEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFE4E3E2FFEAEAE9FFEFEFEEFFF3F2
        F2FFECEBEBFFBBBAB9CFC8C7C7DFEAEAE9FFF0EFEEFFECEBEAFFF1F0F0FFF2F1
        F1FFE6E5E4FFE2E1E0FFE7E6E5FFEAEAE9FFE9E9E8FFDCDCDBEF9594949F1D1C
        1C1E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003736363EDDDCDBFFE8E7E6FFE8E8E7FFEAEAE9FFEEEDECFFE7E6E5FFECEB
        EAFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEEEEEDFFEBEBEAFFEDEDECFFF3F2
        F2FFE8E7E7FF000000003939393EE9E9E8FFE9E9E8FFE8E8E7FFE7E7E6FFE7E7
        E6FFE8E7E6FFE8E8E7FFAFAFAFBF7575757E4949494E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00007E7E7D8FDAD9D8FFEAEAE9FFE8E7E6FFE5E5E4FFEFEFEEFFE8E7E6FFE8E7
        E6FFEFEFEEFFEFEFEEFFEFEFEEFFECECEBFFE6E5E4FFEAE9E8FFF1F1F0FFEFEE
        EEFF8E8E8D9F000000004746464EEDECECFFEBEAE9FFECECEBFFEAE9E8FFEAE9
        E8FFE8E7E6FF9F9F9FAF1C1C1C1E1D1C1C1E2C2C2C2E2C2C2C2E3B3B3B3E0D0D
        0D0E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000B3B3B2CFD8D8D7FFE8E8E7FFE5E4E3FFE3E2E1FFE9E9E8FFECECEBFFE8E7
        E6FFEBEBEAFFEEEEEDFFE8E8E7FFDFDEDDFFE0DFDFFFEDECECFFE8E7E7FF9C9C
        9BAF0D0C0C0E00000000B7B6B5CFE2E1E0FFE7E7E6FFEAEAE9FFE3E3E2FFE7E7
        E6FFE7E6E5FFE1E0DFFFE8E7E6FFEBEBEAFFE7E7E6FFEBEBEAFFF1F0F0FFF3F2
        F2FFB6B5B5BF5857575E0D0C0C0E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001A1A
        1A1ED8D7D6FFDBDAD9FFDFDEDCFFDEDDDCFFDBDAD9FFD5D4D3FFE0DEDDFFEBEB
        EAFFEAE9E8FFE6E5E4FFE6E6E5FFECEBEAFFE7E6E5FFB6B5B4CF1B1B1B1E0000
        0000000000001A1A1A1EE1E0DFFFE4E3E2FFE7E6E5FFEAE9E8FFE4E3E2FFECEC
        EBFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEAEAE9FFE2E2E1FFEAEAE9FFF3F2
        F2FFF3F2F2FFE9E8E8FF1B1B1B1E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005353
        525ED3D2D1FFD4D3D2FFDDDCDBFFD0CFCEFFCFCECDFFD6D5D4FFCECCCBFFDFDE
        DDFFE4E3E2FFE4E3E2FFE0DFDEFFDCDBDAFFDEDDDCFF0C0C0C0E000000000000
        0000000000005353525EE1E0DFFFE8E8E7FFE7E7E6FFEAE9E8FFEAE9E8FFE8E7
        E6FFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEFEFEEFFEBEBEAFFEAEAE9FFF0F0
        EFFFF3F2F2FFCAC9C8DF00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006565
        656ED3D2D1FFD0CECDFFDFDEDDFFE0DFDEFFE0DFDEFFDDDCDBFFDEDDDCFFE4E3
        E2FFDEDDDCFFD7D6D5FFCFCECDFFD7D6D5FFE0DFDEFF5352525E000000000000
        0000000000009A9A99AFDCDBDAFFEAEAE9FFE7E7E6FFE8E8E7FFEDEDECFFE7E6
        E5FFECEBEAFFEFEFEEFFEFEFEEFFEFEFEEFFEEEEEDFFE9E9E8FFEEEEEDFFF0F0
        EFFFF0EFEFFF8E8E8D9F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00006A69697ED8D7D6FFDFDEDDFFD4D3D2EFDDDCDBFFE0DFDEFFE1E0DFFFDEDD
        DCFFDBDAD9FFDCDBDAFFD6D5D4FFDFDEDDFFE2E1E0FFC6C5C4DF000000000000
        000000000000CCCBCAEFDDDDDCFFE9E9E8FFE2E1E0FFEBEAE9FFEDEDECFFE8E7
        E6FFE7E6E5FFEEEDECFFEFEFEEFFEBEBEAFFE2E1E0FFDDDBDBFFEFEEEEFFEBEA
        EAFFD7D6D5EF0D0C0C0E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00004645454EA9A8A7BF7170707E0D0C0C0E8A89899FDEDDDCFFDBDAD9FFD6D5
        D4FFDAD9D8FFDEDDDCFFE1E0DFFFD6D5D4EF8E8E8D9F3737373E000000000000
        00003736363ED7D6D5FFE0E0DFFFE5E4E3FFDAD9D8FFE2E1E0FFDCDAD9FFEAEA
        E9FFECEBEAFFECECEBFFE6E6E5FFE5E4E3FFEBEAEAFFEBEAEAFFD6D5D4EF5454
        535E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006160606EE0DFDEFFE0DFDEFFE1E0
        DFFFE3E2E1FFDCDBDAFF5D5C5C6E000000000000000000000000000000000000
        00007E7E7D8FD2D1D0FFD9D8D7FFDCDBDAFFCECDCCFFD1D0CFFFD7D6D5FFD2D1
        D0FFE3E2E1FFE4E3E2FFE5E4E3FFE4E3E2FFDFDEDDFFC2C1C0DF0C0C0C0E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002828282EE0DFDEFFE2E1E0FFE3E2
        E1FFE1E0DFFFC2C0C0DF4645454E000000000000000000000000000000000000
        0000A6A6A5BFCFCECDFFD4D2D1FFE0DFDEFFDCDBDAFFDCDBDAFFD4D3D2FFDCDA
        D9FFE4E3E2FFE0DFDEFFDCDBDAFFD3D2D1FFD9D8D7FFE0DFDEFF0C0C0C0E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000007170707E2929292E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00002C2C2C2EA7A6A5CFDAD9D8FFDEDDDCFFDFDEDDFFE0DFDEFFDBDAD9FFDFDE
        DCFFE4E3E2FFDCDBDAFFD4D3D2FFCFCECDFFE1E0DFFFE1E0DFFF6161606E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000009A9998AFE0DFDEFFAAA9A9BF4545454EDDDCDBFFDDDCDBFFD6D5
        D4FFCECDCCFFD5D4D3FFDFDEDDFFE2E1E0FFE4E3E2FFC7C7C6DF6262616E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000A8A7A6BFE1E0DFFFE1E0
        DFFFE2E1E0FFE4E3E2FFE1DFDEFF7170707E2929292E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000007E7D7C8FE0DFDEFFE2E1
        E0FFE3E2E1FFDEDDDCFFD8D6D5FF3736363E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003737363EC7C6C5DF5454
        535E3737373E3737373E2929292E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = SaleReportButtonClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001010101060605060A09090A0E0D0D0E1010
        0F111111101212121113111110120F0E0E0F0B0A0A0B07070607030303030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000040404040D0C
        0C0D15141316201D1B22312C28364339334B4D3F355959473B68614C3E74664E
        3E7B6A503E81694F3E81674F3E7D654E3F795E4B3E6E54463B61483E37513B35
        30412C28262F1D1B1A1F0F0F0E10060606060000000000000000000000000000
        000000000000000000000000000000000000000000000000000009090809201D
        1B22494039527B68598FA6907BC7BEA995E7B09073DB8C5730C18E4D1DCF9E52
        17E5AC5411F2B25614F4A15417E5945225CF90552EC3865636AF79553D996C52
        3F835B4A3E6B493F3852332E2B371B1A191C0505050501010101000000000000
        000000000000000000000000000000000000000000000404040832302D428E85
        7A9FBCB0A2DFD0C6BAFFCAC5BCFFC9C3BCFFCFCEC9FFC5B199F5AE622FF5C15B
        2AFEDD6C3EFFEA7245FFD86D31FC845A37A75F4C40715D4A3E6D50433A5C433B
        344B332E2B382421202613131214070706070101010100000000000000000000
        00000000000000000000030202081817143A46423C859B9286D3CCC2B7FDCAC3
        B9FFC7C0B7FFC8C2B9FFCBC3BAFFCBC4BBFFCCC2B5FFD5D3CCFFCFB9A9FFAB5A
        3BFFC6603CFFE5754BFFF0774BFFB36933D0100F0D1105050505030303030000
        0000000000000000000000000000000000000000000000000000000000000101
        010110100F2B45433E7B8F8880C6D2C9BFF8DBD3C9FFCEC6BDFFC8C2B8FFCCC4
        BAFFCDC5BCFFC8C1B8FFC6C0B8FFD0CBC4FFD5B890FFD6B588FFDBD6CBFFC4AD
        98FFA3542FFFCE6C40FFEA7D4DFFEB7941FF4E2F0C6500000000000000000000
        00000000000000000000000000000000000000000000000000000101010E7470
        6CA2D7CFC6F9D9D2C8FFD2CBC0FFCAC3BAFFCAC3BAFFCCC5BCFFC7C1B9FFC0BA
        B2FFBAB4ADFFBAB5AEFFC6C0B9FFD6D0C8FFD7D0C6FFD7CEC2FFD9D1C8FFE1E0
        DCFFB99578FFAB592EFFDB7946FFF08653FFA35819C406030008000000000000
        00000000000000000000000000000000000000000000000000000101010D7A76
        72B0E0D9D0FFC6BFB5FFCBC4BBFFC8C1B9FFC0BAB2FFBAB5ADFFBCB7AFFFC4BF
        B8FFCEC7C0FFCFC9C3FFCAC3BDFFC4BFB9FFD7D4CEFFDCD8D2FFDCD9D3FFE0DE
        DDFFDFDCD4FFAA7651FFBD6735FFE8854EFFDC803EF428170135000000000000
        0000000000000000000000000000000000000000000000000000000000000302
        0212837E79B8E1DBD2FFBDB8B1FFBBB6AFFFC5C0B8FFCDC7C0FFCEC9C1FFC8C4
        BDFFC2BEB8FFC4C0BAFFCDC9C3FFD5D0CAFFD9D4CEFFDFDBD9FFE0D0B9FFE0C1
        97FFE8E1D9FFD0C1B0FFA56234FFD37D45FFEE904EFF59340873000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000050504169B968FC7E0DAD3FFCDC8C1FFC7C2BCFFC3BFB9FFC6C1BBFFCECA
        C4FFD5D1CBFFD6D2CCFFD0CCC7FFCAC6C2FFCCC7C3FFE0DDD9FFE6DCD0FFE5D5
        BFFFE7DBCAFFEBECEAFFB48E6BFFB56B34FFEE9451FF7C4C17A9000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000D0C0B24B7B0A8DCDBD6D0FFCCC8C2FFD4D1CAFFD4CFCAFFCECA
        C5FFCAC6C2FFCECAC5FFD7D3CFFFDEDAD5FFDDDAD5FFD7D4D0FFE4E2E0FFECEB
        EBFFECEDEEFFF2F3F5FFD8CCBDFFA76D39FFDC8B49FFAB6B2BD6010000080000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000211F1D3FD5CEC7EEDDD9D4FFC9C6C0FFD0CDC8FFD8D4
        D0FFDDD9D4FFDBD7D3FFD5D2CEFFD2CFCCFFD5D2CFFFDBD9D6FFE9E6E4FFEEED
        EAFFEBD8BEFFF0E6D9FFF1F3F2FFB5916BFFC17B3BFFD1873BF3070400220000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000302D2A67F1EAE4FFDFDDD8FFD6D4CEFFD3D0
        CCFFD3D0CDFFD8D6D2FFE1DDDAFFE4E1DEFFE2DFDCFFDCDAD7FFD9D8D6FFEEEC
        E9FFF0DBBDFFEED5B3FFF9F8F6FFD4C7B6FFAE7539FFD89141FD170E02410000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000037B756EA9EEEAE6FFDAD8D4FFE1DF
        DBFFE2E0DDFFDEDCD8FFD9D7D5FFD9D8D6FFDFDEDBFFE6E4E2FFEAE8E7FFECEB
        E9FFF7F8FAFFF8F9FCFFFBFCFEFFF0EEEBFFB08754FFCC8B3DFF321F065B0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000E0C0B20C2BBB3E1ECEBE8FFD8D6
        D4FFDEDCDAFFE4E2E0FFE9E6E5FFE8E6E5FFE4E3E1FFE0DFDDFFE0DFDEFFE8E7
        E6FFFBFBFAFFF9F2E7FFFAF3E9FFFEFFFFFFC3AB89FFC08637FF3F290A740000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003A36316DF4F1ECFFEAE9
        E7FFE3E2E0FFE1E0DEFFE0DFDEFFE4E3E2FFEBE9E9FFEEEEEDFFEFEEEDFFE9E9
        E8FFF2F4F5FFF9E7CDFFF4D5ABFFFFF7EFFFDCD2C4FFBF8C3FFF332109850000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000003030309B3ACA2CDEDEC
        ECFFE8E7E6FFECECEBFFECEBEBFFE9E9E8FFE6E5E5FFE6E7E7FFEAEAE9FFEFEE
        EEFFF5F4F4FFFEFDFCFFFDFBF6FFFFFEFDFFEFEBE8FFBF9756FF442C09950000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000524C4463F1EE
        EBFFEAEAEAFFE6E6E5FFEAEAEAFFEFEFEFFFF2F1F1FFF1F0F0FFECECECFFE8E7
        E7FFE8E8E8FFFAFBFDFFFAF1E6FFF9EEDEFFF9FAFCFFC7A572FF4027019C0000
        0000000000000101010200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000100F0D13BFB9
        B1D7F7F7F8FFEEEEEDFFEBEBEBFFE9E9E9FFE9E9E9FFEBEBEAFFEDEDECFFEEEC
        ECFFEAE9E8FFF3F3F5FFF6E7D4FFEFD0A3FFF8EFE6FFD1BDA1FF775B35D23F38
        2F86685E51A38C806FC0332A1E43000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000007872
        6A8EF3F3F3FFEDEDEDFFEFEEEEFFEEEDECFFEAE9E8FFE6E5E4FFE3E2E1FFE3E2
        E1FFE6E4E3FFF1EFEEFFF8F8F9FFF5F3F1FFF4EEE7FFEEEAE8FFF1EDE8FFFCF8
        F2FFFFFFFFFFC9C1B6EA1D150B29000000000000000000000000000000000000
        0000000000000000000000000000000000000000000035200646915B0AAFAF88
        50D1EFEDEBFFEEEEEEFFE6E5E3FFEBE9E8FFF0EEEDFFF2F0EEFFF6F4F2FFF7F5
        F3FFF7F5F3FFF4F2F0FFF3F0EEFFF2F0EEFFF2EFEEFFF2F0EDFFF2F0EEFFF1F1
        F3FFE4DCD1FFAA7B3FD67A4C11974A2C03600000000000000000000000000000
        000000000000000000000000000001010101504F4D5CA69784C0E8D1B0FFEBDE
        CDFFEDEAE7FFD8D7D6FFC1C0BFFFB9B8B7FFDAD8D7FFF7F5F3FFF5F3F0FFF3F1
        EEFFF3F0EDFFF1EEECFFF1EEEAFFF0ECE9FFEFEBE8FFEEEAE7FFEEEDEAFFE4E1
        DDFFDEAA6EFFFBA951FFE69A42FB422703570000000000000000000000000000
        00000000000000000000000000000302020399938BB0F3F3F3FFFBFFFFFFFCFD
        FFFFD3D2D1FF959494FFB2B2B0FFA4A3A2FF878684FFE5E2DFFFF5F2EFFFF0EE
        EAFFEFECE9FFEFEBE8FFEDEBE7FFECE9E5FFEBE7E3FFECE9E6FFE6E5E2FFDCB1
        81FFF49E4CFFC37D2EE0301D0340000000000000000000000000000000000000
        00000000000000000000000000000000000011100F13756F6989E7E2DCFBFFFF
        FEFFC3C3C2FF8D8C8BFFEDEAE7FFE8E6E3FF989696FFC7C5C1FFF4F1EDFFEEEA
        E6FFEDE9E5FFECE7E4FFEBE7E3FFE9E5E1FFE9E5E0FFE6E8E7FFDCBC99FFEE99
        4BFFA66620C51D11002800000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001A1816459993
        8CC7E3E0DBFF919090FFC7C5C2FFF4F0EEFFC3C3C2FFAEACA9FFEEEAE6FFEBE7
        E2FFE9E5E1FFE8E4DFFFE7E3DEFFE7E2DDFFE6E6E4FFDEC6AFFFE7914AFF8C53
        14AD0E0800140000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000504
        040F47433E8093908EF5A09F9FFFEAE6E2FFD1CECDFF9D9B98FFE4E0DBFFE9E5
        DFFFE7E2DDFFE6E0DBFFE4DFD9FFE5E4E2FFE0D1C4FFDF9050FF72410A910704
        000A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002F2F2F8692908EF3E0DAD4FFDAD6D3FF8F8C8BFFD2CDC8FFE8E3
        DCFFE3DFD9FFE2DCD6FFE1DEDAFFE5DCD4FFD69153F75A320475000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000282828456C6C6DD64A464199A79E94CB9C9B9AFFB1AEABFFE4DF
        D9FFE1DBD4FFDFDBD6FFEAE4DDFFC08F60F03019015A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000101010166D6D6DC32E2E2E852A28254971706DD3A5A39FF9E5DF
        D9FFDED9D3FFE9E6E0FFB19169E0140A00410000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000004040405545454913B3B3B8038393A681A1A1A4D605E5BB3978E
        83CAE6DDD2FC97856CC608050128000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A3C4A4A4A922B2B2B514A4A4A7D141516610302
        0107332A1C400907040F00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000808080B4646466B4B4B4B7A4B4B4B82020203270000
        0000020101020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object BuyingReportButton: TdxBarLargeButton
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1091#1087#1082#1077
      Category = 0
      Hint = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1091#1087#1082#1077
      Visible = ivAlways
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000005C06070B9F02091E7C0303051200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000101015D3B3B3CFF5F5F5EFF111216FF121827BA0202020C000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0102020303170000000000000000000000000000000000000000000000000000
        0008141414DB6A6A6AFF2D2D2DFF090704FF0B192AFF01020455000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000404063C060B
        1BC8353538F0151515B701010118000000000000000000000000000000000101
        01050E0E0EE72D2D2EFF343536FF626467FF7E8691FF22232784000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000101010E0D1422E20F0F
        0EFF4A4949FF686868FF0B0B0BA00000000000000000000000000809090B2B2C
        2E4065686CDDA0A3A8FFC8CCD1FFDADCDFFFBBB9BBFF77757FFB333338800000
        00010000000001040D2901010118000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000027112333FF1213
        14FF111111FF313130FF1F1F1ECC1010111F4142455D717378A4A4A8ADE7BBBE
        C3FFBDBEC0FFA8A6A4F576746DE53C3C34C545433B8B9F9B98F077757AFF3E3E
        44B7111829B213161AFA272727EA060606520000000000000000000000000000
        000000000000000000000000000000000000000000000000000008171FC3243C
        46FF3C3A3AFF616266FF8B8D93FAB0B2B9FDADAEB2FFA6A6A7FF888782E15858
        50A12E2D295B0D0C0C1B00000000000000000000000019181828807D76BD9694
        96FF5C5B5DFF363536FF5F5F5EFF282828E00101010A00000000000000000000
        00000000000000000000000000000000000000000000343334476B6C70BD9FAA
        B2FFB4B4B9FFB5B5B8FF9C9B99ED6F6D66BB3E3D37731818162F000000000000
        000000000000090712141E174D4D231A7D7D05034E5200000000000000004D4C
        45A9A2A3A4FF868285FF5C5C5FFF29292AE80202020C00000000000000000000
        00000000000000000000000000000000000000000000ADACAFD6C3C3C5FF8E8C
        86CC52524B8D262623480706070D0000000000000000020204041A153B3C372C
        7E7E5543BFBF6955F0F07059FFFF503EFBFF150DEBFF0903A9B2040222270101
        051D315154E399A9ACFFA3A1A3FF6D6E70E50F0F102400000000000000000000
        00000000000000000000000000000000000000000000B5B5B4D7555750C10000
        00000000000000000000120F26282E2469694B3BACAC6450E3E3725CFFFF705B
        FFFF705BFDFF6F59FEFF5348F2FF5A47FAFF1D13EEFF140CE9FF1009E5F20A07
        627420232F9E4F6965FFABAEADFFC8C4C4FF39393A5400000000000000000000
        00000000000000000000000000000000000000000000A9A9A5D33E3C57C2221B
        4E5343359B9B5D4BD6D66F59FDFD725BFFFF735CFFFF6B58FCFF6957FAFF6553
        FAFF4D44F2FF6D58FBFF433FEFFF5946FAFF1F14F2FF1F18E1FF1910E3FF130B
        EEFF2821DBFF4F4A82DB2B2B276A121310310303020600000000000000000000
        0000000000000000000000000000000000001B17393A796AE5EE6E5AFBFF715C
        FFFF725CFFFF6C59FDFF6F5AFDFF604FF8FF5F50F8FF5B4CF5FF4E46F5FF6451
        F9FF453EF1FF6A54FBFF423CECFF5240F9FF1E13F1FF211BE4FF1F17E3FF2019
        DDFF150CEDFF0F08E3F40B096290000001030000000000000000000000000000
        000000000000000000000000000000000000382C82826B55FFFF6F59FFFF6554
        FAFF6453F9FF594BF6FF5549F6FF5849F4FF5145F5FF5849F3FF4A41F3FF5D4B
        F7FF4038EEFF624DFCFF3C35E5FF4A39F9FF1E13F1FF231DE8FF2018E4FF231C
        DFFF2119E2FF1D14E0FF170EEDFF0704474A0000000000000000000000000000
        0000000000000000000000000000000000003F338C8C5B4CF5FF483EECFF5649
        F5FF4E43F4FF5547F4FF5043F5FF5243F2FF4B3FF3FF5141F1FF433AF1FF5343
        F5FF3731E9FF5844FCFF342DE3FF4132FDFF1E12F6FF1D18E2FF1B14DCFF1A14
        D7FF1811DCFF1710D7FF130ECEFF0C08656C0000000000000000000000000000
        00000000000000000000000000000000000042359B9B5142F0FF3D35E8FF4E40
        F0FF4137ECFF4D3FF1FF4639F1FF4A3CEFFF4136F1FF4739ECFF3B31EEFF4B3A
        F9FF332AE9FF4A37FCFF3D2FE8FF3024DCFF110AC9FF0E09C8FF120CDDFF0E09
        C6FF140ED8FF140ED5FF120DCFFF0F09808B0000000000000000000000000000
        0000000000000000000000000000000000004538AFAF493BEFFF372FE6FF483A
        F0FF3B31EAFF4134E8FF362CE7FF4535F2FF3A2EF1FF4333F4FF372AE6FF382B
        E0FF2E24CEFF231EC3FF1919BFFF0D12C1FF0008B3FF0001ADFF0B07C5FF100A
        CBFF110BDDFF120CCCFF120CD2FF120B9AAC0000000000000000000000000000
        0000000000000000000000000000000000005044BCBC3E30ECFF3128E4FF4334
        EFFF342AEBFF4031F2FF3428E4FF392BE0FF2E23D1FF241FC8FF1A1AC3FF1115
        C4FF1417CEFF211FD9FF332BE3FF5B4DE9FF745FECFF3726DAFF0A05B8FF0601
        B8FF0E08C7FF110BD8FF0F0ACDFF130CAEC80000010100000000000000000000
        0000000000000000000000000000050506065B4ED7D73B2BF4FF3629E4FF3C2E
        E1FF2E23CFFF231DC8FF1918C6FF1113CAFF1214D5FF1A19E0FF342AE8FF493C
        F1FF5448F6FF4B43F2FF2029F2FF98A3C8FFD6D2CCFFC2B1FBFF6449F1FF321B
        D6FF0C03B9FF0601B8FF0D08C3FF110BC8E20100090900000000000000000000
        00000000000000000000000000000C0C0F0F574DD2F1221BCDFF1D1BCDFF1112
        CFFF0F0FD6FF1E19E4FF3524EDFF4835F2FF604EF4FF705DEBFF3E44F8FF2930
        EBFF1018DBFF0504CBFF000ADEFF6688D3FFD6D9B8FFFFFFE9FF9899F0FF5A53
        F8FF6742EEFF3019CFFF0700B2FF0501ACF602011A2100000000000000000000
        00000000000001010303111364642427B4B7292CEDFF2222F2FF342DF7FF493C
        F8FF5954F9FF5A5FEEFE447AF2FD22ACFFFF50D0EEFFBCBEB9FF0C36E8FF0007
        DAFF0206D6FF0405D3FF0006DBFF3866E4FFCACEB6FFEDEFDEFFCBCDF3FF4975
        EFFF6D83F3FF6465FFFF6143F3FF2717CBFF060191D102003B52000000000000
        00000000000003030C0C4642F9FA4D40FEFF523FFCFF4C3AEFFF4D37E8FF3C7A
        F2FF1A9AEBFE0D51B7FF007FCDFF007DCDFF1ABCEDFFCFDCC2FF3B59DDFF001E
        EDFF0413DEFF040EDDFF0006DAFF194BEDFFB5C3BDFFDDDFCFFFFAF8F9FFB9D3
        F9FFAFDDF2FFC8E3DEFFB8ADCEFF7756E6FF422BD8FF170DC0FE000000000000
        00000000000002010303403371717B63D7DA7B60FEFF4337E1FF1718C9FF0B1A
        C9FF2220C1FF2100B4FF0752D0FF1076C4F51A65DEFBC2D3CEFF7788CEFF001A
        F0FF0419E4FF0513DDFF010CDFFF0D41F1FFADC2C8FFD9DAC5FFDDE1D1FFB8B7
        C9FF8C87B9FF5658BAFF2B36C7FF121EDDFF161CECFE513BB7BC000000000000
        000000000000000000000000000080848BA29A97B2FF4D3F84966A4FCDCE5659
        E9FE1D5BD9FF1050DCFF2A6ECBFF1297DAFD1331D7FE9D9CD4FFB3C1C7FF0017
        E0FF021AE5FF0419E0FF0012E7FF2762F3FFC5D5CDFFCDD1B2FF4747BEFF102D
        ECFF0025F4FF0026FBFF0028FDFF0023FAFF0C18989E00000000000000000000
        0000000000000000000006060608BBC1C3E774786DDE00000000010102023750
        6F74199EC2FF00C4FCFF118EC5FF0688CAFF1643D5FF6866D5FFEBEFCEFF4B61
        D3FF0007DAFF0011EAFF0A3BF6FF94BAE0FFE4E7C8FF9395A8FF0918E2FF0640
        FEFF0237FBFF0337FAFF0237FAFF0129F2F90A0D292B00000000000000000000
        000000000000000000002325262DC3C8CBFF464747950000000000000000090B
        0C0C189BCAE100C6FAFF00BFFCFF0C96DDF8675EDBE67465E6FFF0F2D7FFDEE4
        D0FF798ED3FF5D79D8FFA1BCD2FFDFE4D1FFDBDFBBFF4545BDFF0B33F7FF033B
        FBFF0338FAFF0338FAFF0036FAFF1429A4A90000000000000000000000010000
        0000000000000000000056595B6BAEB2B3FF2020204300000000000000000000
        00002F4B535607B2E5ED04B0ECFF386A7E97191725271E1AB3D15A5CCFFFE1E3
        D3FFFCFED7FFEDF0D2FFECEDD5FFEDF0DAFFA2A7ABFF1823E0FF0F45FCFF0136
        FAFF0338FAFF0338FAFF0335F9FE0B0F363800000000000000000C0C0CAE1010
        11A51E1E1F3235343752A8AAAEE09C9E9FE90404040700000000000000000000
        0000000000002E40474D839DA8FF161614400000000007060C0D1C1B89992529
        D4FFACAFCBFFF7FBDBFFF2F6E7FFE3E9C5FF5456B9FF1838F8FF053DFBFF0338
        FAFF0338FAFF0037FAFF0B2CB9BD000000000000000000000000171716C33D3D
        3EFFA2A2A7FFCDCED2FFA8A8AEFF8A8A8CD01D1D1E340707070D000000000000
        000000000000606062708E8C8AFA050505120000000000000000000000002625
        54591016CEE9666AC9FFE7EACEFFBBC0AEFF272CDEFF1C50FDFF003BFBFF0340
        FBFF0342FBFF0344FBFF18244C4D000000000000000000000000020202141818
        173E363636435051526D504F539D77777CD1929298EF85858AE66E6E73BF5252
        548750505276BDBFC4E3676969C2000000000000000000000000000000000000
        0000131323242025ACB7333DCDFF5050BFFF2F4CF6FF0A58FDFF034EFCFF0551
        F8FB0040C8CA0A2F797A01020202000000000000000000000000000000000000
        0000000000000000000000000000010101011A1A1B1D343434424E4E50797E7E
        81B1ADAEB3EA6D6D70FF15161643000000000000000000000000000000000000
        00000000000001010101262875791A1EE4F32E6FF1F30045BCBD032C73740110
        2C2C000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000A0A0A1E262626960202020D000000000000000000000000000000000000
        000000000000000000000000000014162324020E1F1F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = BuyingReportButtonClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000010101061010108E7C7C7CEE4B4B4BDA010101690000
        0006000000000000000000000000000000000000000000000000000000000000
        00000A0A0A6A636363E66A6A6AE6030303850000001300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000F0F0F57646464FFB2B2B2FF989898FF272727D60000
        001E000000000000000000000000000000000000000000000000000000000707
        072B525252FEA7A7A7FFA8A8A8FF404040F30000003B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D757A7A7AFF747474FF7D7D7DFF575757DB0000
        0011000000000000000000000000000000000000000000000000000000001818
        1841767676FF767676FF797979FF727272F80303033100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000023232359606060FF606060FF606060FF464445B30000
        0000000000000000000000000000000000000000000000000000000000001311
        122D606060FD606060FF606060FF565555DE0505050E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000202020529282980403D3FC9383436AD0A0C0B220000
        0000000000000000000000000000000000000000000000000000000000000000
        0000201D1F5F3E3C3DC43D393BBD141615400000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000C8446FF0C8446FF0C8446FF0C8446FF0C84
        46FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C84
        46FF0C8446FF0C8446FF0C8446FF0C8446FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000001D0E390C8446FF0A8546FF088645FF098546FF0B84
        46FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0B84
        46FF088645FF088645FF098646FF078344FC0024124400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000064C28901B8F54FF60BA90FF9FDCC2FFB1E3CEFFC3EA
        DAFFD4EFE3FFE2F4ECFFEDF8F3FFF4FBF8FFEDF8F3FFE2F4ECFFD3EFE3FFC3EA
        D9FFB0E3CDFF9EDCC2FF8ED7B8FF21955BFF024A258D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000D7440D332AD76FF57D2A5FF57D2A4FE56D1A2FE55D1
        A3FF56D1A4FF56D1A3FE55D0A2FE54D1A3FF56D1A3FE56D1A3FE55D1A3FF56D1
        A3FE57D1A3FE57D2A5FF57D2A6FF2CA870FF076F3ACE00050209000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000080411138B4FF840BE8AFF49C895FE137345BA0B5F34A9289E
        69EA2B9C68DF0A5C32A41E8656CC35AB79EB0A5E34A70F6B40B23BB881F81279
        48C60A5D34A52D9E6DE04DCD9DFF3EBE88FF0C8448F200110820000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000012C1657168F52FF4BC894FF36B67DFF007C39FF007633FF26A6
        68FF007633FF007633FF159455FF32AF75FF007633FF007633FF31B075FF0076
        33FF007330FF119252FF4AC895FF49C692FF128E4FFD01341964000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000065A30AC209A5CFF40BF86FF53C38FFFB2DFC8FFB2DFC8FF54C1
        8EFFA7DDC4FFB5DFCAFF62C396FF4FC18DFFB3DFCAFFB2DFC9FF52C28EFFA7DD
        C4FFB4DFCAFF6AC59AFF42C088FF44C088FF1E9A5CFF045D30B3000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001127F47E52EA76AFF38B87AFF1D8250CA0E6237A6127343C038B1
        78FA147243B90E6137A61E8452CC32A66FEB0E6338A80F6439AA27905CD62BA1
        69EF0F6338A90E653AAB30A36CEB40BB80FF2DA96BFF09783FE30007030D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000001209242B955FFC96D6B6FF72C99DFF007633FF00722EFD007633FF27A8
        67FF007633FF007633FF007633FF2CA96BFF007432FD007533FD007633FF28A6
        67FF007533FD007633FF007633FF3EB97BFF3CB678FF0D8649F7011F103C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000053F21793EA06EFFC8EBD9FFBFE7D2FFCBE8DAFFCBE7D8FFC0E4D2FF6EC7
        9AFFB5DFCAFFB0DCC6FFA1D9BCFF45B87EFFAFDCC5FFAEDCC4FFA5DABFFF48B9
        7FFFAEDCC4FFAEDCC4FFA3D9BEFF3AB678FF3EB87AFF169152FD034C27920000
        0000000000000000000000000000000000000000000000000000000000000000
        0000166E41C563B58BFFC4EAD7FF70AD8EDB2D6D4AA82E704CAC6DB08EE57BB8
        9AE4206941A913653BAA258655CC3BA670EB116439A911673BAC157142B634AC
        6FF9177947C411653AA9136D40B435AB70F43EB87AFF25A162FF066E39D20001
        0001000000000000000000000000000000000000000000000000000000000004
        0208248C56F18CCDABFFB8E6CFFF007633FF007633FF007633FF61B68BFD0076
        33FF006B25F9006D28F9319A65FC74C19AFE006D28F9007431FA007633FA2BA8
        69FF018241FB007633FF007633FF007633FF3FB97BFF39B375FF0A8144F3000E
        071A000000000000000000000000000000000000000000000000000000000122
        11432C9660FEA1DBBEFFB0E2C9FFC7E6D7FFC6E4D4FFC7E4D5FFB2E0C9FFD1EC
        DDFFC7E4D5FFC7E4D4FF9FD6BAFFA4DABFFFC3E3D2FFC0E3D1FFBFE2D0FF80CE
        A7FF7DC7A2FFB6DFCAFFB2DDC7FF98D7B6FF36B475FF3DB97AFF0F884BF80338
        1D6C000000000000000000000000000000000000000000000000000000000851
        2C993EA36FFFA5DFC2FF82CAA5FF43A472FF47A676FF4CA97AFFAADDC4FF5BB1
        85FF4AA776FF48A572FF6EBD96FF96D3B4FF42A26EFF3FA471FF3DA16CFF6DC1
        96FF6CC095FF349D66FF299B60FF209B5DFF4CBC84FF44BB7FFF1D995BFE0563
        33BE00000000000000000000000000000000000000000000000000000000167B
        48DC59B486FF9CDCBCFF63B98EFF007633FF007633FF007633FF98D5B6FF0076
        33FF007633FF007633FF53AC7FFF91CFAFFF007633FF007633FF007633FF57B2
        84FF6BBE94FF007633FF007633FF007633FF6EC599FF74CDA0FF4FB883FF087E
        42F0000301050000000000000000000000000000000000000000000000001E8F
        54FD71C69CFF86D2ACFFC6E9D8FFD4EFE1FFD5EFE3FFD7F0E4FFAFE1C8FFDCF2
        E7FFDFF3E9FFE2F4EBFFDFF3E9FFC1E8D4FFE1F4EBFFDFF3E9FFDDF2E8FFB4E3
        CBFFAAE0C5FFD5EFE2FFD2EEE0FFCEEDDDFF8BD3AFFF7ECFA6FF7ACEA4FF0D83
        47F4022613490000000000000000000000000000000000000000000000004097
        6ADB68B68EE470B894E376BA97E37BBD9CE382BFA0E388C1A5E38FC4AAE395C6
        ADE39AC7B0E39ECAB4E3A4CBB7E3A7CDBAE3A7CDBAE3A4CCB7E39FCAB5E39CC8
        B2E396C7AEE38FC4AAE38AC1A6E383BFA1E37FBE9EE385CCA9F788D4ADFF2494
        5CF905562DA50000000000000000000000000000000000000000000000000102
        0203020403050204030503040305030403050304040503040405030404050304
        0405030404050304040504040405040504050405040504050405040404050304
        040503040405030404050304040503040405030404054E79649290D7B3FF59B6
        87FF07773EE401150B2901150B2801150B280005020900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000273D324B9ADAB9FF89D1
        ADFF0A8145F406793DEB06793EEC06793EEC0149238F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000F17131C94CFB1F29ADA
        BAFF75C09AFF6BB48DFF68B58EFF6FB893FF185B399700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000304030579A891C4A5DD
        C1FFA6DFC3FFA5DFC3FF9EDDBDFF9CDDBCFF2F58437400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000446153739ACB
        B1E89CD1B6F095CEB1F08ECBADF086C8A7F03C5A4B6B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object TranspReportBtn: TdxBarLargeButton
      Caption = #1056#1072#1089#1095#1077#1090#1099' '#1089' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072#1084#1080
      Category = 0
      Hint = #1056#1072#1089#1095#1077#1090#1099' '#1089' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072#1084#1080
      Visible = ivAlways
      OnClick = TranspReportBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000070000
        0009000000010000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000D0000002D000000550000
        0059000000420000002F00000018000000090000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000010000000360000005A00000091050505DF0B0B
        0BDE050505B500000095010101AF010101980000006600000040000000240000
        0012000000080000000300000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0001000000140000003C000000660000007B00000091131313ED3C3C3CFF0C0D
        0DFF090909FF030202FE0C1114FF4B6973FF313337FD1A191AE809090AC30202
        02980000006D0000004300000014000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000002000000180000
        00420000006A0000007C0000007A00000082000000E54D4D4DFF666564FF1414
        13FF0A0B0BFF070506FF11181CFF8BBECEFF464F53FF353132FF373637FF3634
        36FF2C2B2DFC181719DC07060795000000450000000D00000000000000000000
        0000000000000000000000000000000000020000001D000000480000006D0000
        007B0000007C0101018E030203B9030303E8000000FF313131FF414141FF1D1D
        1DFF212020FF090707FF11181DFF7EBBCCFF485256FF312E2EFF282728FF2A29
        2AFF363536FF3F3D3DFF3E4347FF466C7CFF06090A5F00000000000000000000
        0000000000000000000300000021000000520000006B00000079000000820202
        02A1060606D20C0C0DF8090809FF030303FF040304FF0A0A0AFF1B1B1BFF4C4B
        4BFF464545FF000000FF212224FF61777FFF32383BFF252324FF2B2A2AFF2E2D
        2DFF333233FF353332FF3A3F43FF6A9BAFFF0A0F116200000000000000000000
        00080000002600000057040404D00A0A0AF6070706CD040404B7090809E70E0D
        0EFF0A0A0BFF0E0E0FFF0B0B0CFF050505FF090909FF0D0C0DFF212020FF5150
        50FF1B1A1BFF171718FF1C1B1BFF2D2828FF3C3938FF3A3939FF2E2D2EFF2828
        29FF2B2B2CFF32302FFF384044FF69A0B8FF0A0E105D00000000000000000000
        000C0000001D060606A3676767FF333333FF070707FF0A0A0BFF0D0D0EFF0F0F
        10FF0A090BFF111112FF0C0C0EFF040405FF050506FF070708FF0E0D0EFF0C0B
        0DFF474747FF222222FF0F0F10FF1D1D1EFF5E5650FF7C726BFF625B57FF4D48
        45FF3E3B3AFF343232FF2E2D2FFF313537F40203033C00000000000000000000
        000A00000062161616DF767676FF343333FF090A0AFF0B0B0BFF0E0E0EFF0F0F
        0FFF08080AFF0E0C0CFF211A16FF2D261FFF131211FF161617FF1F1E1FFF2121
        21FF151515FF090909FF121212FF201F22FF47423EFF786F68FF857C73FF857B
        72FF7A716AFF68605AFF47423FFF1B191AFD0202024C00000000000000000202
        022F0B0B0BF1090909FF333333FF252525FF212121FF101011FF0E0D0DFF1712
        0EFF2E251EFF464547FF465D7BFF2D619CF6242F3FFB272523FF141415FF0E0E
        0FFF040405FF060606FF121113FF323235FF29292DFF2A292DFF333132FF3C39
        39FF4A4643FF544E49FF48433FFF1C1B1CFF0202035A00000000000000000101
        0129111011EB0B0B0BFF0D0D0EFF474646FF3A3635FF28211BFF393634FF3D4D
        62FF2F5C93FF185EB2FF0958BBFF0A5DBEF41D2E48FB24201DFF181718FF0A09
        0BFF474441FF49443FFF0E0F11FF6C645EFF837970FF615C59FF464545FF4A49
        4AFF414144FF3B3B3EFF313133FF212123FF0302035200000000000000000000
        00250A0B0BE814120FFF312A22FF4B4541FF3A3E42FF2D4A6CFF1957A8FF0B55
        B7FF0853B6FF0B53B2FF0D55B1FF0F5EBBF7182A43FC191513FF313030FF4947
        47FF3F3C39FF48443FFF121316FF80756DFF9C8E80FF80756CFF58524BFF514D
        47FF44413EFF4B4947FF555352FF474647FF0404045400000000000000000202
        021124201EC8393B44FF304972FD1A4E95FE0B3766FF073C7DFF0A50B3FF0C50
        ADFF0D52AFFF0D53B0FF0D54B1FF0E5EBCF8132841FD161211FF5D5854FF847A
        71FF585657FF464442FF1C1C1FFF81776FFF8C8076FF7B736AFF756E67FF6B67
        61FF6D6A66FF6F6C69FF82807DFF5C5B5BFF0303036D00000000000000000000
        0000252C364F05429FFF074AADFF0849A8FF0B335EFF0C3B75FF0C4FAFFF0C50
        AEFF0D52AEFF0E53B0FF0D54B0FF0E5FBCF9142A45FD1A1615FF5C5753FF766F
        68FF6F6E6DFF383737FF292729FF8C837AFF8A8078FF7F7973FF807C77FF8582
        7FFF8F8C8AFFA09E9BFFAEACAAFF575656FF0606079F00000000000000000000
        0000142535420541A0FF0B48A4FF0B49A4FF0B335FFF0C3C75FF0C50AFFF0C4F
        ADFF0B4FADFF094EAEFF084DADFF085BBCFA132C4AFE1C1715FF615E5DFF8884
        80FF514F4CFF0E0E0FFF373738FF716D69FF7A7672FF817E7AFF8B8986FF9795
        92FFA4A3A0FFB5B3B0FFA5A3A1FF252525D80404047800000000000000000000
        00001022334209439EFF0B48A4FF0B49A3FF0B335FFF0A3974FF0548ABFF0446
        A8FF0448A9FF0349AAFF0348ABFF0558BCFA17314FFE241F1DFF302F30FF2B2A
        2BFF101012FF29282AFF4C4B4DFF3C3C3EFF484749FF515152FF5B5A5BFF6463
        64FF6F6E6EFF828180FF636261FF020202610000000C00000000000000000000
        00001123334209439EFF0844A1FF05429EFF0A325FFF083772FF0244A8FF0345
        A7FF0448A9FF0449AAFF0449ABFF055ABFFA19334FFE231D1BFF121114FF1212
        14FF171718FF171717FF2B2B2BFF1C1C1DFF262626FF323233FF403F40FF4A49
        4AFF565656FF666566FF292929B0000000000000000000000000000000000000
        000006152B42043E9BFF013C9CFF023E9CFF0A325FFF083772FF0344A8FF0345
        A7FF0347AAFF0446A7FD023D98F004449AE50C3B72FD120F0EFF0D0C0DFF0A0A
        0BFF080708FF333333FF5A5A5CFF3E3E40FF3B3B3CFF353536FF2F2F31FF2B2B
        2DFF29292AFF282828DB0202020E000000000000000000000000000000000000
        0000000E2742023A99FF023D9CFF023E9CFF0A3360FF083773FF0242A4FE023D
        99F502388CE6043A86D908428BD50E59A6E41070BFFE25252BFF292321FF2D28
        25FF39322DFF403832FF3E3731FF413B37FF443E3AFF47413DFF4A423DFF4A46
        44FF444446EC2222227300000000000000000000000000000000000000000000
        0000010F2842023B99FF023C9CFF023C99FE082A52FF062B5CF7043C8DE00846
        92DF0C54A3E80E61B5F6146CC1FF2783CEFF30A0ECFF318BCDFF247BBDFF2371
        ACFF226498FF1E5B8EFF1B5585FF1F4C73FF244664FF234664FF1A598FFF0E1B
        2969020101070000000000000000000000000000000000000000000000000000
        0000000E2742013695FF023790F4053D8FEC08294FFC0A3B6EFA0F66BDF7156E
        C2FE207DCBFF2D93D9FD32A5E9FA33B1F9FC34B4FEFF32B6FFFF32B6FFFF38B9
        FFFF34B5FFFF32B3FEFE34B1FEFE2CAAFDFF2DA8FAFF26A2F8FF1E9EFCFF0820
        3235000000000000000000000000000000000000000000000000000000000000
        000001132C48094DA2F80C59ACF30F61B4FA0E3661FF174D80FF2989D1FE31A0
        E4FC2EAEF7FC28B2FEFE21AFFFFF1FADFFFF1FADFFFF1FACFFFF1FACFFFF1FAA
        FFFF1FA9FEFF20AAFEFF23ACFEFF229DE7E81B7AB2B3124E72720A2332320103
        0303000000000000000000000000000000000000000000000000000000000000
        0000082F5775156DC1FF207CCCFF298FD8FF267FBFFF2175B3FF1D70AEFF186D
        AEFF176AADFF186EB0FF1973B7FF1B78BDFF1B7FC6FF1C87D1FF1E93E0FF1D96
        E3F1187DBCBD10537C7D082A3F3F020A0F0F0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000D304853298FD0DF28A0E6E924A6F0F020A8F7F720AAFDFD20A8FCFF20A4
        F7FF20A0F1FF1F9AE9FF1E94E1FF1C87CFF41669A2C50E42678C081E3254030D
        141A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000001030505020B10100310181805182424061F2F2F07263939092E
        45450B3853530F4E73730B3B575704131C1C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object CrossReportButton: TdxBarLargeButton
      Caption = #1057#1074#1086#1076#1085#1099#1081' '#1086#1090#1095#1077#1090
      Category = 0
      Hint = #1057#1074#1086#1076#1085#1099#1081' '#1086#1090#1095#1077#1090
      Visible = ivNever
      Glyph.Data = {
        36240000424D3624000000000000360000002800000030000000300000000100
        2000000000000024000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000006968678F848382AF4847475E0B0B0B0E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000005C5B5A7EBDBBBAFFC3C1C0FFC4C2C1FFC5C3C2FF8887
        87AF3D3D3C4E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002222212EBCBBB9FFC0BEBDFFC4C2C1FFC5C3C2FFC6C5C4FFC8C6
        C5FFC9C7C6FFBDBBBBEF7F7E7D9F3F3E3E4E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000A0A0A0EA5A4A3DFC4C2C1FFE7E6E5FFE6E6E5FFDEDEDDFFD6D5D4FFC9C7
        C6FFCAC9C8FFCBCAC9FFCCCBCAFFCECCCBFFC2C0BFEF8281809F40403F4E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000828280AFC1BFBEFFE2E1E0FFE5E4E3FFE6E5E4FFE6E5E4FFE7E6E5FFE8E8
        E7FFE1E1E0FFD9D8D7FFCECDCCFFCFCECDFFD0CFCEFFD1D0CFFFD3D1D0FFB9B9
        B8DF7777768F2726262E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000005352
        526EC1C0BEFFD8D7D7FFE5E5E4FFE6E5E4FFE6E6E5FFE7E6E5FFE7E7E6FFE8E7
        E6FFE8E8E7FFE9E8E7FFEAEAE9FFE4E3E3FFDDDCDBFFD3D2D1FFD4D3D2FFD5D4
        D3FFD6D5D4FFD8D6D5FFBEBDBCDF7A7A798F2828272E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000002323222EC2C1
        BFFFCECCCBFFE9E8E7FFE6E5E4FFE6E6E5FF91D7F0FF39BBF8FF3AB8E8FFBDE1
        EBFFE9E8E7FFE9E9E8FFEAE9E8FFEAEAE9FFEBEAE9FFECECEBFFE7E6E5FFE1E0
        DFFFD8D7D6FFD9D8D7FFDAD9D8FFDBDAD9FFDDDCDBFFC2C1C0DF6E6E6D7E1A1A
        1A1E0000000000000000000000000515071E134F1B6E0007030E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000B0B0B0E9E9D9CCFC9C8
        C6FFE6E6E5FFE6E5E4FFE6E6E5FFE7E6E5FF8DEBFFFF7BE3FFFF31C9FFFF74CE
        F3FFA0C0CFFF499EC8FF83DBF2FFEBEAE9FFEBEBEAFFECEBEAFFECECEBFFEDEC
        EBFFEEEEEDFFE9E9E8FFE4E4E3FFDDDCDBFFDEDDDCFFDFDEDDFFDFDEDDFFDFDE
        DDFF8D968DAF134F1B6E259433CF2DB63FFF2DB63FFF0032145E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000007A7A789FC6C5C3FFE1E0
        DFFFE6E5E4FFE7E6E5FFE7E6E5FFE8E7E6FFCDD2D1FFCADCDDFF98DFECFFC8EA
        F0FF28C7EFFF24C7FFFF00B1FFFF84D0F3FFDDDDDCFFB1DCF0FFB1D8E0FFEDED
        ECFFEEEDECFFEEEEEDFFEFEEEDFFF2F2F1FFEDEDECFFE8E7E6FFDFDEDDFFDFDE
        DDFFB2D4B5FF2DB63FFF2DB63FFF2DB63FFF2DB63FFF0B7730CF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004948485EC7C5C4FFDAD9D8FFE6E6
        E5FFE7E6E5FFE9E8E7FF3AAFD8FF0FB6FFFF1DC2FCFFCCE3EAFFEAE9E8FFEBEB
        EAFFCBEAEDFFB9F5FFFF4BDFFFFFA4E0F1FF59CBEBFF20C0FFFF00B1FFFF85D4
        F4FFEEEEEDFFEFEFEEFFEFEFEEFFF0F0EFFFF0F0EFFFF1F1F0FFF3F3F2FFEDED
        ECFFB7D9BAFF2DB63FFF2DB63FFF2DB63FFF2DB63FFF58B575FF0110071E0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000002424232EBBBAB9EFD1D0CEFFE8E7E6FFE7E6
        E5FFE7E7E6FFCDCDCCFF7EEAFFFF8FEAFFFF06C2FFFF75CEF3FFA3D9F2FF3AC3
        F9FF66BDD5FFEBF0EFFFEAEFEEFFECECEBFFD2F8FDFFCDF8FFFF6BE2FFFF8ADD
        F5FF59B9D8FF00B1FFFF1EC0FDFFE1ECF0FFF1F1F0FFF1F1F0FFF1F1F0FFF1F1
        F0FF6BC977FF2DB63FFF2DB63FFF2DB63FFF2DB63FFF9FD2AAFF044F238F0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A3A2A1CFCFCDCCFFE5E4E3FFE7E6E5FFE7E7
        E6FFE8E7E6FFE8E8E7FFBFC5C5FFDDF7F9FFAEECF8FFD2DEE0FF2DD5FFFF63D6
        FFFF1FBBFFFFB1DDF0FFDEE8EDFFB1E0F0FFD1EDF1FFDEE6E6FFE2F2F4FFEFEF
        EEFF7ADCEFFF9FECFFFF08C5FFFFB4E2F3FFF1F1F0FFF1F1F0FFF1F1F0FF76CC
        81FF2DB63FFF2DB63FFF2DB63FFF2DB63FFF2DB63FFFAED8B3FF338F5ADF0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000007171708FCCCAC9FFE2E1E0FFE7E6E5FFE8E7E6FFE8E7
        E6FF2FAFDAFF1FBBFFFF1DBDFCFFCCE2EBFFEAEAE9FFECECEBFFC2DADCFFE6FC
        FFFF74E6FDFFD0E9EEFF2BB4DDFF4FC9FFFF0FB7FFFFC2E2F1FFE0E0DFFFB4E8
        F2FFD2D8D8FFE2F9FBFFC1EFF7FFF1F1F0FFF1F1F0FFF1F1F0FFAADDB0FF2DB6
        3FFF2DB63FFF2DB63FFF2DB63FFF2DB63FFF2DB63FFF89CD91FF8BC6A4FF032C
        154E000000000000000000000000000000000000000000000000000000000000
        0000000000003E3E3D4ECDCBCAFFDBDAD9FFE7E7E6FFE8E7E6FFE8E8E7FFEAE9
        E8FFA0E3EFFFD8F9FFFF44D7FFFFB3E1EEFFA2D9F1FF3AC3F9FF67D2F6FFC2CE
        D1FFEDEDECFFEDEDECFFA7D6DEFFD2F8FFFF4BDCFFFFB5D9E3FF0FA7DEFF00B2
        FFFF0FB9FEFFF1F1F0FFF1F1F0FFF1F1F0FFF1F1F0FFA7DBAEFF2DB740FF2EB7
        41FF2EB841FF2EB842FF2FB843FF2FB943FF2FB944FF8BD094FFC2DBCCFF0965
        31AF000000000000000000000000000000000000000000000000000000000000
        00001818181EC1BFBEEFD4D3D2FFE9E8E7FFE8E7E6FFE8E8E7FFA1CCE0FF74CD
        F3FF93E3F5FFDCE4E4FFD6E1E1FFECECEBFF4EDEFFFFCBF4FFFF09C1FFFFB2DF
        F0FFA4D9F3FF4AA1C9FF87DDF7FFD1D6D5FFECF2F1FFD3D3D2FF97EEFFFFB2F2
        FFFF28D3FFFFE1EDF0FFF1F1F0FFF1F1F0FFA8DCAFFF2FB944FF30BA45FF30BA
        45FF31BB46FF31BB46FF31BC47FF32BC48FF32BD48FF8ED499FFEAE9E8FF2BA1
        5FFF0108040E0000000000000000000000000000000000000000000000000000
        0000A8A6A6CFD2D0CFFFE6E5E4FFE8E7E6FFE8E8E7FFCDCDCCFF31D5FFFF42CF
        FFFF00B4FFFFB0DCEFFFDCE6EBFFB1DEEFFFA3D1D8FFE4F8FAFFB5E0E8FFE7F1
        F2FF3BD8FFFFAFE8FFFF03BBFFFFB4E1F2FF87C7E6FF78D5F7FFA5DBE8FFEDF7
        F7FFD9E3E3FFF1F1F0FFF1F1F0FFC3E5C8FF32BC48FF32BD48FF32BD49FF33BE
        4AFF33BE4AFF33BF4BFF34BF4CFF34C04CFF34C04DFF6FCF7FFFE7E6E5FF72BE
        94FF0741216E0000000000000000000000000000000000000000000000006766
        657ED1CFCEFFE2E1E0FFE8E7E6FFE8E8E7FFE9E8E7FFEBEAE9FFB8C9CBFFEDFE
        FFFF7EE7FCFFD0E7ECFF3CB9DDFF41C8FFFF1FBBFFFFA3D9F2FFDFEAEEFFB3E6
        F2FFCDE7E9FFE7F9FAFFB7EFF9FFC5EDF6FF2ED1FFFF80D9FFFF0FBAFEFFF1F1
        F0FFF1F1F0FFF1F1F0FFCDE7D1FF40C357FF34C04CFF34C04DFF35C14EFF35C1
        4EFF35C24FFF36C250FF36C350FF36C351FF37C351FF65CF79FFE6E5E4FFC5DF
        D0FF108646DF00000000000000000000000000000000000000003332323ED1CF
        CEFFC7C9D0FFAFB5CAFFDDDEE1FFE9E9E8FFEAE9E8FFEAEAE9FFEAEAE9FFEBEB
        EAFFEBEBEAFFECECEBFFADC7CBFFE2FCFFFF81E9FFFFABD9E4FF17C5FDFF6FD0
        FFFF0FB8FDFFE1EBF0FFC3DBE2FFA5DDE6FFD3EAECFFA0C8CEFFA8EBF8FFF1F1
        F0FFF1F1F0FFCEE8D2FF41C55AFF36C350FF37C351FF37C452FF37C452FF38C5
        53FF38C553FF38C554FF39C655FF39C655FF39C756FF67D17DFFE8E7E6FFECEC
        EBFF22A15CFF041C0F2E000000000000000000000000000000006867667ECDCD
        D0FF4AA0CCFF4CEFF7FF44C2DBFF5FB5D1FF85B1CCFFAEB9CFFFDFE1E4FFECEB
        EAFFECECEBFFECECEBFFEDEDECFFDFE2E1FFDFE0DFFFF0F0EFFFA4D6DEFFE6FC
        FFFF4DDCFEFF9ED7E7FF11BDFFFF5FCCFFFF3CC3FBFFF1F1F0FFF1F1F0FFF1F1
        F0FFCEE9D2FF43C85EFF38C654FF39C655FF39C655FF39C756FF3AC757FF3AC8
        57FF3AC858FF3BC959FF3BC959FF3BCA5AFF3CCA5AFF5ED277FFEBEAE9FFE9E8
        E7FF68BD8FFF0E62359F000000000000000000000000000000002626252E7294
        AACF1CB9EDFF47F2FFFF63D8CCFFDEC541FFB2D57DFF83D8B4FF54CAE0FF5DC1
        DBFF85BFD8FFADBDD4FFE1E4E8FFEEEEEDFFEEEEEDFFEFEFEEFFE1E1E0FFEEF3
        F3FFF0F1F0FFD1E2E4FFBAF5FFFFC9F7FFFF69DEFBFFF1F1F0FFF1F1F0FFE6EF
        E7FF52CE6CFF3AC858FF3BC959FF3BC959FF3BCA5AFF3CCA5BFF3CCB5BFF3CCB
        5CFF3DCC5DFF3DCC5DFF3DCD5EFF3ECD5EFF3ECE5FFF3ECE60FFEDECEBFFE5E4
        E3FFADD7C0FF169552EF0000000000000000000000000000000000000000062C
        393E18B4ECFF3FE9FFFF5BCBBFFFFFA619FFFFAE14FFFFB610FFF9B80BFFDBBF
        34FFB3D471FF90DFADFF58C2D5FF59C2DFFF75B8D8FF9EB8D5FFD4DDE7FFF0F0
        EFFFF1F1F0FFF1F1F0FFF0F2F1FFEFF4F3FFF1F1F0FFF1F1F0FFE5EEE6FF5ED2
        77FF3DCB5CFF3DCC5DFF3DCC5DFF3ECD5EFF3ECD5FFF3ECE5FFF3FCE60FF3FCF
        60FF3FCF61FF40CF62FF40D062FF40D063FF41D164FF41D164FFEEEEEDFFE5E4
        E3FFEEEEEDFF27A664FF093B215E00000000000000000000000000000000052A
        393E15AEECFF37E0FFFF60DFF5FFFFA533FFFFB75FFFFFCE8EFFFFB954FFFFAC
        27FFFFAE14FFFFB610FFFFBE0BFFEBC534FFBDD370FF8FDEAEFF55C3D9FF4AC2
        E4FF75C3E1FFA0C3DDFFD5DEE8FFF1F1F0FFF1F1F0FFE5EEE7FF60D47BFF3FCE
        60FF3FCF61FF3FCF61FF40D062FF40D062FF40D063FF41D164FF41D164FF41D2
        65FF42D266FF42D366FF42D367FF43D467FF43D468FF43D569FFF1F1F0FFE5E4
        E3FFEBEBEAFF6BC094FF147A46BF000000000000000000000000000000000429
        393E12A9ECFF2ED7FFFF5BD9F6FFFFBD54FFFFDBA6FFFFEACFFFFFDEB5FFFFD7
        A4FFFFCA87FFFFD091FFFFCC7EFFFFB843FFFFB323FFFFB610FFFFBE0BFFF3BE
        25FFC4CB62FF7ED7AFFF38D1F0FF66B8DDFFE6EFE7FF62D77EFF41D164FF41D2
        64FF41D265FF42D266FF42D366FF42D367FF43D468FF43D468FF43D569FF44D5
        69FF44D66AFF45D66BFF45D76BFF45D76CFF46D86DFF46D86DFFD1ECD7FFE7E6
        E5FFE8E7E6FFA1D4BAFF1DA55FFF03130B1E0000000000000000000000000328
        393E0EA3ECFF26CEFFFF55D2F6FFEAC45BFFFFEDB3FFFFE2A1FFFFECCBFFFFFF
        FFFFFFF1DDFFFFE1B8FFFFE9CEFFFFD198FFFFFFFFFFFFE1BBFFFFD79DFFFFD0
        7BFFFFCA5CFFB8AD48FF39E3FFFF95EAF7FF84DF9BFF43D468FF43D468FF44D5
        69FF44D56AFF44D66AFF45D66BFF45D76CFF45D76CFF46D86DFF46D86DFF46D9
        6EFF47D96FFF47DA6FFF47DA70FF48DA71FF48DB71FF48DB72FFC7EBD0FFE9E8
        E7FFE5E4E3FFE3ECE7FF1FA762FF0F52307E0000000000000000000000000226
        393E0B9DECFF1DC4FFFF4FCCF7FFEAD96FFFFFF991FFFFF38BFFFFEB83FFFFE8
        8DFFFFE698FFFFECB8FFFFE4B0FFFFD79CFFFFFFFFFFFFF0DCFFFFF4E6FFFFEE
        D9FFFFD095FFB6A153FF31D9FFFF46DABDFF45D76CFF45D76CFF46D86DFF46D8
        6EFF46D96EFF47D96FFF47DA6FFF47DA70FF48DB71FF48DB71FF48DC72FF49DC
        73FF49DC73FF49DD74FF4ADD75FF4ADE75FF4ADE76FF4BDF76FFC7ECD1FFEBEA
        E9FFE5E4E3FFEDECEBFF61BF90FF1C9357DF0000000000000000000000000225
        393E12A2EFFF31C9FFFF37C8FDFF89CDC6FFACDCBDFFC7DE9CFFF3EB89FFFFFD
        95FFFFF991FFFFF48CFFFFEB83FFFFE37BFFFFDD7BFFFFDB86FFFFE4A9FFFFDD
        A3FFFFEAC9FFB4A762FF28D0FFFF38D5B7FF47DA70FF48DB71FF48DB71FF48DC
        72FF49DC73FF49DD73FF4ADD74FF4ADD75FF4ADE75FF4BDE76FF4BDF77FF4BDF
        77FF4CE078FF4CE078FF4CE179FF4DE17AFF4DE27AFF4DE27BFFBDECCBFFEEED
        ECFFE5E4E3FFEAE9E8FFA3D6BCFF22AA67FF0A34204E00000000000000000415
        1D1E309DBFBF42C7EFEF4BD6FFFF51D9FFFF56DBFFFF4ED7FFFF44D2FFFF66C8
        DCFF8AD8D3FF9FD9C0FFC7DF9DFFF9F398FFFFF991FFFFF48CFFFFEC84FFFFE3
        7BFFFFD971FFB2B675FF1FC6FFFF2FCFCBFF4ADE75FF4ADE75FF4BDE76FF4BDF
        77FF4BDF77FF4CE078FF4CE079FF4CE179FF4DE17AFF4DE27AFF4DE27BFF4DE3
        7CFF4DE37CFF4DE37DFF4DE47DFF4DE47EFF4CE47FFF4CE47FFF9EEBB8FFF0F0
        EFFFE5E4E3FFE7E6E5FFE4ECE7FF24AC69FF166B419F00000000000000000000
        0000000000000000000009191E1E19424E4E2B6D7E7E46A6BFBF5DD3EFEF68E4
        FFFF6EE6FFFF74E9FFFF66E2FFFF56D9FFFF79D8EEFF97E4E4FF90D5C1FFB8D8
        A2FFF4E78BFFB0C586FF16BCFFFF25C6DDFF4CE179FF4DE17AFF4DE27BFF4DE2
        7BFF4DE37CFF4DE37CFF4DE37DFF4DE47EFF4DE47EFF4CE47FFF4CE47FFF4CE5
        80FF4CE581FF4CE581FF4BE682FF4BE682FF4BE683FF4BE683FF9EECBAFFF1F1
        F0FFE5E4E3FFE5E4E3FFF0F0EFFF4BBA84FF25AD6BFF020A060E000000000000
        0000000000000000000000000000000000000000000000000000000000000C1B
        1E1E22474E4E3A737E7E5CB1BFBF75DFE7EF87F2FFFF8DF5FFFF93F8FFFF7FED
        FFFF68E1FFFF6CDDFEFF33C6FFFF1EC0DEFF4DE47EFF4DE47EFF4CE47FFF4CE5
        7FFF4CE580FF4CE581FF4CE581FF4BE682FF4BE682FF4BE683FF4BE784FF4BE7
        84FF4AE785FF4AE785FF4AE886FF4AE886FF4AE887FF49E888FF9DEDBCFFF1F1
        F0FFE7E6E5FFE5E4E3FFECECEBFF98D4B7FF27AF6EFF0E41285E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003FB865CF51E485FF5DE89FFF70EEBFFF82F4
        D7FF95FBEFFFA2FFFFFF9CFDF7FF6CEFB1FF4BE682FF4BE683FF4BE683FF4BE7
        84FF4AE784FF4AE785FF4AE785FF4AE886FF4AE887FF49E887FF49E988FF49E9
        88FF49E989FF49E989FF49EA8AFF68EB9DFF91EBB5FFB8E9CBFFDEE7E0FFE6E5
        E4FFE9E8E7FFECECEBFFCAE4D7FF80CDA8FF20905BCF114C306E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000004CE581FF4BE681FF4BE682FF4BE683FF4BE6
        83FF4BE784FF50E88CFF55EA94FF4AE786FF4AE886FF4AE887FF49E887FF49E9
        88FF49E988FF49E989FF49E98AFF48EA8AFF48EA8BFF48EA8BFF48EA8CFF5DEB
        98FF87EDB2FFAFECC8FFD5E8DCFFE7E6E5FFE7E6E5FFEBEAE9FFE2EAE6FFB3DE
        CAFF76CBA3FF36835FAF134D326E05150E1E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000040D070E4AE785FF4AE886FF4AE886FF4AE887FF49E8
        87FF49E988FF49E989FF49E989FF49E98AFF48EA8AFF48EA8BFF48EA8BFF48EB
        8CFF48EB8CFF47EB8DFF47EB8EFF52EC94FF7CEDADFFA6EEC4FFD7EBDFFFE9E8
        E7FFE7E6E5FFE9E8E7FFECECEBFFCCE5D9FF90D4B5FF5CBB8FEF1D714B9F0E38
        244E020A070E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001239213E49E989FF49EA8AFF48EA8AFF48EA8BFF48EA
        8BFF48EB8CFF48EB8DFF47EB8DFF47EB8EFF47EC8EFF47EC8FFF47EC8FFF46EC
        90FF71EDA8FFA6EFC6FFCEEDDBFFEBEBEAFFE7E6E5FFE8E7E6FFEBEBEAFFE2EB
        E6FFA9DCC5FF79CEA8FF339A6CCF1B68458F0921162E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000016482B4E47EB8DFF47EB8EFF47EC8EFF47EC8FFF47EC
        8FFF46EC90FF46ED91FF46ED91FF46ED92FF66EEA3FF9BEFC1FFC5EFD7FFEDEC
        EBFFE9E8E7FFE8E7E6FFE9E8E7FFEDECEBFFC0E2D2FF91D6B7FF55C593FF2280
        56AF1651366E06160F1E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002375487E46ED91FF46ED92FF46EE92FF45EE93FF45EE
        93FF65EFA5FF90EFBCFFBBF0D3FFE4EFE8FFEBEBEAFFE8E8E7FFE8E7E6FFEBEB
        EAFFD6E7DFFFA9DCC5FF6DCBA1FF3AB27DEF1F754F9F0F39274E030A070E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002786548F45EF95FF3CD182DF76E1A8EFB0F0CEFFDBF0
        E4FFEDECEBFFEAE9E8FFE8E7E6FFE9E8E7FFEDECEBFFB4DFCBFF85D2AFFF55C5
        93FF32BB7EFF32BB7EFF1C69478F000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000015492E4E081C121E000000005959585E7575747ECBCA
        C9DFEBEBEAFFD0D0CFDF8787878F4A4A494E0922172E299866CF32BB7EFF32BB
        7EFF2FAF76EF228056AF030A070E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001C1C
        1C1E1C1C1C1E00000000000000000000000000000000000000000C2D1F3E030A
        070E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00003E3B3B44A09F9CC1676762904343405C2222212F0A09090D000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001817
        171BCAC2C3E0CCCBC7FFB4B2AAFFB9B8B0FFB9B8B0FCA9A8A1E58C8B85BE6767
        628D42423F5A2222202E0909080C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000001010101A098
        9AB3D9D1D2FFD5D3D1FFC2BFBBFFBCB9B3FFB7B4AFFFB6B4ADFFB4B2ABFFB6B4
        ADFFB9B7AFFFB8B7AFFCA7A69FE48A8A83BC6665618B41413E5A151414190000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000706B6B7DDAD1
        D2FFD9D1D1FFF5F5F4FFF6F6F5FFEEEEECFFE6E5E2FFDCDBD8FFD1CFCCFFC7C6
        C1FFC0BDB8FFBAB7B2FFB8B5AFFFB7B4AEFFB7B5ADFFB5B5ACFF8A8584A70000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000003F3C3D47DED4D5FDD5CB
        CCFFEBE3E4FFF3F3F3FFF7F7F6FFFAFAF9FFFBFBFAFFFCFCFBFFFBFBFAFFF7F7
        F6FFF2F2F0FFEAE9E7FFE0DFDCFFD6D5D1FFCDCAC6FFC3C0BBFF95908EBD0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001918181CC8BFC0E1D5CCCDFFE3D9
        DAFFF0EFEEFFEDEDE8FFE4E4E1FFECEBE7FFF4F2ECFFEEEEEEFFF7F7F7FFF9F9
        F8FFF9F9F8FFF9FAF9FFFBFBFBFFFBFBFBFFF9FAF8FFF5F6F4FF8C88889B0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001010101A19A9BB4D8CFD0FFDCD2D3FFEFEB
        EBFFF2F2EEFFC7C8D7FF1F339BFF293A91FF7983B5FFEAE9E5FFD0D0D0FFDFDF
        DFFFE9E9E8FFF5EEF3FFF7F1F5FFFBF5FAFFF2F3F2FFF4F3F3FF413E3E480000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000706B6C7EDCD3D3FFD8CECFFFEBE2E3FFF1F1
        F1FFF3F2E7FF4A57B3FF0A2DD4FF0015C9FF5361CAFFB9B9B0FF9D9D9DFF9696
        96FFC5C2C3FF64A471FF448C53FF85AD8BFFE4E3E2FF84818192000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000403D3E48DED5D6FDD6CDCEFFE4DADBFFF2F0F0FFEDEE
        EDFFB0AEA4FF465495FF103AE6FF214CFFFF9BA4CEFFB7B6AFFFDBDBDBFFC2BA
        C0FF6EAC7EFF08A02DFF009017FF2C9033FFA9A5A6B904040404000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000016151519C8BFC0E1D6CDCEFFDFD4D5FFEFEAEAFFF5F6F5FFC8C8
        C8FF979797FFA6A5A1FF919090FFC4C3C9FF9B9A94FFADADADFFCCCCCCFFD5CB
        D2FF5F966EFF07C63AFF00D22FFF7DBD85DA1715161800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000080808099A9394ACD8CFD0FFDBD1D3FFE9E1E2FFF6F6F6FFD7D7D6FF9A9B
        9BFFC1C1C0FFD2D2D2FFD2D2D1FFB4B4B2FFCCCCCCFFBFBFC0FFC1C1C2FFB1B0
        B0FFA2A0A1FF7C897EFFB3C9B5F12C292A30000000000404040C18191A4B0607
        0754000000010000000000000000000000000000000000000000000000000000
        0000716C6D7FDFD5D6FFDAD0D1FFE4D9DAFFF4F2F2FFE6E7E7FF9E9E9EFFAAAA
        A9FFABABAAFFD0D0CFFFBDBDBDFFA3A3A3FFC0BFBFFFD7D7D7FFBBBBBCFFC0C0
        C0FFD4D3D4FFD0CCCEFF58525572181718402C2E32A05D5D5CE3908074FF6B61
        58FF0000003C0000000000000000000000000000000000000000000000000000
        00008C86879FC3BCBDFFCBC2C3FFF2EDEDFFF4F5F4FFC4C5C5FFAFAFAFFFD5D5
        D5FFCDCDCDFFCBCBCCFFB1B1B1FFC7C7C6FFB7B7B7FFC4C5C5FFB5B5B4FFB1B1
        B1FFD2D2D1FF888687F5535053E3AC9A8DFFC3A080FFC27F4DFFBE6324FFBF93
        71FF0F1315880000000000000000000000000000000000000000000000000000
        00008782829FBEB6B8FFCDC8C9FFFEFDFDFFCACACAFFA2A2A2FFACACABFFB9B9
        B9FFD9DAD9FF999999FFABABABFFCFCFCFFFD6D6D7FFC0C0C1FFDADADAFFD8D9
        D8FF9E9B9EFF000000FFAEADAEFFC49F7EFFC67B39FFCB8854FFC4A489FF9285
        7CFF0E0F10D10000000200000000000000000000000000000000000000000000
        0000908A8A9FC9C1C2FFB9B9B9FFDADADAFFACADADFFCFCFCEFFD3D3D3FFD2D2
        D2FFABABABFFAFAFAFFFA4A4A3FFC7C7C7FFBCBCBCFFB5B5B5FFC3C3C3FFCBC9
        CBFF201721FF000002FF5F5E6AFFAFD7E7FFAB998EFF696168FF2B2633FF0604
        0CFF020003FE0100013100000000000000000000000000000000000000000000
        00008D86879FECE7E7FFC1C2C2FFB6B6B6FFBDBDBDFFC4C4C4FFC7C7C6FF9D9D
        9DFF828282FFB2B2B1FFB2B1B2FFB2B2B3FFD0D1D0FFE2E3E2FFC4C3C3FF3F37
        42FF08000CFF150619FF140718FF2D1C2DFF0F0518FF010007FF0A000EFF1002
        13FF0D0210FF0400067A00000000000000000000000000000000000000000000
        0000918C8C9DF1F1F1FFE7E7E7FFE8E8E8FFE6E6E6FFE3E3E3FFECECECFF8989
        89FF000000FF424243FF605F60FF4F4B50FF464148FF5D555EFF3B313EFF0C00
        10FF16061BFF14021AFF130118FF100017FF27142DFF524256FF6C6070FF311F
        36FF120017FF0D0211C600000000000000000000000000000000000000000000
        00003232323384848492949494A7A7A7A7BCB8B8B8CFC7C7C7E0DADADAEFC3C4
        C4FA0D0E0EFF121212FF0B090CFF000002FF050006FF07000AFF0B0010FF1400
        1AFF1D0723FF311B38FF503A55FF543F5BFF381D40FF614B69FF3F2448FF280A
        31FF20042AFF190421F904000529000000000000000000000000000000000000
        000000000000000000000000000000000000010101010909090A131313152626
        272D2E2E2EDE000000FF010003FF060009FF0C000EFF16071BFF2D1B33FF4B38
        51FF2D1235FF573F60FF583B63FF401D4EFF2C043AFF290136FF2A0138FF2C05
        3BFF2B0639FF250531FF0D01116E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000039393998000000FF0D090FFF271E29FF403543FF311F36FF614D67FF563D
        5EFF310F3EFF2D043DFF300240FF320344FF340646FF340544FF320545FF3305
        46FF320544FF2E053EFF1C0424BA0601082A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00002929294C090609FF453F48FF645B68FF48384DFF25092DFF270431FF2100
        31FF2A013BFF330345FF320146FF350548FF350548FF350548FF360549FF3605
        49FF360549FF320344FF2A0437F5120418720000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000A0A0A102E2B2FE4120317FF1B0723FF14001CFF24012FFF411C4EFF6B4D
        76FF928298FF4E2C5CFF472056FF37084AFF350449FF360549FF360549FF3504
        48FF350347FF360B4CFB250932B90C0311480000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002D282FA315001BFF361E3EFF705A77FFA292A7FFBDB4C1FFBEB6
        C2FFC0BAC2FFA59AA9FF918297FF390B4BFF350348FF360549FF340646F22A09
        39B71B0A246A0B0A122400000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000016111759200628FF6F5E75FFE7E1E7FFD5CFD7FFD6CFD8FFA28E
        A9FF775B82FF4C245CFF340447FF320544EC270634B216031D640601081B0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000006040619361C3FEC553461FFC8BCCCFF947C9CFF5C366BFF3101
        45FF280039DF20012B9B120218520601081A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000473B4CAE28003BFF300242FD270037D41C03278B1004
        143F020103090000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001F1F2038271030981203185204010510000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object ManagerReportBtn: TdxBarLargeButton
      Caption = #1055#1088#1077#1084#1080#1103' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
      Category = 0
      Hint = #1055#1088#1077#1084#1080#1103' '#1084#1077#1085#1077#1076#1078#1077#1088#1072
      Visible = ivAlways
      OnClick = ManagerReportBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000050504050D0D0C0E1918171B2523
        2129312E2A383B373145423D3450484137594D4439614F463A6550473A665047
        3A654C45396047403758413B344E3A3530432E2C283523222027161615180C0C
        0B0D040404040000000000000000000000000000000000000000000000000000
        0000000000000000000009090909201F1E233A3731434F473C615E51407C6656
        3F8F6F593CA4775A35B97B592CCA7D5722D77F561AE1805717E6805615E88057
        17E67E561BE07C5623D579582DC5745934B46F593BA467563E915C5040784C45
        3B5C36332E3D1D1C1B1F06060606010101010000000000000000000000000000
        0000000000000000000009090909222120253B37334346403A55554A3D6F715D
        3BA085672ACE8B6916EA8B6607F88D6700FF8C6800FF8C6800FF8C6800FF8C68
        00FF8C6800FF8C6703FE89630DF27F5E21D56E5839A4635441875D5241794C45
        3B5D36332F3E1E1D1C2006060606010101010000000000000000000000000000
        000000000000000000000000000000000000020202023935244288722CB49F7F
        0FEF8C6F01FF8A6A00FF8C6A00FF8D6C01FF8F6E02FF917005FF947308FF9676
        0AFF97770CFF98780CFF97770AFF947407FF896E1DDF47402E5B0B0A0A0C0D0D
        0D0E050504050000000000000000000000000000000000000000000000000000
        00000000000000000000000000001612011A7962079BB08A00F8A07B00FF9A78
        00FF6F5A02FF7E6302FF8D6D04FF876604FF93720AFF997A10FF9E7F16FF9F82
        18FFA1841AFFA4871EFFA68A22FFA3861DFF9A7C0DFF846808DE1A170D230000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001915001EA38300CAB99301FFA48102FF916F02FF9D7D
        05FF625104FF655102FF9F8109FF876B0FFF8C6F12FF9F821AFFA68A21FFA98E
        25FFAE942EFFB49B37FFB8A13EFFB9A342FFB19834FFA4861DFF5746088E0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000D0B000F8E7403A9C19B03FFAB8603FF967302FF8D6B02FFA586
        08FF604F05FF443701FF987D05FFA68D15FF856C1BFF957B20FFAB912CFFB79E
        38FFBEA846FFC2AE4FFFC6B356FFC8B65BFFC8B65BFFB39A35FF7F6A1CBF0101
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000004236014EC7A204F8B69103FF9E7C02FF8F6C02FF906F03FFAB8E
        0CFF5F4D04FF3B3002FF796406FFB2980AFFA38D1FFF856E24FFA58E35FFC1AB
        4BFFCCB85BFFD0BF64FFD3C46BFFD5C66FFFD7C873FFC4B152FF907A25CF0C0B
        0312000000000000000000000000000000000000000000000000000000000000
        0000000000005E4D0272C59E04FFAC8803FF947202FF8C6A01FF977707FFAF94
        11FF5A4A03FF453905FF6A5B11FFA08605FFB9A110FFA38E2BFF95823CFFBCAA
        55FFD3C36CFFDBCD79FFDED380FFE0D585FFE2D789FFD5C66FFFA18C32DD1614
        071F000000000000000000000000000000000000000000000000000000000000
        00000000000054440269BC9703FEA38002FF916E02FF8C6901FFA2840EFFB198
        12FF554501FF504407FF71651DFF89751FFFB49B08FFBCA617FFAD9B3CFFAA9A
        58FFCBBD71FFE0D587FFE7DE93FFE9E196FFEAE29BFFDFD484FFAA963BDF1A16
        0922000000000000000000000000000000000000000000000000000000000000
        000000000000392E014AB38E03F89E7A02FF8E6C02FF8D6C02FFB09618FFB199
        12FF514101FF524608FF80731FFF887E5EFFAC971EFFB9A40BFFBFAA19FFBAAA
        49FFB9AC70FFD5CB89FFEAE29EFFF0EAA7FFF2EDAEFFE6DB8FFFAC9A44D91614
        091C000000000000000000000000000000000000000000000000000000000000
        0000000000001C160125997A03DA9B7702FF8C6900FF95750AFFBAA41EFFB49C
        18FF6E5F2CFF4C4003FF7F7216FF928C78FFA79B64FFB7A008FFBEAA12FFC3AE
        18FFC5B753FFC6BB85FFDFD79DFFF2ECB2FFF9F5C1FFE7DB8EFFA79A54C70808
        0609000000000000000000000000000000000000000000000000000000000000
        0000000000000806000B6E57029F9A7702FF8A6700FFA4881AFFBEA91FFFB39A
        15FFB2A88AFF60552BFF6B5D04FF978F6DFFB0AEB3FFAA972BFFBFAA0EFFC0AC
        14FFC6B319FFCDC267FFD5CD9CFFF0ECBAFFFCFAD3FFE7DC8EFF8B83589C0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000392D01539A7702FF8B6900FFB39B28FFBEAA1CFFAF97
        0DFFD0C7ADFFA5A08CFF4F4100FF8C825BFFBFBFCDFF9D9579FFA9960DFFBEAC
        11FFC4B211FFD1C556FFDBD4A4FFF3F0C5FFFBF9DDFFE7DB8CFF4E4B39550000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000907000D7A5E02C78B6900FFB09727FFC2AF22FFB099
        0CFFC3B999FFDBDBDFFF4C4111FF5E5325FFA8A7A5FF9E9DA2FFC5C2B0FFCAC2
        6CFFC4B420FFD3CA85FFE2DCAFFFF6F4CCFFF1EBAFFFBAB170CE0C0C0B0C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000302300528A6600FF927108FFAC931DFFB29D
        17FFAFA57CFFC3C3CBFF68612CFF766E14FF7C7549FFBEBCC0FFE0DFE8FFD4D2
        CEFFBDB038FFD0C458FFE3DCA0FFEAE3A9FFDDCF6FFC4E4C3F54000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000005E522C87815B00FF9D8018FFBAAA
        3BFFBCB9A7FFABABB2FF736A36FF83781BFF9F9B7AFFB8BDC0FFB8BBB9FFC2C4
        CBFFB7AD69FFBDAA03FFD3C72FFFDCD062FF7F795A9202020202000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000505040570633A9ABDA827FFB3A0
        16FFC0BCA4FFC5C2C6FF9FA29EFF7A979CFF80B1DCFF73A9E0FF74A8DEFF8EBA
        E1FF9DBEC7FFA7AA49FFCBBB21FB989269A82323232504040404000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000001010101000000002B2B282CBBAF4FE1B8A4
        0EFFBAAB5DFFACBED4FF78B5ECFF61A5F4FF5291E7FF4E8BE3FF4D8DE3FF5C9B
        E6FF84BCF5FF8EC4E9FF84A09FD7272727330909090B03030304000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000303030307070707343432366A65
        50738A9380C36DAEEAFF5899E8FF518CE0FF5190E1FF5496E2FF569BE2FF539B
        E1FF64A8E5FFA0D2F7FF97D0FDFF47657EA60202020600000000000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000101010105050505020202021414
        15166396C7D25798E6FF508BE1FF5393E1FF579AE2FF58A0E2FF59A5E2FF5AA8
        E3FF55A6E1FF75BAE8FFC2EDFCFF77B2F6FF0A14326B00000000000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000001010101000000004352
        5F685BA0E8FF518CE1FF5392E1FF569BE2FF59A1E2FF5AA8E3FF5FADE3FF67B3
        E5FF6EB6E7FF6CB5E7FFA1D7F4FFACDCF9FF224895D002020413000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000597E
        A1B25392E4FF518EE1FF5699E2FF58A1E2FF5AA8E3FF62B0E4FF73B9E8FF81C1
        ECFF8BC7EEFF8CC7EFFF93CBF0FFAADFF7FF64A2E3F8070A153E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000060A0D0E5286
        BACB538EE1FF5392E2FF589DE2FF59A4E3FF5EADE3FF72B9E8FF87C4EEFF97CE
        F2FFA4D5F5FFAAD8F7FFAADAF7FF9DCFF0FF6EA8F3FF0B142C5E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000070B0F105084
        BACD528DE1FF5597E4FF58A1E5FF5BA9E5FF68B4E8FF80C2EDFF97CFF3FFACDA
        F8FFBFE5FCFFCAEDFFFFBADCF2FF3E67CDFF2365E9FF0F1D3667000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004A78
        ABBC508BDDFF5392D8FF569CD4FF58A3D1FF66ADD4FF7EBBDEFF97CBEAFFB0D9
        F1FFC4E5FAFFD9F8FFFF6E90DAFF1B5EDFFF5FA1F5FF131A224E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000304E
        6B7A4B81C4FF3E6DB0FF2F58A2FF234A9FFF1D41A9FF1C3CB4FF1A34B3FF223C
        B5FF3A6FDEFF5B86E7FF1E44CEFF4586E9FFA3C5DAE50F111228000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000C15
        242C2547B7F40F2DC0FF0C2DC5FF092CCBFF0D36D6FF0B36D0FF0D35C5FF2461
        DBFF276FE3FF1757D8FF1147D3FF73ADF8FF617076A200000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000030D
        495E1643DBFF1D4EE0FF1E52DFFF225CDEFF2F74E0FF4A89E8FF6BA1F3FF7FAF
        F7FF79A8F1FF5C97E8FF296EE0FF4D81CDE20E10132A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000104
        171E0E266A7A1943C2E31D51DBFF286CDDFF4D8BE8FF87AFF6FFB8D1FFFFD4E5
        FFFFD9EBFEFFAFD1FCFF346CC3E60C15253C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003091B1F14378CA32869D3F44F8CE8FF8BB3F6FFB6D1FDFFC8DF
        FDFFB6D3F8FF5C8DD3DD0B15244D000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000001030308162F361A3E7181355FA0B14670B2C1395C
        929E1930525C040B161900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
    end
    object dxBarButton13: TdxBarButton
      Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object PrintPlanBtn: TdxBarLargeButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      OnClick = PrintPlanBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000001B0000002C0000
        002C000000380000003800000038000000380000003800000038000000380000
        003800000038000000380000003800000038000000380000002C0000002C0000
        001B000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000FED6
        AFFFFED6AFFFFED6AFFFFED6AFFFFED6AFFFFED7B1FFFED7B1FFFED8B2FFFED9
        B4FFFED9B5FFFEDAB7FFFEDAB7FFFEDBB9FFFEDCBAFFFEDCBAFF000000000000
        00000000000000000000000000000000000000000000000000000000000E0000
        001000000013000000140000001600000018000000191212123114141431FED4
        ABFFFED4ABFFFED4ABFFFED4ABFFFED4ADFFFED5ADFFFED5AFFFFED6B0FFFED7
        B2FFFED8B3FFFED8B3FFFED9B5FFFED9B6FFFEDAB8FFFFDBBAFF121212310000
        001900000018000000160000001400000013000000100000000E000000170000
        0030000000344040407FADADADFFADADADFFADADADFFADADADFF646363FFFFCD
        9EFFFFCD9EFFFFCD9EFFFFCEA0FFFFCFA2FFFFD0A4FFFFD2A7FFFFD4ABFFFFD6
        AEFFFFD7B0FFFFD8B2FFFFD9B6FFFFDBB9FFFFDDBDFFFFDDBDFF646464FFADAD
        ADFFADADADFFADADADFF4C4C4C8C000000340000003000000017000000090000
        00174848487AADADADFFCECECEFFCECECEFFCECECEFFCECECEFF333333FFE8BB
        90FFE8BB90FFE8BB91FFE8BC94FFE8BC95FFE8BE98FFE8C09BFFE8C29EFFE8C4
        A1FFE8C4A2FFE8C5A5FFE8C6A8FFE8C8ABFFE8CAAEFFE8CAAEFF333333FFCCCC
        CCFFCCCCCCFFCCCCCCFFADADADFF5F5F5F940000001700000009000000000000
        0000ADADADFFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FFD1D1D1FF333333FFC5A0
        7CFFC5A07CFFC5A17FFFC5A280FFC5A282FFC5A484FFC5A688FFC5A789FFC5A7
        8AFFC5A88CFFC5A98FFFC5AA92FFC5AC95FFC5AD97FFC5AD97FF333333FFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFADADADFF0000000000000000000000000000
        0000ADADADFFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FFD4D4D4FF343232FF9F84
        74FF9F8474FF9F8474FF9F8474FF9F8575FF9F8575FF9F8575FF9F8576FF9F86
        76FF9F8677FF9F8677FF9F8678FF9F8678FF9F8678FF9F8678FF343232FFCFCF
        CFFFC8CCCAFFCECECEFFCECECEFFADADADFF0000000000000000000000000000
        0000ADADADFFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFD6D6D6FFD6D6
        D6FFD6D6D6FFD5D5D5FFD5D5D5FFD5D5D5FFD5D5D5FFD4D4D4FFD4D4D4FFD4D4
        D4FFD4D4D4FFD3D3D3FFD3D3D3FFD3D3D3FFD3D3D3FFD2D2D2FFD2D2D2FFCDD0
        CFFF3AA577FFC5CDCAFFD1D1D1FFADADADFF0000000000000000000000000000
        0000ADADADFFD9D9D9FFD9D9D9FFF0F0F0FFE5ECE9FFDEE9E4FFDEE9E4FFDEE9
        E4FFDEE9E4FFDEE9E4FFDEE9E4FFDEE9E4FFDEE9E4FFDEE9E4FFDEE9E4FFDEE9
        E4FFDEE9E4FFDEE9E4FFDEE9E4FFDEE9E4FFDEE9E4FFDEE9E4FFDEE9E4FFECEE
        EDFFEAECEBFFD4D4D4FFD4D4D4FFADADADFF0000000000000000000000000000
        0000ADADADFFDCDCDCFFEDEDEDFFB2DCCAFF279C6BFF289C6BFF289C6BFF299C
        6AFF289C6AFF289B6AFF299B6AFF289A6AFF299B69FF299B69FF299B69FF299A
        69FF299A69FF299A69FF299A69FF299A69FF299A69FF299A69FF299A69FF299A
        69FFCBE8DCFFEAEAEAFFD7D7D7FFADADADFF0000000000000000000000000000
        0000A5A5A5ECE0E0E0FFF9FCFBFF26A06EFF4BCCA0FF4BCCA0FF4BCCA0FF4BCC
        A0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCC
        A0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCCA0FF4BCC
        A0FF299A69FFFFFFFFFFDADADAFFA8A8A8F00000000000000000000000000000
        0000A2A2A2E6EAEAEAFFF4FAF7FF24A471FF48CA9EFF24A775FF24A775FF25A5
        73FF25A573FF25A573FF25A573FF25A573FF25A573FF25A573FF25A573FF25A5
        73FF25A573FF25A573FF25A573FF25A573FF25A573FF25A573FF24A775FF48CA
        9EFF289C6CFFFFFFFFFFE5E5E5FFA8A8A8EC0000000000000000000000000000
        0000A4A4A4E3F6F6F6FFF3FAF7FF22A776FF43C99CFF22AF7CFF1FBA86FF1FBA
        86FF1FBA86FF1FBA86FF1FBA86FF1FBA86FF1FBA86FF1FBA86FF1FBA86FF1FBA
        86FF1FBA86FF1FBA86FF1FBA86FF1FBA86FF1FBA86FF1FBA86FF22AF7CFF44C9
        9CFF26A06FFFFFFFFFFFF3F3F3FFACACACEC0000000000000000000000000000
        0000A8A8A8E3FFFFFFFFEEFAF5FF1FAD79FF5BE0B7FF27C290FF27C896FF27C8
        96FF27C896FF27C896FF27C896FF27C896FF27C896FF27C896FF27C896FF27C8
        96FF27C896FF27C896FF27C896FF27C896FF27C896FF27C896FF27C18FFF63E6
        BFFF24A371FFFFFFFFFFFFFFFFFFB4B4B4EE0000000000000000000000000000
        0000AAAAAAE0FFFFFFFFE6F8F2FF1DB07DFF6DEEC8FF6DEEC8FF6DEEC8FF6DEE
        C8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEE
        C8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEE
        C8FF22A875FFFFFFFFFFFFFFFFFFBABABAEE0000000000000000000000000000
        0000A1A1A1D5FFFFFFFFDDF7EFFF1BB481FF6DEEC8FF6DEEC8FF6DEEC8FF6DEE
        C8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEE
        C8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEEC8FF6DEE
        C8FF1FAC79FFFFFFFFFFFFFFFFFFB5B5B5E70000000000000000000000000000
        0000979797C9FEFEFEFFE6FAF4FF19B884FF6DEEC8FF48DEB1FF4CB588FF4CB5
        88FF4CB588FF4CB588FF4CB587FF4CB487FF4CB487FF4CB488FF4CB488FF4CB5
        88FF4CB588FF4CB589FF4CB588FF4CB488FF4CB488FF44B88AFF32D4A3FF62E8
        C0FF1DB17DFFFFFFFFFFFEFEFEFFACACACDC0000000000000000000000000000
        00007D7D7DA8EFEFEFFFF6FCFAFF17BC87FF5DE7BEFF24C18EFFECBE97FFECBF
        98FFECBF98FFECBF98FFECBF98FFECBF98FFECBF98FFECBF98FFECBF98FFECBF
        98FFECBF98FFECBF98FFECBF98FFECBF98FFECBF98FFECBF98FF25BE8CFF26CE
        9CFF1AB480FFFFFFFFFFF3F3F3FF909090BE0000000000000000000000000000
        00000D0D0D13969696C6C4CECAFD16BE89FF55C09FFF4AB590FEF1C9A1FFF3CC
        A4FFF3CCA4FFF3CCA4FFF3CCA4FFF3CCA4FFF3CCA4FFF3CCA4FFF3CCA4FFF3CC
        A4FFF3CCA4FFF3CCA4FFF3CCA4FFF3CCA4FFF3CCA4FFF3CBA3FF48B38DFE54BE
        9EFD19B884FFBDBDBDE99D9D9DCE1A1A1A240000000000000000000000000000
        0000000000000000000023232332161616201616162000000000F5D1ACFFF9D8
        B3FFF9D8B3FFF8D8B3FFF9D8B3FFF9D8B2FFF8D8B2FFF9D8B3FFF9D8B3FFF9D8
        B2FFF8D8B2FFF9D8B2FFF9D8B3FFF9D8B3FFF9D8B2FFF7D5B0FF171818231616
        1620161616201111111800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000F4D0ACFFF9D9
        B5FFF9D9B5FFF9D9B5FFF9D9B5FFF9D9B6FFF9D9B6FFF9DAB6FFF9DAB6FFF9D9
        B5FFF9DAB5FFF9DAB5FFF9D9B6FFF9D9B5FFF9D9B5FFF6D4AFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000F3CEAAFFF9DA
        B8FFFADBB8FFFADBB8FFF9DAB8FFFADBB8FFFADBB8FFF9DBB8FFF9DBB8FFF9DB
        B9FFF9DBB8FFF9DAB8FFFADBB8FFFADBB8FFF9DBB8FFF5D2AFFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000F2CCA9FFF9DC
        BBFFFADDBBFFFADCBBFFFADCBBFFFADDBAFFFADDBBFFF9DCBBFFFADDBBFFF9DC
        BBFFFADCBBFFF9DCBBFFFADCBBFFF9DCBBFFFADCBAFFF4D0AEFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000F1CBA7FFFADE
        BEFFFADEBDFFFADEBEFFFADDBDFFFADDBDFFFADDBDFFFADEBEFFFADEBEFFFADD
        BDFFFADDBEFFFADEBDFFFADEBEFFFADDBEFFFADDBEFFF3CFADFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000F0C9A7FFFADF
        C1FFFAE0C0FFFADFC0FFFADFC0FFFBDFC0FFFADFC0FFFBDFC0FFFADFC1FFFADF
        C0FFFBDFC0FFFADFC0FFFADFC0FFFADFC0FFFBDFC0FFF1CCABFF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EFC8A5FFFAE1
        C3FFFAE0C2FFFBE0C3FFFAE0C2FFFAE0C2FFFBE0C3FFFAE0C3FFFAE0C3FFFAE0
        C3FFFAE0C3FFFAE0C2FFFBE0C2FFFAE0C2FFFAE0C3FFF1CBA9FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EEC7A5FFFBE2
        C5FFFBE2C4FFFAE1C5FFFBE1C4FFFBE2C5FFFAE2C4FFFBE1C5FFFAE1C5FFFBE1
        C5FFFBE1C5FFFBE1C4FFFBE1C4FFFBE2C4FFFBE1C5FFEFC8A7FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000EFC7A5FFEFC7
        A5FFEFC7A5FFEFC7A5FFEFC7A5FFEFC7A5FFEFC7A5FFEFC7A5FFEFC7A5FFEFC7
        A5FFEFC7A5FFEFC7A5FFEFC7A5FFEFC7A5FFEFC7A5FFEFC7A6FF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton14: TdxBarButton
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1044#1086#1073#1072#1074#1080#1090#1100
      Visible = ivAlways
    end
    object dxBarButton15: TdxBarButton
      Category = 0
      Visible = ivAlways
    end
    object cxBarEditItem8: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
    end
    object cxBarEditItem9: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cxBarEditItem10: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarDateCombo1: TdxBarDateCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDD00000000000DDDDD0FFFFFFFFF0D00000F0000000F0D0FFF0FFFFFFF
        FF0D0F000FFF11FFFF0D0FFF0FFF11FFFF0D0FF10FFFF11FFF0D0FF10FFFFF11
        FF0D0FF10FF11111FF0D0FF10FFFFFFFFF0D0FF104444444440D0FFF04444444
        440D044400000000000D04444444440DDDDD00000000000DDDDD}
      Width = 100
    end
    object dxBarButton16: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cxBarEditItem11: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
    end
    object dxBarContainerItem1: TdxBarContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object cxBarEditItem12: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object cxBarEditItem13: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarLargeButton5: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object cxBarEditItem14: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object dxBarButton17: TdxBarButton
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Category = 0
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Visible = ivAlways
      ImageIndex = 3
      OnClick = dxBarButton17Click
    end
    object cxBarEditItem15: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
    end
    object ChangeModeVinnik: TcxBarEditItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Category = 0
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = cxBarEditItem16PropertiesEditValueChanged
      InternalEditValue = False
    end
    object dxBarSubItem1: TdxBarSubItem
      Caption = 'New SubItem'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object dxBarContainerItem2: TdxBarContainerItem
      Caption = 'New Item'
      Category = 0
      Visible = ivAlways
      ItemLinks = <>
    end
    object VBeginDateEdit: TcxBarEditItem
      Caption = #1089':   '
      Category = 0
      Hint = #1089':   '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DateButtons = [btnToday]
      Properties.ShowTime = False
      Properties.OnEditValueChanged = VBeginDateEditPropertiesEditValueChanged
      InternalEditValue = 0d
    end
    object VEndDateEdit: TcxBarEditItem
      Caption = #1087#1086': '
      Category = 0
      Hint = #1087#1086': '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DateButtons = [btnToday]
      Properties.ShowTime = False
      Properties.OnEditValueChanged = VBeginDateEditPropertiesEditValueChanged
      InternalEditValue = 0d
    end
    object dxBarButton18: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton6: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivNever
      OnClick = dxBarLargeButton6Click
    end
    object dxBarLargeButton7: TdxBarLargeButton
      Caption = #1055#1088#1086#1089#1084#1086#1090#1088
      Category = 0
      Hint = #1055#1088#1086#1089#1084#1086#1090#1088
      Visible = ivNever
      OnClick = dxBarLargeButton7Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000300000000000000000000000000000002000000030000
        00080000000E0000000E0000000F0000000B0000000800000008000000080000
        00080000000C0000000F0000000E0000000D0000000600000003000000020000
        0000000000000000000100000004000000010000000000000000000000000000
        00080000001B0000001B0308103A0515285305142655051426570515285A0309
        11490000003500000141000001360E0903501B1102601A10025F1A10025F1B10
        025F08050249000001370000014100000034060D075009160A5B08150A570815
        095508150A51020402320000001E0000001B0000000800000000000000000000
        0004000000080725465F1570D5F0177AE6FF177AE6FF177AE6FF177AE7FF1571
        D6F20826466E000000173E24047F995802F6A25D01FFA15D01FFA15D01FFA25D
        01FF925403ED2817036100000016153D1A912B7F36FA2D8338FF2D8338FF2D83
        38FF2D8338FF267230E408160A3C0000000B0000000400000000000000000000
        0000000000001267BCCC1580E9FF157FE9FF157FE9FF157FE9FF157FE9FF1580
        EAFF1069C1CF00000000935301E0A55F00FFA55F00FFA55F00FFA55F00FFA45F
        00FFA56000FF733F01AC000202022C873FF62D8B40FF2D8B40FF2D8B40FF2D8B
        40FF2D8B40FF2D8B40FF1C55279A000000000000000000000000000000000000
        0000000000001371C5D81484E9FF1484E9FF1484E9FF1484E9FF1484E9FF1484
        E9FF0F70C9D802010002945500E1A76100FFA76100FFA76100FFA76100FFA761
        00FFA76100FF764000AE000F0B142E9249FF2D9148FF2D9148FF2D9148FF2D91
        48FF2D9148FF2D9148FF1D5F2EA7000000000000000000000000000000000000
        0000000000001172C3D51388EAFF1388EAFF1388EAFF1388EAFF1388EAFF1388
        EAFF0D72C8D602010002955600E0A96300FFA96300FFA96300FFA96300FFA963
        00FFA96300FF774100AD000F0B132E984FFD2D984FFF2D984FFF2D984FFF2D98
        4FFF2D984FFF2D984FFF1D6132A3000000000000000000000000000000000000
        0000000000001077C4D5118DEBFF118DEBFF118DEBFF118DEBFF118DEBFF118D
        EBFF0C77C9D602010002975800E0AB6500FFAB6500FFAB6500FFAB6500FFAB65
        00FFAB6500FF784300AD00100C132E9F58FD2D9F58FF2D9F58FF2D9F58FF2D9F
        58FF2D9F58FF2D9F58FF1D6639A4000000000000000000000000000000000000
        0000000000000F7AC5D51091ECFF1091ECFF1091ECFF1091ECFF1091ECFF1091
        ECFF0B7BC9D6020100029A5A00E0AE6800FFAE6800FFAE6800FFAE6800FFAE68
        00FFAE6800FF7A4500AD00100D132EA65FFD2DA65FFF2DA65FFF2DA65FFF2DA6
        5FFF2DA65FFF2DA65FFF1D6B3DA4000000000000000000000000000000000000
        0000000000000D7DC6D50E95EDFF0E95EDFF0E95EDFF0E95EDFF0E95EDFF0E95
        EDFF097ECAD6020100029B5C00E0B06A00FFB06A00FFB06A00FFB06A00FFB06A
        00FFB06A00FF7B4500AD00110E132EAC66FD2DAC66FF2DAC66FF2DAC66FF2DAC
        66FF2DAC66FF2DAC66FF1D6F42A4000000000000000000000000000000000000
        0000000000000D81C7D50D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9A
        EEFF0882CBD6020100029D5E00E0B26C00FFB26C00FFB26C00FFB26C00FFB26C
        00FFB26C00FF7E4700AD00110F132DAF6BFD2CAF6BFF2CAF6BFF2CAF6BFF2CAF
        6BFF2CAF6BFF2CAF6BFF1C7145A4000000000000000000000000000000000000
        0000000000000C86C8D50C9FEFFF0C9FEFFF0C9FEFFF0C9FEFFF0C9FEFFF0C9F
        EFFF0886CCD602010002A06000E0B56E00FFB56E00FFB56E00FFB56E00FFB56E
        00FFB56E00FF804800AD00120F132CB36FFD2BB36FFF2BB36FFF2BB36FFF2BB3
        6FFF2BB36FFF2BB36FFF1C7347A4000000000000000000000000000000000000
        0000000000000A89C8D50AA3F0FF0AA3F0FF0AA3F0FF0AA3F0FF0AA3F0FF0AA3
        F0FF068ACDD602010002A36200E0B77000FFB77000FFB77000FFB77000FFB770
        00FFB77000FF814900AD001210132BB774FD2AB774FF2AB774FF2AB774FF2AB7
        74FF2AB774FF2AB774FF1B764BA4000000000000000000000000000000000000
        000000000000098CC9D509A7F1FF09A7F1FF09A7F1FF09A7F1FF09A7F1FF09A7
        F1FF058DCED602010002A46300E0B97200FFB97200FFB97200FFB97200FFB972
        00FFB97200FF824B00AD001211132ABA79FD29BB79FF29BB79FF29BB79FF29BB
        79FF29BB79FF29BB79FF1A784EA4000000000000000000000000000000000000
        0000000000000891CAD508ACF2FF08ACF2FF08ACF2FF08ACF2FF08ACF2FF08AC
        F2FF0491CED602010002A76500E0BC7400FFBC7400FFBC7400FFBC7400FFBC74
        00FFBC7400FF844C00AD0013111328BD7EFD28BE7EFF28BE7EFF28BE7EFF28BE
        7EFF28BE7EFF28BE7EFF1A7A51A4000000000000000000000000000000000000
        0000000000000694CBD506B1F4FF06B1F4FF06B1F4FF06B1F4FF06B1F4FF06B1
        F4FF0295CFD602010002A96700E0BE7600FFBE7600FFBE7600FFBE7600FFBE76
        00FFBE7600FF864D00AD0013121325BE81FD26C081FF26C081FF26C081FF26C0
        81FF26C081FF26C081FF187B53A4000000000000000000000000000000000000
        0000000000000799CED603B4F4FF05B5F4FF05B5F4FF05B5F4FF05B5F4FF03B4
        F4FF039AD1D702010002AA6900DFC07900FFC07900FFC07900FFC07900FFC079
        00FFC07900FF884F00AD0013121323BF84FD23C184FF23C184FF23C184FF23C1
        84FF23C184FF23C184FF177C55A4000000000000000000000000000000000000
        00000000000022A4D0D70DBCF6FF00B8F5FF00B8F5FF00B8F5FF00B8F5FF0DBC
        F6FF1EA7D7DB01000001AD6B00E0C37B00FFC37B00FFC37B00FFC37B00FFC37B
        00FFC37B00FF8A5100AD0013121321C087FD21C287FF21C287FF21C287FF21C2
        87FF21C287FF21C287FF157D57A4000000000000000000000000000000000000
        0000000000000E5C757939C9F8FF39C9F8FF37C9F8FF37C9F8FF39C9F8FF39C9
        F8FF0E5F7A7B00000000AF6F01E2C57D00FFC57D00FFC57D00FFC57D00FFC57D
        00FFC57D00FF8B5200AD001313131FC28AFD1FC48AFF1FC48AFF1FC48AFF1FC4
        8AFF1FC48AFF1FC48AFF147E59A4000000000000000000000000000000000000
        000000000000000000000238484A0E5063660D5164670D5164670E5063660239
        494B0000000002020103B27101E3C87F00FFC87F00FFC87F00FFC87F00FFC87F
        00FFC87F00FF8D5300AD001313131EC38CFD1DC58CFF1DC58CFF1DC58CFF1DC5
        8CFF1DC58CFF1DC58CFF137F5AA4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104B47301E3CA8100FFCA8100FFCA8100FFCA8100FFCA81
        00FFCA8100FF8F5500AD001313131CC48FFD1BC68FFF1BC68FFF1BC68FFF1BC6
        8FFF1BC68FFF1BC68FFF117F5CA4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104B67501E3CC8300FFCC8300FFCC8300FFCC8300FFCC83
        00FFCC8300FF915600AD0013131318C591FD19C792FF19C792FF19C792FF19C7
        92FF19C792FF18C792FF0F805DA4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104B77601E3CE8500FFCE8500FFCE8500FFCE8500FFCE85
        00FFCE8500FF925700AC0014141421CA98FF10C893FF13C894FF13C894FF13C8
        94FF12C894FF15C894FF1A8564A8000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104BA7901E3D18800FFD18800FFD18800FFD18800FFD188
        00FFD18800FF945C00B00006060637C698F434CD9DFF26CB9BFF28CC9BFF27CC
        9BFF27CC9BFF3CCE9FFF1C765B93000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104BC7B00E3D38A00FFD38A00FFD38A00FFD38A00FFD38A
        00FFD38A00FF976200B600000000084A385C37BA91E544C69CF243C59BF243C5
        9BF244C59CF2259F7CC50016111C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000004030104BF7E02E3D58B00FFD68C00FFD58C00FFD58C00FFD68C
        00FFD58B00FF9A6602B7000000000000000000060408000D0911000D0911000D
        0911000D09110000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002010002CC8D15EADA9207FFD78D00FFD78D00FFD78D00FFD78C
        00FFDB950CFFA37111BB00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000077520B89E2A121FFE3A324FFE3A323FFE3A323FFE3A3
        25FFE2A01FFF5137065E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003A260143573B04635439046054390460563A
        03622C1D00340000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object cxBarEditItem16: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      InternalEditValue = False
    end
    object cxBarEditItem17: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
    end
    object dxBarColorCombo1: TdxBarColorCombo
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Glyph.Data = {
        36050000424D3605000000000000360400002800000010000000100000000100
        0800000000000001000000000000000000000001000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A6000020400000206000002080000020A0000020C0000020E000004000000040
        20000040400000406000004080000040A0000040C0000040E000006000000060
        20000060400000606000006080000060A0000060C0000060E000008000000080
        20000080400000806000008080000080A0000080C0000080E00000A0000000A0
        200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
        200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
        200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
        20004000400040006000400080004000A0004000C0004000E000402000004020
        20004020400040206000402080004020A0004020C0004020E000404000004040
        20004040400040406000404080004040A0004040C0004040E000406000004060
        20004060400040606000406080004060A0004060C0004060E000408000004080
        20004080400040806000408080004080A0004080C0004080E00040A0000040A0
        200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
        200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
        200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
        20008000400080006000800080008000A0008000C0008000E000802000008020
        20008020400080206000802080008020A0008020C0008020E000804000008040
        20008040400080406000804080008040A0008040C0008040E000806000008060
        20008060400080606000806080008060A0008060C0008060E000808000008080
        20008080400080806000808080008080A0008080C0008080E00080A0000080A0
        200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
        200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
        200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
        2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
        2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
        2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
        2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
        2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
        2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
        2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFF000101A6
        000202B4000404E4FFFFFFFF000101A6000202B4000404E4FFFFFFFF000EF9A7
        0030FABC00C0FCE4FFFFFFFF0000F9A70000FABC0000FCE4FFFFFFFF000001A7
        000002BC000004E4FFFFFFFF000001A7000002BC000004E4FFFFFFFF000001A7
        000002BC000004E4FFFFFFFF000001A7000002BC000004E4FFFFFFFF000001A7
        000002BC000004E4FFFFFFFF0000F9A70000FABC0000FCE4FFFFFFFF000EF9A7
        0030FABC00C0FCE4FFFFFFFF000101A6000202B4000404E4FFFFFFFF000101A6
        000202B4000404E4FFFFFFFF5201F9075202FA075204FC07FFFFFFFF070056FF
        070072FF0700D2FFFFFFFFFFFF5207FFFF5207FFFF5207FFFFFF}
      Width = 100
      Color = clBlack
    end
    object dxBarButton19: TdxBarButton
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Category = 0
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Visible = ivAlways
      ImageIndex = 3
      OnClick = dxBarButton19Click
    end
    object ChangeModeExp: TcxBarEditItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Category = 0
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      InternalEditValue = 'False'
    end
    object ExpBeginDateEdit: TcxBarEditItem
      Caption = #1089':   '
      Category = 0
      Hint = #1089':   '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.OnEditValueChanged = ExpBeginDateEditPropertiesEditValueChanged
    end
    object ExpEndDateEdit: TcxBarEditItem
      Caption = #1087#1086': '
      Category = 0
      Hint = #1087#1086': '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.OnEditValueChanged = ExpBeginDateEditPropertiesEditValueChanged
    end
    object ChangeModeExp1: TcxBarEditItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Category = 0
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.OnEditValueChanged = cxBarEditItem18PropertiesEditValueChanged
      InternalEditValue = 'False'
    end
    object dxBarButton20: TdxBarButton
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Category = 0
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Visible = ivAlways
      ImageIndex = 3
      OnClick = dxBarButton20Click
    end
    object cxBarEditItem18: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckGroupProperties'
      Properties.Items = <>
    end
    object ChangeModeFinance: TcxBarEditItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Category = 0
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = ChangeModeFinancePropertiesEditValueChanged
    end
    object FinFrameBeginDate: TcxBarEditItem
      Caption = #1089':   '
      Category = 0
      Hint = #1089':   '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.DateButtons = [btnClear, btnToday]
      Properties.OnEditValueChanged = FinFrameBeginDatePropertiesEditValueChanged
      InternalEditValue = '0:00:00'
    end
    object FinFrameEndDate: TcxBarEditItem
      Caption = #1087#1086': '
      Category = 0
      Hint = #1087#1086': '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.OnEditValueChanged = FinFrameBeginDatePropertiesEditValueChanged
      InternalEditValue = '0:00:00'
    end
    object BarBeginDateEdit: TcxBarEditItem
      Caption = 'c:    '
      Category = 0
      Hint = 'c:    '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.OnEditValueChanged = BeginDateEditPropertiesEditValueChanged
      InternalEditValue = '0:00:00'
    end
    object BarEndDateEdit: TcxBarEditItem
      Caption = #1087#1086': '
      Category = 0
      Hint = #1087#1086': '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.OnEditValueChanged = BeginDateEditPropertiesEditValueChanged
      InternalEditValue = '0:00:00'
    end
    object ProfitGraphBtn: TdxBarLargeButton
      Caption = #1042#1099#1088#1091#1095#1082#1072' '#1087#1077#1089#1086#1082
      Category = 0
      Hint = #1042#1099#1088#1091#1095#1082#1072' '#1087#1077#1089#1086#1082
      Visible = ivAlways
      OnClick = ProfitGraphBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000300000000000000000000000000000002000000030000
        00080000000E0000000E0000000F0000000B0000000800000008000000080000
        00080000000C0000000F0000000E0000000D0000000600000003000000020000
        0000000000000000000100000004000000010000000000000000000000000000
        00080000001B0000001B0308103A0515285305142655051426570515285A0309
        11490000003500000141000001360E0903501B1102601A10025F1A10025F1B10
        025F08050249000001370000014100000034060D075009160A5B08150A570815
        095508150A51020402320000001E0000001B0000000800000000000000000000
        0004000000080725465F1570D5F0177AE6FF177AE6FF177AE6FF177AE7FF1571
        D6F20826466E000000173E24047F995802F6A25D01FFA15D01FFA15D01FFA25D
        01FF925403ED2817036100000016153D1A912B7F36FA2D8338FF2D8338FF2D83
        38FF2D8338FF267230E408160A3C0000000B0000000400000000000000000000
        0000000000001267BCCC1580E9FF157FE9FF157FE9FF157FE9FF157FE9FF1580
        EAFF1069C1CF00000000935301E0A55F00FFA55F00FFA55F00FFA55F00FFA45F
        00FFA56000FF733F01AC000202022C873FF62D8B40FF2D8B40FF2D8B40FF2D8B
        40FF2D8B40FF2D8B40FF1C55279A000000000000000000000000000000000000
        0000000000001371C5D81484E9FF1484E9FF1484E9FF1484E9FF1484E9FF1484
        E9FF0F70C9D802010002945500E1A76100FFA76100FFA76100FFA76100FFA761
        00FFA76100FF764000AE000F0B142E9249FF2D9148FF2D9148FF2D9148FF2D91
        48FF2D9148FF2D9148FF1D5F2EA7000000000000000000000000000000000000
        0000000000001172C3D51388EAFF1388EAFF1388EAFF1388EAFF1388EAFF1388
        EAFF0D72C8D602010002955600E0A96300FFA96300FFA96300FFA96300FFA963
        00FFA96300FF774100AD000F0B132E984FFD2D984FFF2D984FFF2D984FFF2D98
        4FFF2D984FFF2D984FFF1D6132A3000000000000000000000000000000000000
        0000000000001077C4D5118DEBFF118DEBFF118DEBFF118DEBFF118DEBFF118D
        EBFF0C77C9D602010002975800E0AB6500FFAB6500FFAB6500FFAB6500FFAB65
        00FFAB6500FF784300AD00100C132E9F58FD2D9F58FF2D9F58FF2D9F58FF2D9F
        58FF2D9F58FF2D9F58FF1D6639A4000000000000000000000000000000000000
        0000000000000F7AC5D51091ECFF1091ECFF1091ECFF1091ECFF1091ECFF1091
        ECFF0B7BC9D6020100029A5A00E0AE6800FFAE6800FFAE6800FFAE6800FFAE68
        00FFAE6800FF7A4500AD00100D132EA65FFD2DA65FFF2DA65FFF2DA65FFF2DA6
        5FFF2DA65FFF2DA65FFF1D6B3DA4000000000000000000000000000000000000
        0000000000000D7DC6D50E95EDFF0E95EDFF0E95EDFF0E95EDFF0E95EDFF0E95
        EDFF097ECAD6020100029B5C00E0B06A00FFB06A00FFB06A00FFB06A00FFB06A
        00FFB06A00FF7B4500AD00110E132EAC66FD2DAC66FF2DAC66FF2DAC66FF2DAC
        66FF2DAC66FF2DAC66FF1D6F42A4000000000000000000000000000000000000
        0000000000000D81C7D50D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9A
        EEFF0882CBD6020100029D5E00E0B26C00FFB26C00FFB26C00FFB26C00FFB26C
        00FFB26C00FF7E4700AD00110F132DAF6BFD2CAF6BFF2CAF6BFF2CAF6BFF2CAF
        6BFF2CAF6BFF2CAF6BFF1C7145A4000000000000000000000000000000000000
        0000000000000C86C8D50C9FEFFF0C9FEFFF0C9FEFFF0C9FEFFF0C9FEFFF0C9F
        EFFF0886CCD602010002A06000E0B56E00FFB56E00FFB56E00FFB56E00FFB56E
        00FFB56E00FF804800AD00120F132CB36FFD2BB36FFF2BB36FFF2BB36FFF2BB3
        6FFF2BB36FFF2BB36FFF1C7347A4000000000000000000000000000000000000
        0000000000000A89C8D50AA3F0FF0AA3F0FF0AA3F0FF0AA3F0FF0AA3F0FF0AA3
        F0FF068ACDD602010002A36200E0B77000FFB77000FFB77000FFB77000FFB770
        00FFB77000FF814900AD001210132BB774FD2AB774FF2AB774FF2AB774FF2AB7
        74FF2AB774FF2AB774FF1B764BA4000000000000000000000000000000000000
        000000000000098CC9D509A7F1FF09A7F1FF09A7F1FF09A7F1FF09A7F1FF09A7
        F1FF058DCED602010002A46300E0B97200FFB97200FFB97200FFB97200FFB972
        00FFB97200FF824B00AD001211132ABA79FD29BB79FF29BB79FF29BB79FF29BB
        79FF29BB79FF29BB79FF1A784EA4000000000000000000000000000000000000
        0000000000000891CAD508ACF2FF08ACF2FF08ACF2FF08ACF2FF08ACF2FF08AC
        F2FF0491CED602010002A76500E0BC7400FFBC7400FFBC7400FFBC7400FFBC74
        00FFBC7400FF844C00AD0013111328BD7EFD28BE7EFF28BE7EFF28BE7EFF28BE
        7EFF28BE7EFF28BE7EFF1A7A51A4000000000000000000000000000000000000
        0000000000000694CBD506B1F4FF06B1F4FF06B1F4FF06B1F4FF06B1F4FF06B1
        F4FF0295CFD602010002A96700E0BE7600FFBE7600FFBE7600FFBE7600FFBE76
        00FFBE7600FF864D00AD0013121325BE81FD26C081FF26C081FF26C081FF26C0
        81FF26C081FF26C081FF187B53A4000000000000000000000000000000000000
        0000000000000799CED603B4F4FF05B5F4FF05B5F4FF05B5F4FF05B5F4FF03B4
        F4FF039AD1D702010002AA6900DFC07900FFC07900FFC07900FFC07900FFC079
        00FFC07900FF884F00AD0013121323BF84FD23C184FF23C184FF23C184FF23C1
        84FF23C184FF23C184FF177C55A4000000000000000000000000000000000000
        00000000000022A4D0D70DBCF6FF00B8F5FF00B8F5FF00B8F5FF00B8F5FF0DBC
        F6FF1EA7D7DB01000001AD6B00E0C37B00FFC37B00FFC37B00FFC37B00FFC37B
        00FFC37B00FF8A5100AD0013121321C087FD21C287FF21C287FF21C287FF21C2
        87FF21C287FF21C287FF157D57A4000000000000000000000000000000000000
        0000000000000E5C757939C9F8FF39C9F8FF37C9F8FF37C9F8FF39C9F8FF39C9
        F8FF0E5F7A7B00000000AF6F01E2C57D00FFC57D00FFC57D00FFC57D00FFC57D
        00FFC57D00FF8B5200AD001313131FC28AFD1FC48AFF1FC48AFF1FC48AFF1FC4
        8AFF1FC48AFF1FC48AFF147E59A4000000000000000000000000000000000000
        000000000000000000000238484A0E5063660D5164670D5164670E5063660239
        494B0000000002020103B27101E3C87F00FFC87F00FFC87F00FFC87F00FFC87F
        00FFC87F00FF8D5300AD001313131EC38CFD1DC58CFF1DC58CFF1DC58CFF1DC5
        8CFF1DC58CFF1DC58CFF137F5AA4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104B47301E3CA8100FFCA8100FFCA8100FFCA8100FFCA81
        00FFCA8100FF8F5500AD001313131CC48FFD1BC68FFF1BC68FFF1BC68FFF1BC6
        8FFF1BC68FFF1BC68FFF117F5CA4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104B67501E3CC8300FFCC8300FFCC8300FFCC8300FFCC83
        00FFCC8300FF915600AD0013131318C591FD19C792FF19C792FF19C792FF19C7
        92FF19C792FF18C792FF0F805DA4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104B77601E3CE8500FFCE8500FFCE8500FFCE8500FFCE85
        00FFCE8500FF925700AC0014141421CA98FF10C893FF13C894FF13C894FF13C8
        94FF12C894FF15C894FF1A8564A8000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104BA7901E3D18800FFD18800FFD18800FFD18800FFD188
        00FFD18800FF945C00B00006060637C698F434CD9DFF26CB9BFF28CC9BFF27CC
        9BFF27CC9BFF3CCE9FFF1C765B93000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104BC7B00E3D38A00FFD38A00FFD38A00FFD38A00FFD38A
        00FFD38A00FF976200B600000000084A385C37BA91E544C69CF243C59BF243C5
        9BF244C59CF2259F7CC50016111C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000004030104BF7E02E3D58B00FFD68C00FFD58C00FFD58C00FFD68C
        00FFD58B00FF9A6602B7000000000000000000060408000D0911000D0911000D
        0911000D09110000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002010002CC8D15EADA9207FFD78D00FFD78D00FFD78D00FFD78C
        00FFDB950CFFA37111BB00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000077520B89E2A121FFE3A324FFE3A323FFE3A323FFE3A3
        25FFE2A01FFF5137065E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003A260143573B04635439046054390460563A
        03622C1D00340000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object ClearProfitsGraphBtn: TdxBarLargeButton
      Caption = #1063#1080#1089#1090#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' '#1086#1073#1097#1072#1103
      Category = 0
      Hint = #1063#1080#1089#1090#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' '#1086#1073#1097#1072#1103
      Visible = ivAlways
      OnClick = ClearProfitsGraphBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000040000000500000006000000060000000600000006000000070000
        0006000000000000000000000006000000040000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000D0000001C00000021000000180000001B0000001F0000
        0022000000240000002500000027000000280000002800000029000000270000
        002C112913700E200F62000000230000002300000028000000320000012F0000
        012B000000260000001E00000011000000020000000000000000000000000000
        0000000000000000000D0000001902020324505050876C6C6DA66D6D6EA86D6D
        6FA86F6F6FA96F6F70AA707071AA6F6F71AA707071AB737173AB777176A62E63
        39C22A893BFF268538FF556859AF726D71A43333346C000000260000012E0000
        012B000000260000001F00000011000000020000000000000000000000000000
        0000000000000000000000000000868687A9CCCCCDFFCECECFFFD1D1D2FFD2D2
        D3FFD4D4D5FFD5D5D6FFD7D7D8FFD7D7D8FFDAD8DBFFE4DCE2FF78B38AFF2794
        46FF2C944BFF259245FF52A46AFFD8D4D7FFD1CFD2FF43434354000000000000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000001D1D1D24CCCCCCFFCDCDCEFFD0D0D1FFD2D2D3FFD4D4
        D4FFD5D5D6FFD6D6D6FFD6D7D7FFDAD8DAFFE5DCE2FF71B68CFF1C9A4BFF2DA0
        58FF2DA058FF2DA058FF1D9B4CFF87BB9BFFE0D5DDFF9FA0A0C4000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A33CECECFFFDADADBFFF8F8F8FFF8F8F8FFF8F8
        F8FFF8F8F9FFF8F8F8FFFBF9FAFFFFFAFDFF7DC99EFF1AA356FF2DAA64FF2DAA
        64FF2CAA64FF2DAA64FF29A962FF2EAA65FFC6D2CCFFB3ADB1CE000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000029292931D4D4D5FFD7D7D8FFDBDBDCFFDDDDDEFFE0E0
        E1FFE1E1E2FFE3E2E4FFEFE6EBFF7AC8A0FF1AAB60FF2BB16CFF2CB16DFF29B0
        6BFF28B06AFF2BB06CFF2DB16DFF1EAE64FF64BE90FFB9AEB5CA000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A31D8D8D9FFDCDCDDFFE4E4E5FFE5E5E6FFE6E6
        E7FFE6E6E7FFEDE8EBFF7DCAA7FF14B067FF29B774FF2AB775FF23B571FF3FBF
        82FF6ED0A1FF26B673FF29B674FF2AB774FF24B571FF6D9E87C6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A31DCDCDDFFE4E4E5FFF7F7F7FFF7F7F8FFF8F8
        F8FFF8F8F8FFFDF9FBFF70D1A6FF1BBA75FF25BC7CFF21BB7AFF2FBF7FFFB4E2
        CEFFFAF7F9FF52C894FF1EBB77FF28BD7DFF26BD7CFF22AB6FE7050D09110000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B2B2B31E0E1E1FFE0E0E1FFDBDCDCFFDCDDDEFFDDDE
        DFFFDEDFDFFFE4E0E2FFD8E0DEFF5AC99BFF1ABE7BFF2AC082FFA3D7C1FFEFE5
        EAFFECE2E7FFBADACDFF25C081FF21C081FF25C082FF23C081FF1C875CB20000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B2B2C31E1E1E2FFE5E6E6FFF3F3F3FFF3F3F3FFF3F3
        F4FFF3F3F3FFF2F3F3FFFBF5F8FFE8F3EFFF83DDB9FFB3E8D3FFFCF5F8FFF4F4
        F4FFF3F3F3FFFAF5F7FF8CDDBDFF15C07FFF20C286FF21C286FF21C286FF1360
        447D000000000000000000000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E2E3E3FFE6E7E7FFEFEFEFFFF0F0F1FFF1F2
        F2FFF2F2F2FFF2F3F3FFF2F3F3FFF7F4F6FFFDF5F9FFFBF5F8FFF3F4F4FFF3F3
        F3FFF2F3F3FFF4F3F4FFEFF0F0FF51CEA0FF12C386FF1EC48BFF1EC48BFF1EC4
        8BFF0E4B35600000000000000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E5E5E6FFE4E4E5FFE2E2E3FFE3E4E4FFE4E5
        E5FFE5E5E5FFE5E6E6FFE6E6E6FFE6E6E6FFE6E6E7FFE6E6E6FFE6E6E6FFE5E6
        E6FFE6E6E6FFE5E6E6FFF0E7EAFFC8E1D8FF2DC993FF12C58CFF1BC690FF18C6
        8FFF18C68FFF0A3C2C4C00000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E5E5E6FFEAEBEBFFF9F9F9FFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFFAFAFAFFF9FAFAFFF9FAFAFFF9FAFAFFF9FAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFF9FAF9FFFFFAFCFFB0E1D1FF1FC993FF10C793FF1CC9
        96FF35CB9AFC0E382B4600000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E6E7E7FFE7E8E8FFE7E8E8FFE9EAEAFFE9EA
        EAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EA
        EAFFE9EAEAFFE9EAEAFFE9EAEAFFEAEAEAFFF9EEF2FF94D6C1F62BC595F5309D
        7AC10E261E2E0000000000000000000000000000000000000000000000000000
        000000000000000000002C2D2D31E7E8E8FFE9EAEAFFECEDEDFFEDEDEEFFEDED
        EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
        EEFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFEBECECFFC1BBBDC9051410180000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31E8E8E9FFEDEDEEFFF8F9F9FFF8F9F9FFF8F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF8F9F9FFF7F8F8FFECEDEDFFBABBBBCA000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEAEAFFE9EAEAFFE3E4E4FFE3E4E4FFE3E4
        E4FFE4E4E5FFE4E4E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5
        E5FFE4E5E5FFE4E4E5FFE3E4E4FFE4E5E5FFEAECECFFBBBCBCCB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31E9EAEBFFEDEDEDFFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFEBECECFFBBBCBCCB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFECEDEDFFEFF0F0FFEFF0F0FFF0F0
        F1FFF0F0F1FFF0F1F1FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1F2FFF2F2F2FFF1F1
        F2FFF1F2F2FFF4F5F5FFF5F5F6FFF3F4F4FFEFF0F0FFBEBEBECC000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFEAEBEBFFE7E8E8FFE8E9E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9EAFFE9E9EAFFE9E9E9FFE9E9E9FFECECEDFFEEEE
        EFFFEEEFEFFFDEDEDFFFD9D9DAFFDADADBFFDADBDBFFB6B7B7D1000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFEEEEEEFFFAFAFAFFFAFAFAFFFAFA
        FBFFFAFAFBFFFAFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF8F8F8FFEEEEEFFFECEC
        EDFFB2B3B4FF8F8F90FF949596FF9B9B9DFF9E9E9FF92F2F2F46000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFEAEBEBFFE5E6E6FFE5E6E6FFE6E6
        E7FFE6E6E7FFE6E7E7FFE7E7E8FFE7E7E8FFE7E7E8FFE8E8E9FFF3F2F3FFC8C8
        C9FF838485FF909192FF99999AFF9C9C9DF92C2C2D4400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31E9EAEAFFECEDEDFFF3F3F3FFF4F4F4FFF4F4
        F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF2F2F3FFF2F2F3FFB7B8
        B9FF88898AFF969899FF9A9A9BF92C2D2D440000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002E2E2E32E9E9EAFFECEEEDFFF3F4F4FFF3F4F4FFF3F4
        F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F5F4FFF3F4F4FFF1F3F2FFBABB
        BCFF8D8E8FFF979899F92B2C2C44000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000010101112E1E2E2F7EAEBEBFFEAEBEBFFEAEBEBFFEAEB
        EBFFEAEBEBFFEBEBECFFEBEBECFFEBEBECFFEBECECFFEBECECFFF1F2F2FFBABB
        BCFF8E8F90F92A2A2A4300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000051515159D5D6D6E9EBECECFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFECECEDFFF0F0F1FFB7B8
        B9F1252525430000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000E0E0E0F2829292C2727272A2727
        272A2727272A2727272A2727272A2727272A2727272A2727272A29292A2D1818
        181A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object SaleProfitGraphBtn: TdxBarLargeButton
      Caption = #1042#1099#1088#1091#1095#1082#1072' '#1087#1088#1086#1076#1072#1078#1080
      Category = 0
      Hint = #1042#1099#1088#1091#1095#1082#1072' '#1087#1088#1086#1076#1072#1078#1080
      Visible = ivAlways
      OnClick = SaleProfitGraphBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000000001E0000
        0032000000320000003200000032000000320000003200000032000000320000
        0032000000320000003200000032000000320000003200000032000000320000
        0032000000320000003200000032000000320000003200000032000000320000
        0032000000320000003200000032000000320000001E00000000000000179E9F
        9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F
        9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F
        9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F
        9FFF9E9F9FFF9E9F9FFF9E9F9FFF9E9F9FFF000000170000000000000000B7B8
        B8FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFB7B8B8FF000000000000000000000000B7B8
        B8FFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCCCCFFCCCC
        CCFFCCCCCCFFCCCCCCFFCCCCCCFFB7B8B8FF000000000000000000000000B7B8
        B8FFCCCCCCFFCCCCCCFFDF9972FFDF9872FFDF9871FFDF9871FFDF9872FFEBB2
        8FFFDF9872FFDF9971FFDF9972FFDF9872FFDF9872FFEBB28FFFDF9971FFDF99
        71FFDF9971FFDF9972FFDF9872FFEBB28FFFDF9971FFDF9871FFDF9871FFDF98
        71FFDF9872FFCCCCCCFFCCCCCCFFB7B8B8FF000000000000000000000000B7B8
        B8FFCDCDCDFFCCCCCCFFDF9972FFEAA37AFFEBA37AFFEBA37AFFEAA37AFFFCC8
        A6FFEAA37AFFEAA37AFFEAA37AFFEBA37AFFEAA37AFFFCC8A6FFEAA37AFFEAA3
        7AFFEAA37AFFEBA37AFFEAA37AFFFCC8A6FFEAA37AFFEAA37AFFEAA37AFFEAA3
        7AFFDF9972FFCCCCCCFFCCCCCCFFB7B8B8FF000000000000000000000000B7B8
        B8FFCECECEFFCDCDCDFFDE9872FFEAA47BFFEBA47BFFEBA37BFFEAA47BFFFBC7
        A5FFE9A279FFEAA27AFFEBA47BFFEAA47BFFEAA37BFFFCC8A6FFEAA37BFFEAA4
        7BFFEAA37AFFEBA47AFFEBA37BFFFCC8A6FFEAA47BFFEBA47BFFEBA37BFFEAA4
        7AFFDF9972FFCDCDCDFFCDCDCDFFB7B8B8FF000000000000000000000000B7B8
        B8FFCFCFCFFFCECECEFFDB956FFFE8A179FFEBA47BFFEAA47BFFE8A279FFF1BA
        98FFDC9871FFE09A72FFE8A17AFFEBA57BFFEAA47BFFFCC8A6FFEBA57BFFEBA4
        7CFFEBA47BFFEBA47CFFEBA47BFFFCC8A6FFEBA47BFFEBA47BFFEAA57CFFEBA4
        7CFFDF9972FFCECECEFFCECECEFFB7B8B8FF000000000000000000000000B7B8
        B8FFD0D0D0FFCFCFCFFFD79976FFE6AD8BFFF3BB9AFFF0B897FFE3A988FFD698
        77FFCC8D6CFFD39774FFEAB191FFF9C4A2FFFCC8A6FFFCC8A6FFFCC8A6FFFCC8
        A6FFFCC8A6FFFCC8A6FFFCC8A6FFFCC8A6FFFCC8A6FFFCC8A6FFFCC8A6FFFCC8
        A6FFEBB28FFFCFCFCFFFCFCFCFFFB7B8B8FF000000000000000000000000B7B8
        B8FFD1D1D1FFD0D0D0FFCC8864FFCB8764FFD18D69FFCF8A66FFCA8663FFCE92
        74FFCE9C82FFC78360FFD18D69FFE29D76FFEBA57CFFFCC8A6FFECA67DFFEBA6
        7DFFECA67DFFE8A47CFFE9A37BFFFBC7A4FFEBA67DFFEBA67DFFECA67DFFECA6
        7DFFDF9B74FFD0D0D0FFD0D0D0FFB7B8B8FF000000000000000000000000B7B8
        B8FFD2D2D2FFD1D1D1FFD7A88FFFC98663FFC78461FFCD8F70FFDBBDADFFE4E1
        E0FFE4E2E1FFD49F82FFC98562FFD3906CFFE5A079FFFBC7A5FFEBA77EFFEBA6
        7DFFE6A37AFFDE9B74FFDC9871FFF4BD9BFFEAA67EFFECA77EFFECA77EFFEBA7
        7EFFDF9B74FFD1D1D1FFD1D1D1FFB7B8B8FF000000000000000000000000B7B8
        B8FFD3D3D3FFD2D2D2FFE6E4E3FFDFBAA5FFDFC5B6FFE6E4E3FFE6D6CCFFF1CD
        B5FFE8BCA2FFE5DED9FFCE9170FFCA8763FFDA9670FFF5C09EFFEAA67EFFE5A1
        79FFD9956EFFCB8864FFCA8764FFE4AA88FFE8A47BFFEBA87FFFECA87FFFECA8
        7FFFE09C75FFD2D2D2FFD2D2D2FFB7B8B8FF000000000000000000000000B7B8
        B8FFD4D4D4FFD3D3D3FFE2B59AFFE8E6E4FFE8D3C8FFEAB597FFEBA97FFFFCC9
        A7FFEBA980FFE8CBBBFFE5D4CAFFC98765FFCD8966FFE5AC8AFFDF9C75FFD490
        6CFFCC8967FFD5AE99FFC68462FFD29371FFDF9C75FFEAA77EFFEDA980FFECA9
        7FFFE09D76FFD3D3D3FFD3D3D3FFB7B8B8FF000000000000000000000000B7B8
        B8FFD5D5D5FFD4D4D4FFE19D76FFECAE87FFECAA81FFECAA81FFEDAA81FFFCC9
        A7FFEDAA81FFECAB83FFE9DAD1FFE0C1B0FFCA8763FFCE8E6CFFCB8865FFCD93
        74FFE4D5CEFFE9E5E3FFDFC0AFFFCC8C6AFFD08E69FFE2A078FFECA980FFEDAA
        81FFE09D76FFD4D4D4FFD4D4D4FFB7B8B8FF000000000000000000000000B7B8
        B8FFD7D7D7FFD6D6D6FFEBB290FFFCC9A7FFFCC9A7FFFCC9A7FFFCC9A7FFFCC9
        A7FFFCC9A7FFFCC9A7FFF9CAACFFECE7E4FFDEB59EFFC88866FFD6AA92FFEAE5
        E2FFEBCDBBFFF4C5A7FFECE7E4FFDEB6A0FFCC8C6AFFDCA17FFFF3BE9CFFFBC8
        A6FFEBB290FFD5D5D5FFD5D5D5FFB7B8B8FF000000000000000000000000B7B8
        B8FFD8D8D8FFD7D7D7FFE19F78FFEDAC83FFEDAC83FFEEAC83FFEEAC83FFFCC9
        A7FFEDAC83FFEDAC83FFEDAC83FFECBB9DFFEEE9E7FFE7D1C4FFECE3DEFFE6B2
        94FFEBAA82FFEDAC83FFEBBA9BFFEFEBE9FFD29C7FFFCA8764FFDB9873FFEAA7
        7FFFE19F78FFD7D7D7FFD7D7D7FFB7B8B8FF000000000000000000000000B7B8
        B8FFD9D9D9FFD8D8D8FFE19F78FFEEAD84FFEEAD84FFEEAD84FFEEAD84FFFCC9
        A7FFEEAD84FFEEAD84FFEEAD84FFEDAC83FFEECBB4FFF2E0D5FFE9AD87FFEDAC
        83FFEDAD84FFEEAD84FFEDAD84FFF4D6C2FFEFE6E1FFCC8F6DFFCE8A67FFDF9E
        77FFE09E77FFD8D8D8FFD8D8D8FFB7B8B8FF000000000000000000000000B7B8
        B8FFDADADAFFD9D9D9FFE1A079FFEEAE85FFEEAE85FFEEAE85FFEEAE85FFFCC9
        A7FFEEAE85FFEEAE85FFEEAE85FFEEAE85FFEEAE85FFFCC8A6FFEEAE86FFEEAE
        85FFEEAE85FFEEAE85FFEEAE85FFFBC8A6FFEFD7C8FFECD9CFFFCA8764FFD190
        6BFFDA9973FFD9D9D9FFD9D9D9FFB7B8B8FF000000000000000000000000B7B8
        B8FFDBDBDBFFDADADAFFE2A17AFFEEAF86FFEFAF86FFEEAF86FFEFAF86FFFCC9
        A7FFEEAF86FFEFAF86FFEFAF86FFEEAF86FFEEAF86FFFCC9A7FFEEAF86FFEEAF
        86FFEFAF86FFEEAF86FFEFAF86FFFCC9A7FFECAF88FFF2E4DCFFE5C7B6FFC987
        63FFD28F6BFFDADADAFFDADADAFFB7B8B8FF000000000000000000000000B7B8
        B8FFDCDCDCFFDBDBDBFFE2A27AFFEEAF87FFEFB087FFEEB087FFEEAF86FFFCC9
        A8FFEFB087FFEFB087FFEFB087FFEFB087FFEFB087FFFCC9A7FFEEAF87FFEEB0
        87FFEEB087FFEFB087FFEFB087FFFCC9A8FFEFB087FFECB690FFF5EFEBFFDBB1
        9AFFCC8965FFDBDBDBFFDBDBDBFFB7B8B8FF000000000000000000000000B7B8
        B8FFDDDDDDFFDCDCDCFFEBB391FFFCCAA8FFFCCAA8FFFCCAA8FFFCCAA8FFFCCA
        A8FFFCCAA8FFFCC9A8FFFCCAA8FFFCCAA8FFFCCAA8FFFCCAA8FFFCCAA8FFFCC9
        A8FFFCCAA8FFFCCAA8FFFCCAA8FFFCC9A8FFFCCAA8FFFBC9A8FFF6CFB5FFF8F4
        F2FFDAA78BFFDCDCDCFFDCDCDCFFB7B8B8FF000000000000000000000000B7B8
        B8FFDEDEDEFFDDDDDDFFE3A27BFFEFB288FFEFB288FFEFB289FFEFB188FFFCCA
        A8FFEFB189FFEFB288FFEFB288FFEFB289FFEFB289FFFCCAA8FFEFB288FFF0B2
        88FFEFB288FFEFB289FFF0B289FFFCCAA8FFEFB289FFEFB189FFEFB189FFF0CC
        B4FFF5EAE3FFDDDDDDFFDDDDDDFFB7B8B8FF000000000000000000000000B7B8
        B8FFDFDFDFFFDEDEDEFFE3A47CFFF0B289FFEFB389FFF0B289FFEFB389FFFCCA
        A8FFF0B289FFEFB289FFEFB289FFEFB389FFF0B389FFFCCAA8FFEFB389FFF0B3
        89FFF0B289FFEFB389FFEFB38AFFFCCAA8FFF0B289FFEFB289FFF0B289FFEFB1
        88FFEFD1BEFFDEDEDEFFDEDEDEFFB7B8B8FF000000000000000000000000B7B8
        B8FFE1E1E1FFE0E0E0FFE2A47CFFEFB38AFFEFB38AFFF0B38AFFF0B38AFFFCCA
        A8FFF0B38AFFF0B389FFF0B38AFFEFB38AFFEFB38AFFFCCAA8FFF0B38AFFEFB3
        8AFFEFB38AFFEFB38AFFEFB38AFFFCCAA8FFEFB38AFFEFB38AFFF0B38AFFEFB3
        8AFFE9B899FFDFDFDFFFDFDFDFFFB7B8B8FF000000000000000000000000B7B8
        B8FFE2E2E2FFE1E1E1FFE2A47CFFF0B48BFFF0B48BFFEFB48BFFF0B48BFFFCCA
        A8FFF0B48BFFF0B38AFFF0B48BFFF0B48BFFF0B38BFFFCCAA8FFEFB48BFFF0B4
        8AFFEFB48BFFF0B38BFFF0B48AFFFCCAA8FFF0B48BFFEFB38BFFEFB38BFFF0B4
        8BFFE3A47DFFE1E1E1FFE1E1E1FFB7B8B8FF000000000000000000000000B7B8
        B8FFE3E3E3FFE2E2E2FFE3A47DFFE2A47DFFE3A47DFFE3A47DFFE3A47DFFEBB3
        91FFE3A47DFFE3A47DFFE3A47DFFE3A47DFFE3A47DFFEBB391FFE3A47DFFE3A4
        7DFFE3A47DFFE3A47DFFE3A47DFFEBB391FFE3A47DFFE3A47DFFE3A47DFFE3A4
        7DFFE3A47DFFE2E2E2FFE2E2E2FFB7B8B8FF000000000000000000000000B7B8
        B8FFE4E4E4FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
        E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
        E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3
        E3FFE3E3E3FFE3E3E3FFE3E3E3FFB7B8B8FF000000000000000000000000B7B8
        B8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B8B8FF000000000000000000000000B7B8
        B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8
        B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8
        B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8
        B8FFB7B8B8FFB7B8B8FFB7B8B8FFB7B8B8FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object FinProfitGraphBtn: TdxBarLargeButton
      Caption = #1042#1099#1088#1091#1095#1082#1072' '#1092#1080#1085#1072#1085#1089#1099
      Category = 0
      Hint = #1042#1099#1088#1091#1095#1082#1072' '#1092#1080#1085#1072#1085#1089#1099
      Visible = ivAlways
      OnClick = FinProfitGraphBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000040000000A0000000E0000000D0000000A0000
        000C0000000E0000001000000011000000120000001300000014000000140000
        00130000001200000012000000100000000F0000000D0000000B0000000F0000
        000F0000000B0000000600000000000000000000000000000000000000000000
        0000000000000000000100000015000000290000002609090A3F262627622727
        2865272728662828286827272869282828692828296A2828296A2828296A2828
        296A282829692828286928282868272728672828296624242560010101370000
        002B0000012C0000001A00000005000000000000000000000000000000000000
        0000000000000000000000000005000000082C2C2C43B0B0B1E5CACACBFFCCCC
        CDFFCECECFFFCFCFD0FFD0D0D1FFD1D1D2FFD2D2D3FFD3D3D4FFD3D3D4FFD3D3
        D4FFD3D3D4FFD2D2D3FFD1D1D2FFD0D0D1FFCFCFD0FFCDCDCEFFA2A2A3D31515
        15260000000A0000000600000001000000000000000000000000000000000000
        000000000000000000000000000000000000A5A5A6CECBCBCCFFCACACBFFCCCC
        CDFFCECECFFFCFCFD0FFD1D1D2FFD2D2D3FFD3D3D4FFD3D3D4FFD3D3D4FFD3D3
        D4FFD3D3D4FFD3D3D4FFD1D1D2FFD0D0D1FFCECED0FFCECECFFFD0D0D1FF8282
        839E000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000909090BC0C0C1EFD0D0D1FFE4E4E4FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
        EAFFEAEAEAFFEAEAEAFFEAEAEAFFE9E9EAFFE9E9EAFFE5E5E6FFD3D3D4FF9F9F
        A0C2000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A0CC1C1C2ECD4D4D5FFEDEDEDFFF2F2
        F2FFF3F3F3FFF4F4F4FFF4F4F5FFF4F4F5FFF4F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F5F5FFF4F5F5FFF4F4F5FFF4F4F4FFF4F4F4FFEFEFEFFFD8D8D9FF9E9E
        9FBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A0CC6C6C7ECD7D7D8FFD4D4D5FFD5D5
        D6FFD7D7D9FFD9D9DAFFD9D9DAFFDADADBFFDADADBFFDADADBFFDADADBFFDADA
        DBFFDADADBFFDADADBFFDADADBFFD9D9DAFFD8D8DAFFD8D8D9FFDCDCDDFFA2A2
        A2BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A0CC9C9CAECDCDCDDFFF1F1F1FFF6F5
        F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6F5F6FFF1F1F1FFE0E0E1FFA5A5
        A6BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A0CCDCDCEECE0E0E1FFEAEAEAFFECEC
        ECFFECEDEDFFEDEDEEFFEDEEEEFFEEEFEFFFEEEFEFFFEFEFEFFFEFEFEFFFEFEF
        EFFFEFEFEFFFEEEFEFFFEEEEEEFFEDEEEEFFEDEDEEFFEBECECFFE2E2E3FFA7A7
        A8BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD0D0D1ECE1E1E2FFDEDEDFFFDFDF
        E0FFE0E0E1FFE0E1E1FFE1E1E2FFE1E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
        E2FFE2E2E2FFE1E2E2FFE1E2E2FFE1E1E2FFE0E1E1FFE0E0E1FFE3E3E4FFA8A8
        A9BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD1D1D2ECE2E3E3FFF6F6F6FFF9FA
        FAFFF9F9FAFFF9FAFAFFFAFAFAFFFAF9FAFFF9FAFAFFF9FAFAFFF9FAFAFFF9FA
        FAFFF9FAFAFFFAFAFAFFF9F9FAFFF9F9FAFFFAFAFAFFF6F6F6FFE5E5E6FFA9A9
        AABD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD2D2D3ECE4E5E5FFE5E6E6FFE6E7
        E7FFE7E8E9FFE9E9EAFFE9EAEAFFEAEBEBFFEBECECFFEBECECFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFEAEBEBFFE9EAEAFFE8E9E9FFE7E8E8FFE6E7E7FFAAAA
        AABD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD3D4D4ECE5E6E6FFE7E8E8FFE9E9
        E9FFE9E9EAFFE9EAEAFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEA
        EBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFE9E9EAFFE8E9E9FFE7E8E8FFAAAB
        ABBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD4D5D5ECE6E7E7FFF7F7F7FFFAFB
        FBFFFAFBFBFFFAFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFBFBFBFFF8F8F8FFE9E9EAFFACAC
        ADBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD5D6D6ECE8E9E9FFE4E5E5FFE4E5
        E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE6E6E7FFE5E6E7FFE5E6
        E7FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE6E7E7FFEAEBEBFFADAD
        ADBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD6D7D7ECE8E9E9FFEFEFEFFFF1F1
        F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
        F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFEFEFF0FFEBECECFFADAE
        AEBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD7D8D8ECEAEBEBFFF4F5F5FFF6F7
        F7FFF6F7F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF4F5F5FFEBECECFFAEAF
        AFBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD8D9D9ECEAEBEBFFE4E5E5FFE2E3
        E3FFE3E4E4FFE4E4E5FFE4E4E5FFE4E4E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5
        E5FFE4E5E5FFE4E5E5FFE4E4E5FFE4E4E5FFE3E3E4FFE4E5E5FFEBECECFFAEAF
        AFBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFF5F5F5FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF4F5F5FFEBECECFFAEAF
        AFBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFEEEFEFFFEFF0
        F0FFEFF0F1FFF0F0F1FFF0F1F1FFF0F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
        F2FFF1F1F2FFF1F1F1FFF1F2F2FFF3F4F4FFF3F3F4FFF1F2F2FFEEEFEFFFB0B0
        B0BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFE8E8E8FFE8E8
        E8FFE8E8E9FFE8E8E9FFE8E9E9FFE8E9E9FFE9E9EAFFE9E9EAFFE8E8E9FFEAEA
        EAFFECECEEFFEFEFF0FFECEDEDFFDDDEDFFFDCDCDDFFDCDDDDFFDCDDDDFFADAE
        AEC5000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFF8F8F8FFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF4F4
        F4FFEEEEEFFFE5E5E6FFA7A7A8FF909192FF979798FF9D9D9EFFA4A4A5FD3637
        374D000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFE7E8E8FFE6E7
        E7FFE7E7E8FFE7E7E8FFE7E8E8FFE7E8E8FFE8E8E9FFE8E8E9FFE8E8E9FFEBEB
        ECFFF2F2F3FFB2B2B4FF828384FF929394FF99999AFF9E9FA0FC3434354D0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD8D9D9ECEAEBEBFFEEEEEEFFF0F0
        F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0EFF0FFEFEF
        EFFFEDEDEEFF9FA0A1FF8C8D8EFF979899FF9D9E9FFC3333334B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CDADBDBEFEAEBEBFFF4F5F5FFF6F7
        F7FFF6F6F6FFF6F6F7FFF6F6F7FFF6F7F7FFF6F7F7FFF6F7F7FFF7F7F7FFF3F4
        F4FFEBECECFFA3A4A5FF909091FF9B9B9CFC3232324A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000004040404CECECEE1EAEAEBFFEAEBEBFFE9EA
        EAFFE9EBEBFFE9EBEBFFEAEBEBFFEBEAECFFEBEBECFFEBEBECFFEAEBECFFECED
        EDFFECEDEDFFA4A5A6FF939495FB3131324A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000005454545BE9EAEAFFEAEBEBFFEBEC
        ECFFEBECECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFECECEDFFEDED
        EEFFEAEAECFFAAAAABFB2C2C2C48000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002C2D2C305F5F5F676060
        60685F5F5F675F5F5F675F5F5F675F5F5F675F5F60675F5F60675F5F6067605F
        60676263636C2D2D2D3800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object SumExpReportBtn: TdxBarLargeButton
      Caption = #1048#1090#1086#1075#1086#1074#1099#1081' '#1086#1090#1095#1077#1090
      Category = 0
      Hint = #1048#1090#1086#1075#1086#1074#1099#1081' '#1086#1090#1095#1077#1090
      Visible = ivAlways
      OnClick = SumExpReportBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000400000006000000070000
        0007000000090000000A0000000B0000000C0000000D0000000D0000000E0000
        000D0000000C0000000B0000000B000000090000000700000007000000070000
        0004000000020000000000000000000000000000000000000000000000000000
        00000000000000000000000000050000001B0000012B0000002A0000002B0404
        043C0303043E0303044003030441030304420303044303030443030304440303
        04430303044203030442030304400303043E0404043C0000002D0000002A0000
        012D000000200000000A00000000000000000000000000000000000000000000
        00000000000000000000000000020000000E00000013191919398E8E8FC6B1B1
        B2EAB2B2B3E9B3B3B4E9B6B6B7EAB7B7B8EAB8B8B8EAB8B8B8EAB8B8B8EAB8B8
        B8EAB8B8B8EAB7B7B8EAB5B5B6E9B4B4B5E9B5B5B6EA949495CA1F1F1F410000
        0014000000110000000500000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000989899BECDCDCEFFCFCF
        D0FFD1D1D2FFD3D3D4FFD5D5D6FFD6D6D7FFD7D7D8FFD7D7D8FFD8D8D9FFD8D8
        D9FFD7D7D8FFD7D7D8FFD6D6D7FFD4D4D5FFD2D2D3FFD1D1D2FFA6A6A6CB0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000808080AC0C0C1EED0D0D1FFD2D2
        D3FFD5D5D6FFD6D6D7FFD8D8D9FFDADADBFFDBDBDCFFDBDBDCFFDCDCDDFFDCDC
        DDFFDBDBDCFFDBDBDCFFDAD9DBFFD8D8D9FFD6D6D7FFD4D4D5FFC8C8C9F30C0C
        0C0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000A0A0A0CC2C2C2EBD4D4D5FFD7D7
        D8FFDADADBFFDCDCDDFFDEDEDFFFDFDFE0FFE0E0E1FFE0E0E1FFE0E0E1FFE0E0
        E1FFE0E0E1FFE0E0E1FFDFDFE0FFDDDDDEFFDCDCDDFFD9D9DAFFCACACAEF0C0C
        0C0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000A0A0A0CC6C6C7EBD9D9DAFFDCDC
        DDFFDFDFE0FFE0E0E1FFE1E1E2FFE1E2E2FFE2E2E3FFE2E2E3FFE2E2E3FFE2E2
        E3FFE2E2E3FFE2E2E3FFE1E2E2FFE1E1E2FFE0E0E1FFDEDFDFFFCECECFEF0D0D
        0D0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000A0A0A0CCACACBEBDEDEDFFFE0E0
        E1FFE1E1E2FFE2E2E3FFE3E3E4FFE3E4E4FFE4E4E5FFE4E5E5FFE4E5E5FFE4E5
        E5FFE4E5E5FFE4E4E5FFE3E4E4FFE3E3E4FFE2E2E3FFE1E1E2FFD2D2D3EF0D0D
        0D0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000A0A0B0CCECECEEBE1E1E2FFE2E2
        E3FFE3E3E4FFE4E4E5FFE5E5E6FFE5E6E6FFE5E6E6FFE6E6E7FFE6E7E7FFE6E7
        E7FFE6E6E7FFE5E6E6FFE5E6E6FFE4E5E5FFE4E4E5FFE3E3E4FFD3D4D4EF0D0D
        0D0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD0D0D1EBE2E2E3FFE3E4
        E4FFE5E5E6FFE5E6E6FFE6E7E7FFE7E8E8FFE8E8E9FFE8E9E9FFE8E9E9FFE8E9
        E9FFE8E9E9FFE8E8E9FFE7E8E8FFE6E7E7FFE5E6E6FFE4E5E5FFD5D6D6EF0D0D
        0D0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD1D1D2EBE4E4E5FFE5E6
        E6FFE6E7E7FFE7E8E8FFE8E9E9FFE9EAEAFFEAEBEBFFEAEBEBFFEAEBEBFFEAEB
        EBFFEAEBEBFFEAEBEBFFE9EAEAFFE8E9E9FFE7E8E8FFE6E7E7FFD7D7D8EF0D0D
        0D0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD2D2D3EBE5E6E6FFE6E7
        E7FFE8E9E9FFE9EAEAFFEAEBEBFFEBECECFFEBECECFFECEDEDFFECEDEDFFEBEC
        ECFFEBECECFFEBECECFFEBECECFFEAEBEBFFE9EAEAFFE8E9E9FFD8D9D9EF0D0D
        0E0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD3D4D4EBE6E7E7FFE8E9
        E9FFEAEAEBFFEBECECFFEBECECFFEBECECFFECEDEEFFE8E7E5FFE9E9E7FFECEE
        EEFFEBECECFFEBECECFFEBECECFFEBECECFFEBEBECFFE9EAEAFFD9DADAEF0D0E
        0E0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD4D5D5EBE8E9E9FFEAEA
        EBFFEBECECFFEBECECFFEBECECFFEDEEEFFFE3DED7FFDED7CCFFDED6CBFFE6E3
        DEFFECEDEEFFEBECECFFEBECECFFEBECECFFEBECECFFEBECECFFDADBDBEF0E0E
        0E0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD5D6D6EBE9EAEAFFEBEC
        ECFFEBECECFFEBECECFFEDEFEFFFE4E2DDFFDDD5CAFFEEEFF1FFEBE9E9FFDDD5
        CAFFECECEDFFECECEDFFEBECECFFEBECECFFEBECECFFEBECECFFDCDDDDEF0E0E
        0E0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD6D7D7EBEAEBEBFFEBEC
        ECFFEBECECFFEBECEDFFEDEDEEFFD0C7BAFFE7E6E4FFEEEFF1FFE9E9E8FFD2CA
        BDFFEDEDEDFFECECEDFFECECEDFFEBECECFFEBECECFFEBECECFFDCDDDDEF0E0E
        0E0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD7D8D8EBEBECECFFEBEC
        ECFFEBECECFFF0F1F3FFD6D1C9FFCEC7BBFFF0F2F4FFF1F3F5FFD3CDC4FFD1CB
        C1FFF0F2F3FFECEDEDFFECECEDFFECECEDFFEBECECFFEBECECFFDCDDDDEF0E0E
        0E0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD8D9D9EBEBECECFFEBEC
        ECFFECEDEDFFECECECFFB7AD9CFFE5E5E2FFEFF1F2FFEAE9EAFFB7AD9CFFE9E8
        E7FFEEEEF0FFECEDEDFFECEDEDFFECECEDFFECECEDFFEBECECFFDCDDDDEF0E0E
        0E0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD8D9D9EBEBECECFFEBEC
        ECFFF3F5F7FFC5BEB3FFBEB7AAFFF3F5F7FFF5F6F9FFC1BAAEFFC3BBB0FFF4F5
        F8FFEDEDEEFFEDEEEEFFF1F2F2FFF2F2F3FFF2F2F3FFF0F1F1FFE3E4E4F30F0F
        0F10000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD8D9D9EBEBECECFFEDEE
        EFFFE7E7E6FF9E927DFFE6E5E4FFF1F2F4FFE7E6E5FF9E937EFFE9E8E9FFEEEF
        F0FFEEEEEFFFEFEFF0FFD1D2D2FFC0C0C1FFC3C4C5FFC5C5C6FFB7B7B8E40909
        0909000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD8D9D9EBEBECECFFF5F8
        FAFFB1A99BFFB4AB9EFFF5F7FAFFF6F9FBFFB0A798FFB7AFA2FFF6F8FBFFEDED
        EEFFF1F1F2FFBEBFC0FF868788FF8C8D8EFF959697FF939393EE1D1D1D320000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD8D9D9EBEEEFF0FFE2E1
        DFFF8D816BFFE8E8E8FFF1F2F4FFDBDAD6FF8C7F69FFEBEBEBFFEFEFF0FFEFEF
        F0FFE8E8E9FF949596FF8C8D8EFF99999AFF959596ED21212130000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000B0B0B0CD9D9D9EDF5F7F9FFA69E
        8FFFB2AB9FFFF6F8FBFFF1F2F4FFCBC7C1FFC0BBB2FFF5F6F9FFECEDEDFFEFEF
        F0FFE4E4E5FF969798FF939495FF929293ED2020203000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000006060606D6D7D7E9EAEBEBFF897E
        6AFFE1E0DEFFEEEFF0FFEBEBECFFF0F0F2FFF2F3F5FFEBECECFFECEDEDFFEEEF
        EFFFE4E5E6FF9A9B9CFF8C8D8EED1F1F20300000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000007576767EE0E0DEFF8A7F
        6CFFEDEEEFFFECEDEDFFEBECECFFF0F1F2FFF5F5F7FFECECEDFFECECEDFFEEEE
        EFFFE3E3E4FF969697ED1D1D1D30000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000004545454F5E56
        45E380807E977A7B7B7B777777778C8C88B297958DE37272727B7373737C7373
        747C6F6F6F7C2121212C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001613
        0B60262010AE040100300B07004B2A2311C10100003300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000019150E572E281AA42A2518940B0A07280000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton21: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object ExpReportBtn: TdxBarLargeButton
      Caption = #1056#1072#1089#1093#1086#1076#1099' '#1087#1077#1089#1086#1082
      Category = 0
      Hint = #1056#1072#1089#1093#1086#1076#1099' '#1087#1077#1089#1086#1082
      Visible = ivAlways
      OnClick = ExpReportBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000040000000500000005000000060000000600000000000000000000
        0005000000060000000500000005000000040000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000F0000001E0000002600000028000000200000
        0021000000230000002500000027000000260000002D1027126E102A13710000
        002F000000260000002700000025000000240000002100000021000000280000
        0028000000200000001300000003000000000000000000000000000000000000
        000000000000000000000000000F0000001E000000200505052F3F3F40785757
        589357575893575758945D5A5D955855578B21592CBB2C893DFF2C893DFF215C
        2DC15554548B5F5C5F955858599458585994585859934242437B080808340000
        0020000000210000001300000003000000000000000000000000000000000000
        0000000000000000000000000000000000000A0A0A0A9E9E9FC9CCCCCDFFCFCF
        D0FFD1D1D2FFD7D4D7FFDCD7DBFF6BAE7FFF279345FF2D944BFF2D944BFF2693
        45FF63AB79FFDBD8DAFFDBD7DAFFD3D4D5FFD3D3D4FFD0D0D1FFA8A8A9D10E0E
        0E0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004C4C4C5FCCCCCCFFCECECFFFD0D0
        D1FFD7D4D7FFDDD7DBFF61B07FFF1D994BFF2D9F58FF2D9F58FF2D9F58FF2EA0
        58FF1D9A4BFF59AE79FFDCD8DBFFDCD7DBFFD3D4D4FFD2D2D3FFD0D0D1FF5757
        576B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000062626279D0D0D1FFD3D3D4FFD7D6
        D7FFDBD8DBFF62B888FF1DA558FF2DAA64FF2DAA64FF2DAA64FF2DAA64FF2DAA
        64FF2EAA64FF1DA558FF59B683FFDBDADCFFDCDADCFFD7D7D8FFD5D5D6FF6868
        687E000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000062626276D4D4D5FFD7D7D8FFE8DD
        E4FF76C39CFF07A755FF20AE65FF2BB06CFF2CB06CFF2CB06CFF2CB06CFF2CB0
        6CFF2CB06CFF21AE65FF08A755FF6CC197FFEDE2E8FFDCDCDDFFD9D9DAFF6868
        687B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000063636476D8D8D9FFDCDCDDFFE6E0
        E4FFAED5C3FF68C599FF66C497FF2DB775FF29B673FF2AB674FF2AB674FF29B6
        73FF2BB774FF64C496FF67C498FFA3D2BCFFE9E3E7FFE0E0E1FFDEDEDFFF6A6A
        6B7B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000065656676DDDDDEFFE0E0E1FFE0E1
        E1FFEAE4E8FFF7E8F0FFE1E4E4FF31BF80FF25BB7AFF28BD7CFF28BD7CFF25BB
        7BFF2CBE7EFFDCE3E1FFF9E9F2FFEDE6EAFFE1E2E3FFE2E2E3FFE1E1E2FF6C6C
        6D7B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000068686876E0E0E1FFE1E2E2FFE2E3
        E3FFE3E4E4FFE9E6E8FFD6E3DEFF2DC286FF21BF80FF25C082FF25C082FF22BF
        81FF28C183FFD0E2DBFFECE7EAFFE5E5E6FFE4E5E5FFE3E4E4FFE2E2E3FF6D6D
        6D7B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000069696976E1E2E2FFE3E3E4FFE4E4
        E5FFE5E6E6FFEBE8E9FFD7E5E0FF2AC48AFF1EC184FF22C286FF22C286FF1FC1
        85FF25C387FFD2E4DEFFEDE9EBFFE7E7E8FFE6E6E7FFE5E5E6FFE4E4E5FF6D6D
        6E7B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000069696A76E3E3E4FFE4E5E5FFE5E6
        E6FFE7E7E8FFEDE9EBFFD9E6E2FF26C68EFF1AC388FF1EC48AFF1EC48AFF1BC3
        89FF21C58BFFD3E6E0FFEFEBEDFFE8E9E9FFE7E8E8FFE6E7E7FFE5E6E6FF6E6E
        6E7B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006A6A6A76E4E5E5FFE6E6E7FFE7E8
        E8FFE8E9E9FFEFECEDFFDAE8E4FF23C893FF17C58DFF1BC68FFF1BC68FFF18C5
        8EFF1EC790FFD4E8E2FFF2EDEFFFEAEBEBFFE9EAEAFFE8E9E9FFE7E7E8FF6F6F
        6F7B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006A6A6A76E5E6E6FFE7E8E8FFE8E9
        E9FFEAEBEBFFF0EDEEFFD9E9E5FF1EC996FF0EC690FF12C792FF12C792FF0EC7
        91FF18C994FFD2E8E2FFF2EDEFFFEBECECFFEBECECFFEAEBEBFFE8E9E9FF6F70
        707B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006A6B6B76E7E7E8FFE9E9EAFFEAEB
        EBFFEBECECFFEFEDEEFFDEEAE7FF33CE9FFF21CA96FF25CB98FF25CB98FF22CB
        96FF2DCD9DFFD8E9E5FFF1EDEEFFEBECECFFEBECECFFEBECECFFEAEAEBFF7070
        707B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006B6B6B76E8E8E9FFEAEBEBFFEBEC
        ECFFEBECECFFEBECECFFEFEDEEFFC1E6DCFFAEE2D3FFB1E3D4FFB1E3D4FFAEE2
        D3FFBFE5DCFFEFEDEEFFEBECECFFEBECECFFEBECECFFEBECECFFEBECECFF7171
        717B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006B6C6C76E8E9E9FFEBECECFFEBEC
        ECFFEBECECFFEBECECFFEBECECFFF6EDF1FFFAEEF3FFF9EFF2FFF9EFF2FFFAEF
        F3FFF7EEF1FFECECEDFFECECEDFFEBECECFFEBECECFFEBECECFFEBECECFF7172
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006B6C6C76E9EAEAFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFECECEDFFECECEDFFECEDEDFFECEDEDFFECEDEDFFECED
        EDFFECEDEDFFECEDEDFFECECEDFFECECEDFFEBECECFFEBECECFFEBECECFF7172
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6C6C76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDED
        EEFFEDEDEEFFECEDEDFFECEDEDFFECECEDFFECECEDFFEBECECFFEBECECFF7172
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6C6D76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
        EEFFEDEDEEFFEDEDEEFFEDEEEEFFEFF0F0FFEFEFF0FFEEEFEFFFEEEFEFFF7273
        737B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6D6D76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
        EEFFEDEDEEFFF0F0F1FFECEDEDFFDFE0E0FFDDDDDFFFDDDEDEFFDDDEDEFF7070
        707E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6D6D76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
        EEFFF0F0F1FFE3E3E4FFA4A5A6FF919192FF989899FF9E9FA0FF8E8F8FDB1717
        1720000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6C6D76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEEEE
        EFFFF1F1F2FFAEAFB0FF828384FF939495FF9A9A9BFF89898AD91111111A0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6C6C76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEEEE
        EFFFEDEDEEFF9E9FA0FF8D8D8EFF99999AFF888888D811111119000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006F6F6F79E9EAEAFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFECECEDFFECECEDFFECEDEDFFECEDEDFFECEDEDFFEDEE
        EEFFECECEDFFA3A3A4FF929293FF858586D81010101800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004545464CE8E9E9FFEBEBECFFEBEC
        ECFFEBECECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFECEDEDFFEDEE
        EEFFEBECEDFFA4A5A6FF7D7D7ED60F0F0F170000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000101010188888895E4E5E5F8EBEC
        ECFFEBECECFFEBECECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFEDED
        EEFFEAEAEAFF909192D20C0C0C16000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001A1A1A1C2829
        292C2727272A2727272A2727272A2727272A2727272A2727272A2727272A2727
        272A2929292D0A0A0A0A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object FinExpReportBtn: TdxBarLargeButton
      Caption = #1060#1080#1085#1072#1085#1089'. '#1088#1072#1089#1093#1086#1076#1099
      Category = 0
      Hint = #1060#1080#1085#1072#1085#1089'. '#1088#1072#1089#1093#1086#1076#1099
      Visible = ivAlways
      OnClick = FinExpReportBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000040000000A0000000E0000000D0000000A0000
        000C0000000E0000001000000011000000120000001300000014000000140000
        00130000001200000012000000100000000F0000000D0000000B0000000F0000
        000F0000000B0000000600000000000000000000000000000000000000000000
        0000000000000000000100000015000000290000002609090A3F262627622727
        2865272728662828286827272869282828692828296A2828296A2828296A2828
        296A282829692828286928282868272728672828296624242560010101370000
        002B0000012C0000001A00000005000000000000000000000000000000000000
        0000000000000000000000000005000000082C2C2C43B0B0B1E5CACACBFFCCCC
        CDFFCECECFFFCFCFD0FFD0D0D1FFD1D1D2FFD2D2D3FFD3D3D4FFD3D3D4FFD3D3
        D4FFD3D3D4FFD2D2D3FFD1D1D2FFD0D0D1FFCFCFD0FFCDCDCEFFA2A2A3D31515
        15260000000A0000000600000001000000000000000000000000000000000000
        000000000000000000000000000000000000A5A5A6CECBCBCCFFCACACBFFCCCC
        CDFFCECECFFFCFCFD0FFD1D1D2FFD2D2D3FFD3D3D4FFD3D3D4FFD3D3D4FFD3D3
        D4FFD3D3D4FFD3D3D4FFD1D1D2FFD0D0D1FFCECED0FFCECECFFFD0D0D1FF8282
        839E000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000909090BC0C0C1EFD0D0D1FFE4E4E4FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9EAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEAEAFFEAEA
        EAFFEAEAEAFFEAEAEAFFEAEAEAFFE9E9EAFFE9E9EAFFE5E5E6FFD3D3D4FF9F9F
        A0C2000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A0CC1C1C2ECD4D4D5FFEDEDEDFFF2F2
        F2FFF3F3F3FFF4F4F4FFF4F4F5FFF4F4F5FFF4F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F5F5FFF4F5F5FFF4F4F5FFF4F4F4FFF4F4F4FFEFEFEFFFD8D8D9FF9E9E
        9FBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A0CC6C6C7ECD7D7D8FFD4D4D5FFD5D5
        D6FFD7D7D9FFD9D9DAFFD9D9DAFFDADADBFFDADADBFFDADADBFFDADADBFFDADA
        DBFFDADADBFFDADADBFFDADADBFFD9D9DAFFD8D8DAFFD8D8D9FFDCDCDDFFA2A2
        A2BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A0CC9C9CAECDCDCDDFFF1F1F1FFF6F5
        F6FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5
        F5FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FFF6F5F6FFF1F1F1FFE0E0E1FFA5A5
        A6BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000A0A0A0CCDCDCEECE0E0E1FFEAEAEAFFECEC
        ECFFECEDEDFFEDEDEEFFEDEEEEFFEEEFEFFFEEEFEFFFEFEFEFFFEFEFEFFFEFEF
        EFFFEFEFEFFFEEEFEFFFEEEEEEFFEDEEEEFFEDEDEEFFEBECECFFE2E2E3FFA7A7
        A8BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD0D0D1ECE1E1E2FFDEDEDFFFDFDF
        E0FFE0E0E1FFE0E1E1FFE1E1E2FFE1E2E2FFE2E2E2FFE2E2E2FFE2E2E2FFE2E2
        E2FFE2E2E2FFE1E2E2FFE1E2E2FFE1E1E2FFE0E1E1FFE0E0E1FFE3E3E4FFA8A8
        A9BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD1D1D2ECE2E3E3FFF6F6F6FFF9FA
        FAFFF9F9FAFFF9FAFAFFFAFAFAFFFAF9FAFFF9FAFAFFF9FAFAFFF9FAFAFFF9FA
        FAFFF9FAFAFFFAFAFAFFF9F9FAFFF9F9FAFFFAFAFAFFF6F6F6FFE5E5E6FFA9A9
        AABD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD2D2D3ECE4E5E5FFE5E6E6FFE6E7
        E7FFE7E8E9FFE9E9EAFFE9EAEAFFEAEBEBFFEBECECFFEBECECFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFEAEBEBFFE9EAEAFFE8E9E9FFE7E8E8FFE6E7E7FFAAAA
        AABD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD3D4D4ECE5E6E6FFE7E8E8FFE9E9
        E9FFE9E9EAFFE9EAEAFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEA
        EBFFEAEAEBFFEAEAEBFFEAEAEBFFEAEAEBFFE9E9EAFFE8E9E9FFE7E8E8FFAAAB
        ABBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD4D5D5ECE6E7E7FFF7F7F7FFFAFB
        FBFFFAFBFBFFFAFBFBFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFBFBFBFFF8F8F8FFE9E9EAFFACAC
        ADBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD5D6D6ECE8E9E9FFE4E5E5FFE4E5
        E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE6E6E7FFE5E6E7FFE5E6
        E7FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE5E6E6FFE6E7E7FFEAEBEBFFADAD
        ADBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD6D7D7ECE8E9E9FFEFEFEFFFF1F1
        F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
        F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFEFEFF0FFEBECECFFADAE
        AEBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD7D8D8ECEAEBEBFFF4F5F5FFF6F7
        F7FFF6F7F7FFF6F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF6F7F7FFF4F5F5FFEBECECFFAEAF
        AFBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD8D9D9ECEAEBEBFFE4E5E5FFE2E3
        E3FFE3E4E4FFE4E4E5FFE4E4E5FFE4E4E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5
        E5FFE4E5E5FFE4E5E5FFE4E4E5FFE4E4E5FFE3E3E4FFE4E5E5FFEBECECFFAEAF
        AFBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFF5F5F5FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF4F5F5FFEBECECFFAEAF
        AFBD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFEEEFEFFFEFF0
        F0FFEFF0F1FFF0F0F1FFF0F1F1FFF0F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
        F2FFF1F1F2FFF1F1F1FFF1F2F2FFF3F4F4FFF3F3F4FFF1F2F2FFEEEFEFFFB0B0
        B0BD000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFE8E8E8FFE8E8
        E8FFE8E8E9FFE8E8E9FFE8E9E9FFE8E9E9FFE9E9EAFFE9E9EAFFE8E8E9FFEAEA
        EAFFECECEEFFEFEFF0FFECEDEDFFDDDEDFFFDCDCDDFFDCDDDDFFDCDDDDFFADAE
        AEC5000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFF8F8F8FFFBFB
        FBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF4F4
        F4FFEEEEEFFFE5E5E6FFA7A7A8FF909192FF979798FF9D9D9EFFA4A4A5FD3637
        374D000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD9D9D9ECEBECECFFE7E8E8FFE6E7
        E7FFE7E7E8FFE7E7E8FFE7E8E8FFE7E8E8FFE8E8E9FFE8E8E9FFE8E8E9FFEBEB
        ECFFF2F2F3FFB2B2B4FF828384FF929394FF99999AFF9E9FA0FC3434354D0000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CD8D9D9ECEAEBEBFFEEEEEEFFF0F0
        F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0EFF0FFEFEF
        EFFFEDEDEEFF9FA0A1FF8C8D8EFF979899FF9D9E9FFC3333334B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000B0B0B0CDADBDBEFEAEBEBFFF4F5F5FFF6F7
        F7FFF6F6F6FFF6F6F7FFF6F6F7FFF6F7F7FFF6F7F7FFF6F7F7FFF7F7F7FFF3F4
        F4FFEBECECFFA3A4A5FF909091FF9B9B9CFC3232324A00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000004040404CECECEE1EAEAEBFFEAEBEBFFE9EA
        EAFFE9EBEBFFE9EBEBFFEAEBEBFFEBEAECFFEBEBECFFEBEBECFFEAEBECFFECED
        EDFFECEDEDFFA4A5A6FF939495FB3131324A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000005454545BE9EAEAFFEAEBEBFFEBEC
        ECFFEBECECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFECECEDFFEDED
        EEFFEAEAECFFAAAAABFB2C2C2C48000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000002C2D2C305F5F5F676060
        60685F5F5F675F5F5F675F5F5F675F5F5F675F5F60675F5F60675F5F6067605F
        60676263636C2D2D2D3800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object InvExpReportBtn: TdxBarLargeButton
      Caption = #1048#1085#1074#1077#1089#1090'. '#1088#1072#1089#1093#1086#1076#1099
      Category = 0
      Hint = #1048#1085#1074#1077#1089#1090'. '#1088#1072#1089#1093#1086#1076#1099
      Visible = ivAlways
      OnClick = InvExpReportBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000170000
        0040000000520000005200000052000000520000005200000052000000520000
        0052000000520000005200000052000000520000005200000052000000520000
        0052000000520000005200000052000000520000005200000052000000520000
        0052000000520000005200000052000000400000001200000000000000000000
        01130A4284FF0A4284FF0A4284FF0A4284FF0A4284FF0A4284FF0A4284FF0A42
        84FF0A4284FF0A4284FF0A4284FF0A4284FF0A4284FF0A4284FF0A4284FF0A42
        84FF0A4284FF0A4284FF0A4284FF0A4284FF0A4284FF0A4284FF0A4284FF0A42
        84FF0A4284FF0A4284FF0A4284FF000000230000000000000000000000000B49
        91FF245FB0FF245FB0FF245FB0FF245FB0FF245FB0FF245FB0FF245FB0FF245F
        B0FF245FB0FF245FB0FF245FB0FF245FB0FF245FB0FF245FB0FF245FB0FF245F
        B0FF245FB0FF245FB0FF245FB0FF245FB0FF245FB0FF245FB0FF245FB0FF245F
        B0FF245FB0FF245FB0FF245FB0FF0B4991FF0000000000000000000000000C49
        93FF245FB0FF1346A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346
        A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346
        A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346A0FF1346
        A0FF1346A0FF1346A0FF245FB0FF0B4991FF0000000000000000000000000B49
        92FF225CAFFF174BA5FF174CA5FF174CA5FF174CA5FF174CA5FF174CA6FF174C
        A6FF174CA6FF174CA6FF174CA6FF174CA6FF174CA6FF174CA6FF174DA6FF174D
        A6FF174DA6FF174DA6FF174DA6FF174DA6FF174DA6FF174DA6FF174DA6FF174D
        A6FF174DA6FF174DA6FF235EB1FF0B4991FF0000000000000000000000000B49
        91FF225CB0FF1F59B2FF205CB4FF205BB4FF1F58B1FF1E57B0FF1E56AFFF1C55
        AFFF1C55AEFF1C55AEFF1B55ADFF1B53ADFF1B53ACFF1B53ADFF1B55AEFF1C56
        B0FF1C56B0FF1E56B0FF1E57B1FF1E59B1FF1F5AB3FF205AB3FF205BB4FF215C
        B5FF225FB6FF215EB5FF225EB3FF0B4991FF0000000000000000000000000B49
        91FF235EB2FF2361B8FF2768BDFF2768BEFF2565BCFF2361B8FF225FB7FF215E
        B6FF215EB7FF205DB6FF215DB6FF215DB6FF215EB6FF215EB6FF215EB6FF225F
        B7FF225FB7FF225FB7FF225FB7FF2260B8FF2260B8FF2362B9FF2463BAFF2565
        BCFF2666BDFF2362BAFF2360B5FF0B4991FF0000000000000000000000000B49
        91FF235FB4FF2362BBFF2465BCFF2769BFFF286BC0FF286BC0FF2769BFFF2666
        BEFF2464BCFF2463BCFF2363BAFF2260B7FF215EB5FF215DB5FF215EB5FF2260
        B7FF2362BAFF2362BBFF2463BCFF2464BCFF2566BDFF2769BFFF286BC0FF2768
        BFFF2565BDFF2363BBFF2361B7FF0B4991FF0000000000000000000000000B49
        91FF2464BDFF2464BDFF2464BDFF2565BEFF2668BFFF276BC1FF286DC1FF2A6E
        C2FF286DC1FF276BC1FF225DB2FF194B9CFF18499AFF184A9AFF19499AFF1C50
        A1FF2361B7FF2768BFFF276BC0FF286CC1FF2A6DC1FF286CC0FF2769BFFF2566
        BEFF2464BDFF2464BDFF2462B8FF0B4991FF0000000000000000000000000B49
        91FF215FB5FF2363BBFF2464BDFF2465BDFF2465BEFF2566BEFF2667BFFF2769
        C0FF286CC1FF286BBEFF1B4D9CFF374D6DFF5C5B49FF5C5B49FF5C5B49FF4152
        66FF1F55A8FF2564B8FF286CC0FF276CC1FF2668C0FF2567BEFF2465BDFF2464
        BDFF2464BDFF2261B9FF215FB6FF0B4991FF0000000000000000000000000B49
        91FF104393FF104593FF134796FF154B9CFF174FA1FF1B57AAFF205EB4FF2364
        BCFF2466BDFF2362B7FF184896FF5C5B49FF8D8D73FF8D8D73FF8D8D73FF5C5B
        49FF1B4FA2FF1E56AAFF2463BAFF2465BEFF205EB5FF1B57ABFF174FA1FF144A
        9BFF124695FF104393FF104393FF0B4991FF0000000000000000000000000B47
        90FF0C3C88FF0C3C88FF0C3C88FF0C3C88FF0C3C88FF0C3C88FF0C3C88FF0C3C
        88FF0C3C88FF0C3C88FF0D3C87FF525955FF5A5A4CFF5A5A4CFF5A5A4CFF5C5B
        49FF1B417DFF0C3C88FF0C3C88FF0C3C88FF0C3C88FF0C3C88FF0C3C88FF0C3C
        88FF0C3C88FF0C3C88FF0C3C88FF0B4790FF000000000000000000000000043D
        81FF174EA4FF1950A9FF1950A9FF1950A9FF1950A9FF1950A9FF1950A9FF1950
        A9FF1A51A9FF174CA2FF053B7EFF555A52FF8D8D73FF8D8D73FF8D8D73FF5C5B
        49FF053B7EFF1950A8FF1A51AAFF1A51AAFF1951AAFF1A52AAFF1A52AAFF1A52
        AAFF1A52AAFF1A53AAFF154DA1FF053C81FF000000000000000000000000053F
        84FF1F59B2FF174DA6FF1548A1FF1548A1FF1548A1FF1548A1FF1548A1FF1549
        A1FF16479FFF2765B5FF144D95FF595B4FFFFFFFFFFFD9DCBEFFFFFFFFFF5C5B
        49FF184C8BFF2460B1FF1549A1FF1549A1FF1549A1FF1549A1FF1549A1FF1549
        A1FF1549A1FF184EA7FF1E58B1FF053E85FF0000000000000000000000010740
        89FF2461B7FF1549A1FF184DA6FF194FA8FF174BA4FF184EA7FF184EA7FF184E
        A7FF2562B3FF2A69B8FF18539DFF425368FF5C5B49FF5C5B49FF5C5B49FF465B
        71FF154D93FF2A68B8FF235EB1FF184EA8FF184EA8FF194EA8FF174CA5FF1A51
        AAFF184FA8FF1549A1FF2565BAFF084088FF0000000000000000000000010843
        8DFF2A6CBFFF174CA5FF194FAAFF1C57B1FF1E57B1FF1E57B1FF1E58B1FF215D
        B3FF2765B6FF2663B4FF1B4EA1FF0F3F8CFF0F3F8BFF0F3E8BFF103F8DFF0F41
        8EFF2460B1FF2868B7FF2767B7FF215CB4FF205AB4FF1F5BB4FF1F5BB5FF1F5A
        B5FF1A52ACFF174DA6FF2C70C2FF08438DFF0000000000000000000000020946
        91FF3178C6FF1B52ACFF1E59B3FF1F59B2FF1F59B3FF1F59B3FF1F59B3FF215D
        B5FF215DB4FF1E56AFFF1B50A7FF194DA2FF194BA0FF194BA0FF194CA1FF1A4F
        A6FF1E55ACFF235FB5FF2563B6FF2260B6FF205CB5FF205CB5FF215DB5FF215D
        B6FF215DB5FF1C56AFFF327AC9FF094692FF0000000000000000000000030A49
        98FF3985CFFF225EB6FF1F5CB5FF205BB5FF205CB5FF205BB5FF205BB5FF205C
        B5FF205BB5FF215CB5FF205BB5FF1F59B1FF1F58B1FF1E57AEFF1F59B1FF1F5A
        B1FF215DB6FF215EB7FF215EB7FF215EB7FF225EB8FF225EB7FF225FB8FF215F
        B8FF2160B8FF2361BBFF3A86D0FF0A4998FF0000000000000000000000030B4B
        9DFF3F90D6FF2666BDFF2463BAFF2360B8FF225FB8FF225EB8FF215EB7FF215E
        B7FF225EB7FF215FB8FF215EB7FF225FB8FF215FB8FF215FB8FF225FB9FF2260
        B8FF2260B9FF2260B9FF2260B9FF2260B9FF2261B9FF2360BAFF2462BBFF2464
        BBFF2666BEFF286CC0FF4091D7FF0B4B9DFF0000000000000000000000040C4E
        A1FF4398DCFF2E73C4FF2B70C3FF286CC1FF286BBFFF2768BEFF2666BDFF2565
        BCFF2463BBFF2362BAFF2363BBFF2362BAFF2462BBFF2462BBFF2462BBFF2563
        BBFF2565BDFF2465BDFF2565BDFF2565BDFF2566BEFF2768BFFF286BC2FF2A6F
        C3FF2C72C4FF2F77C7FF4398DCFF0B4EA1FF0000000000000000000000050D50
        A4FF479CDDFF327CCBFF317BC9FF3078C8FF3076C6FF2F76C5FF2F74C5FF2D73
        C4FF2B70C4FF2A6FC2FF286DC3FF286CC1FF286DC1FF2A6EC2FF2B6FC3FF2A6F
        C3FF2B70C4FF2B70C4FF2C70C4FF2D72C4FF2E73C5FF2E75C6FF3077C8FF317A
        CAFF327ECCFF3380CDFF479CDEFF0D50A4FF0000000000000000000000060D52
        A9FF489EDFFF3580CDFF347FCCFF347ECCFF337DCBFF337DCBFF337CCBFF327C
        CBFF317CCAFF317BC9FF317ACAFF317AC9FF317AC9FF317ACAFF327BCAFF317B
        CAFF327CCAFF327CCBFF327CCAFF337DCCFF337ECCFF337FCCFF3480CDFF3581
        CEFF3782CEFF3782CFFF489EDFFF0E53A9FF0000000000000000000000000E55
        ADFF70B0EBFF63A5E5FF327DCBFF317BCAFF327BCAFF327CCBFF337DCBFF337D
        CCFF337ECCFF337DCBFF337ECCFF347FCDFF347FCDFF3480CEFF3580CEFF3481
        CDFF3581CEFF3582CEFF3582CEFF3582CEFF3582CEFF3582CFFF3581CEFF3580
        CEFF3480CDFF599DDFFF70B0EBFF0E55ACFF0000000000000000000000000F57
        AFFF2464BDFF2464BDFF2464BDFF2464BDFF2464BDFF2464BDFF2464BDFF2464
        BDFF143D84FF143D84FF143D84FF2464BDFF2464BDFF2464BDFF2464BDFF2464
        BDFF2464BDFF143D84FF143D84FF143D84FF2464BDFF2464BDFF2464BDFF2464
        BDFF2464BDFF2464BDFF2464BDFF0F57AFFF0000000000000000000000000714
        21300F57AFFF0F57AFFF0F57AFFF0F57AFFF0F57AFFF0F57AFFF0F57AFFF0F57
        AFFF0E4EA2FF071E53FF0D4C9EFF0F57AFFF0F57AFFF0F57AFFF0F57AFFF0F57
        AFFF0F57AEFF0D4898FF071E53FF0F57AFFF0F57AFFF0F57AFFF0F57AFFF0F57
        AFFF0F57AFFF0F57AFFF0F57AFFF0A18242E0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000010205051741C7071C4DEE071E53FF071E53FF071E53FF071E53FF071E
        53FF071E53FF071D51F8051741C7000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object SalExpReportBtn: TdxBarLargeButton
      Caption = #1056#1072#1089#1093#1086#1076#1099' '#1087#1086' '#1079'/'#1087
      Category = 0
      Hint = #1056#1072#1089#1093#1086#1076#1099' '#1087#1086' '#1079'/'#1087
      Visible = ivAlways
      OnClick = SalExpReportBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00040000000E000000150000001B0000001D0000001500000012000001180000
        0220000002270101012900000229000002250000011F0000011D000000210000
        002B0000012C0000012B0000002A000000290000002800000026000000240000
        00210000001E0000001A000000150000000E0000000400000000000000000000
        00080000001B00000028000000260000012A27170369553103A6744202CC7F49
        03D9894F03E58B5102E8894F03E57F4A03DA744302CE583303AC2B1903750000
        023A00000039000001430000014200000141000001400000013D0000013B0000
        0138000001340000012F000000280000001B0000000800000000000000000000
        000000000001000000010F090318794503BEA65F01FFA76000FFA66000FFA660
        00FFA55F00FFA55F00FFA55F00FFA66000FFA66000FFA76000FFA66001FF7C48
        03C7140C03290000000A0000000F0000000E0000000D0000000C0000000A0000
        0009000000070000000500000003000000010000000000000000000000000000
        00000000000003020104864E03CBA76100FFA76200FFA76100FFA76100FFA761
        00FFA76100FFA76100FFA76100FFA76100FFA76100FFA76100FFA76100FFA862
        00FF8C5203D50503010500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000036200350A96300FFA96400FFA96400FFA96400FFA96400FFA964
        00FFA96400FFA96400FFA96400FFA96400FFA96400FFA96400FFA96400FFA964
        00FFA96300FF3D24035B00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005E38038AAC6600FFAC6600FFAC6600FFAC6600FFAC6600FFAC66
        00FFAC6600FFAC6600FFAC6600FFAC6600FFAC6600FFAC6600FFAC6600FFAC66
        00FFAC6600FF6B40039D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006C42049DAF6900FFAF6900FFAF6900FFAF6900FFAF6900FFAF69
        00FFAF6900FFAF6900FFAF6900FFAF6900FFAF6900FFAF6900FFAF6900FFAF69
        00FFAE6900FF754500A800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005C380384B26B00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B
        00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B
        00FFB36B00FF6D4805A606190D30112A1351132F155A0F26114909170A2E050B
        0515000000000000000000000000000000000000000000000000000000000000
        0000000000003B240353B46D00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D
        00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D
        00FFC16B00FF6A7A20FE21883FFF2D863AFF2E863AFF2D863AFF2D863AFF2B7F
        37F121602BB60B1E0E3800000000000000000000000000000000000000000000
        0000000000000B07020FAD6A02F1B77000FFB77000FFB77000FFB77000FFB770
        00FFB77000FFB77000FFB77000FFB77000FFB77000FFB77000FFB77000FFB870
        00FFBA6F00FF408A3BFF288F47FF2D8E44FF2D8E44FF2D8E44FF2D8E44FF2D8E
        44FF2D8D43FF2B8B42FC0A1E0F36000000000000000000000000000000000000
        000000000000000000005D3A0480BA7200FFB97200FFB97200FFB97200FFB972
        00FFB97200FFB97200FFB97200FFB97200FFB97200FFB97200FFB97300FFC86E
        00FF86801DFF229954FF2D964EFF2D974EFF2D974EFF2D974EFF2D974EFF2D97
        4EFF2D974EFF2D964DFF206936B1000000000000000000000000000000000000
        0000000000000000000003020104955C02CABC7500FFBC7500FFBC7500FFBC75
        00FFBC7500FFBC7500FFBC7500FFBC7500FFBC7500FFBC7500FFC77100FFAF79
        0AFF329D54FF29A05AFF2D9F57FF2D9F57FF2D9F57FF2D9F57FF2D9F57FF2D9F
        57FF2D9F57FF2D9F58FF28894CDB000000000000000000000000000000000000
        00000000000000000000000000000E090113945C02C6BF7700FFBF7700FFBF77
        00FFBF7700FFBF7700FFBF7700FFBF7700FFBF7700FFC37600FFAF7D0FFF3EA2
        56FF25AA66FF2EA761FF2DA761FF2DA761FF2DA761FF2DA761FF2DA761FF2DA7
        61FF2DA761FF2DA761FF278F53D9000000000000000000000000000000000000
        000000000000000000000000000000000000030201035E3B027CAA6B03DFC179
        00FFC17900FFC17900FFC17900FFC17900FFAD6B02E16C48079230A35FF124B0
        6EFF2EAE68FF2DAE68FF2DAE68FF2DAE68FF2DAE68FF2DAE68FF2DAE68FF2DAE
        68FF2DAE68FF2DAE68FF207C4BB5000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000805308A5C47C
        00FFC47C00FFC47C00FFC47C00FFC47C00FF885605AF0000000017764CA62CB1
        6DFF2BB26EFF2BB26EFF2BB26EFF2BB26EFF2BB26EFF2BB26EFF2BB26EFF2BB2
        6EFF2CB26EFF2BB26EFF12442B61000000000000000000000000000000000000
        000000000000000000000000000000000000000000006D46048CC67E00FFC77E
        00FFC77E00FFC77E00FFC77E00FFC77E00FFC67E00FF7444018E0015131729B5
        73FD2AB674FF2AB674FF2AB674FF2AB674FF2AB674FF2AB674FF2AB674FF2AB6
        74FF2AB674FF239961D601040305000000000000000000000000000000000000
        00000000000000000000000000000000000020150328C98001FFC98100FFC981
        00FFC98100FFC98100FFC98100FFC98100FFC98100FFC98101FF210D00210940
        2C5428BB7AFF29BB7AFF29BB7AFF29BB7AFF29BB7AFF29BB7AFF29BB7AFF28BB
        7AFF24AA6FE8071D132700000000000000000000000000000000000000000000
        000000000000000000000000000000000000623F027ACC8300FFCC8300FFCC83
        00FFCC8300FFCC8300FFCC8300FFCC8300FFCC8300FFCC8300FF694403830000
        00000C3624481F9563C727BD7EFC27BF7FFF27BF7FFF27BF7FFF26B77AF41B80
        55AB0517101F0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000784F0592CF8600FFCF8600FFCF85
        00FFCF8500FFCF8500FFCF8500FFCF8500FFCF8600FFCF8600FF8257079E0000
        0000000000000B2D203B24BB7FF725C082FF25C082FF24C082FF22A873DE0205
        0406000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C4A0A7FD38C06FFD08700FFD188
        00FFD18800FFD18800FFD18800FFD18800FFD18700FFD38B05FF734F0B880000
        00000518111F1FB77DF021C286FF22C286FF22C286FF22C286FF21C285FF1A92
        65C0010201020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002A1C0531DB9717FFD38900FFD48A
        00FFD48A00FFD48A00FFD48A00FFD48A00FFD38900FFDB9716FF3423063D0000
        0000116A4B8A1FC389FF1FC389FF1FC389FF1FC389FF1FC389FF1FC389FF1FC3
        89FF093123400000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000008C6111A1DE9C1AFFD68D
        02FFD58A00FFD58B00FFD58A00FFD68D02FFDE9C19FF946713AB000000000000
        00001C986EC31CC58DFF1DC58DFF1DC58DFF1DC58DFF1DC58DFF1DC58DFF1DC5
        8DFF1262477E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000002000003906411A5E2A1
        23FFE09D1BFFDE9A15FFE09D1BFFE2A122FF966913AC05020007000000000000
        0000228A67AE1BC790FF1AC690FF1AC690FF1AC690FF1AC690FF18C690FF21C8
        92FF16523E670000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003926
        04427F5B138FA47518B7815C14913E2904470000000000000000000000000000
        00001445355630CB99FF11C792FF14C893FF16C893FF13C893FF17C893FF34C9
        99FB0615101A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000278667A538CE9EFF21CB99FF1BCA98FF26CC9AFF3DCE9FFF1651
        3E64000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000018554268379F7DC23DB38DDB308F70AE0C3529420000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton22: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton12: TdxBarLargeButton
      Caption = #1043#1088#1072#1092#1080#1082' '#1088#1072#1089#1093#1086#1076#1086#1074
      Category = 0
      Hint = #1043#1088#1072#1092#1080#1082' '#1088#1072#1089#1093#1086#1076#1086#1074
      Visible = ivAlways
      OnClick = dxBarLargeButton12Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000100000002000000030000
        0004000000050000000500000006000000060000000600000004000000040000
        0005000000060000000600000005000000050000000400000003000000020000
        0001000000010000000000000000000000000000000000000000000000000000
        00060000001500000020000000260000002A0000012E00000131000001330000
        0135000001370000003200000028000000290000002F01000138010101390000
        00310000002A000000270000002E000000360000013600000133000001310000
        012E0000002A0000002600000020000000150000000600000000000000000000
        00060000001500000020000000260000012B0000012F00000131000001340000
        002E00000023040B0647113217861C5225B822652CD5277132E6287332E92469
        2EDA1F5A28C5153B1B9608150A59000000280000002800000033000001310000
        012F0000012B0000002600000020000000150000000600000000000000000000
        000000000000000000000000000000000001000000020000000200000000050E
        081B1A522A932A8741ED2E9246FF2E9246FF2E9146FF2D9146FF2D9146FF2D91
        46FF2E9246FF2E9246FF2C8F45FC206632B50B21113A00000000000000000000
        0002000000010000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000011391F5A2990
        4DEB2D9C53FF2D9C53FF2D9C54FF2D9C54FF2D9C54FF2D9C54FF2D9C54FF2D9C
        54FF2D9C54FF2D9C54FF2D9C54FF2D9C53FF2D9C53FF1A572F8B000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000175532802DA760FF2DA8
        61FF2DA862FF2DA861FF2DA861FF2DA861FF2DA861FF2DA861FF2DA861FF2DA8
        61FF2DA861FF2DA861FF2DA861FF2DA861FF2DA861FF2BA862FF1F7D4ABA0304
        0308000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000001554347A2CAF6AFF2CAF6BFF2CAF
        6BFF2CAF6BFF2CAF6BFF2CAF6BFF2CAF6BFF2CAF6BFF2CAF6BFF2CAF6BFF2CAF
        6BFF2CAF6BFF2CAF6BFF2CAF6BFF2CAF6BFF2AB16DFF23B674FF737E2CFF7C42
        01BB010000010000000000000000000000000000000000000000000000000000
        00000000000000000000000000000C3220452AB573FF2AB673FF2AB673FF2AB6
        73FF2AB673FF2AB673FF2AB673FF2AB673FF2AB673FF2AB673FF2AB673FF2AB6
        73FF2AB673FF2AB673FF2BB673FF28B775FF21BD7CFF75822FFFB15900FFA660
        00FF5C37048E0000000000000000000000000000000000000000000000000000
        000000000000000000000206040823A56DE028BD7BFF28BD7CFF28BD7CFF28BD
        7CFF28BD7CFF28BD7CFF28BD7CFF28BD7CFF28BD7CFF28BD7CFF28BD7CFF28BD
        7CFF28BD7CFF29BD7BFF26BE7EFF1EC485FF768733FFB65B00FFAA6300FFAA64
        00FFA96301FF2316033500000000000000000000000000000000000000000000
        000000000000000000001151376C25C082FF25C082FF25C082FF25C082FF25C0
        82FF25C082FF25C082FF25C082FF25C082FF25C082FF25C082FF25C082FF25C0
        82FF25C082FF22C284FF1AC78CFF778B36FFBA5E00FFAD6600FFAD6700FFAD67
        00FFAD6600FF7E4B03B900000000000000000000000000000000000000000000
        000000000000000000001CA170D421C287FF21C287FF21C287FF21C287FF21C2
        87FF21C287FF21C287FF21C287FF21C287FF21C287FF21C287FF21C287FF22C2
        87FF1FC489FF16C991FF778D38FFBE6100FFB06A00FFB06A00FFB06A00FFB06A
        00FFB06A00FFB06A01FF1A110326000000000000000000000000000000000000
        0000000000000620182A1EC48BFF1EC48BFF1EC48BFF1EC48BFF1EC48BFF1EC4
        8BFF1EC48BFF1EC48BFF1EC48BFF1EC48BFF1EC48BFF1EC48BFF1EC48BFF1BC6
        8EFF12CB96FF77903AFFC26400FFB46C00FFB36D00FFB46D00FFB46D00FFB46D
        00FFB46D00FFB46D00FF51320373000000000000000000000000000000000000
        0000000000000B4D386319C690FF1AC690FF1AC690FF1AC690FF1AC690FF1AC6
        90FF1AC690FF1AC690FF1AC690FF1AC690FF1AC690FF1AC690FF17C893FF0ECD
        9BFF79923CFFC56700FFB77000FFB77000FFB77000FFB77000FFB77000FFB770
        00FFB77000FFB77000FF7C4C02AE000000000000000000000000000000000000
        0000000000000C694C8416CB92FF16CB92FF16CB92FF16CB92FF16CB92FF16CB
        92FF16CB92FF16CB92FF16CB92FF16CB92FF16CB92FF14CC94FF0ACF9EFF7995
        3EFFCA6A00FFBB7300FFBA7300FFBA7300FFBA7300FFBA7300FFBA7300FFBA73
        00FFBA7300FFBA7300FF965C03CD000000000000000000000000000000000000
        0000000000000D79699E11C4A7FF11C4A7FF11C4A7FF11C4A7FF11C4A7FF11C4
        A7FF11C4A7FF11C4A7FF11C4A7FF11C4A7FF11C4A7FF09C8AFFF7D973CFFD16D
        00FFBD7600FFBD7600FFBD7600FFBD7600FFBD7600FFBD7600FFBD7600FFBD76
        00FFBD7600FFBD7600FFA36600DC000000000000000000000000000000000000
        000000000000095E8D960D9FF1FF0B9EF1FF0B9EF1FF0B9EF1FF0B9EF1FF0B9E
        F1FF0B9EF1FF0B9EF1FF0B9EF1FF0B9EF1FF0B9EF1FF04A0FAFF528E99FFCB77
        00FFC57800FFC07900FFC07900FFC07900FFC07900FFC07900FFC07900FFC079
        00FFC17900FFC27A01FFA56802DA000000000000000000000000000000000000
        000000000000054E747B11A5F2FF0BA1F1FF0BA2F1FF0BA2F1FF0BA2F1FF0BA2
        F1FF0BA2F1FF0BA2F1FF0BA2F1FF0BA2F1FF0BA1F1FF0BA1F1FF00A5FFFF4995
        A1FFCF7A00FFC97B00FFC37C00FFC47C00FFC47C00FFC47C00FFC47C00FFC47C
        00FFC37B00FFC78106FF986105C5000000000000000000000000000000000000
        00000000000003354E5314AAF2FF0DA6F1FF09A4F1FF0AA5F1FF0AA5F1FF0AA5
        F1FF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF00A8
        FFFF4A98A1FFD27D00FFCC7E00FFC77F00FFC77F00FFC77F00FFC77F00FFC77F
        00FFC77E00FFCC870BFF7D5003A0000000000000000000000000000000000000
        0000000000000010181913A9EDF914ADF3FF06A6F1FF09A8F1FF09A8F1FF09A8
        F1FF09A8F1FF09A8F1FF09A8F1FF09A8F1FF09A8F1FF09A8F1FF09A8F1FF09A8
        F1FF00ABFFFF4A9BA2FFD68000FFCF8100FFCA8200FFCA8200FFCA8200FFCA81
        00FFCC8504FFD18C0FFF492E025D000000000000000000000000000000000000
        00000000000000000000097DB1BA1EB5F4FF05A9F2FF08ABF2FF08AAF2FF08AA
        F2FF08AAF2FF08AAF2FF08AAF2FF08AAF2FF08AAF2FF08AAF2FF08AAF2FF08AA
        F2FF08AAF2FF00AEFFFF4B9EA2FFDA8300FFD38400FFCD8500FFCE8500FFCC82
        00FFD49011FFCA870CF50E090112000000000000000000000000000000000000
        00000000000000000000002E42461BB6F4FF16B4F4FF03ACF3FF07ADF3FF07AD
        F3FF07ADF3FF07ADF3FF07ADF3FF07ADF3FF07ADF3FF07ADF3FF07ADF3FF07AD
        F3FF07ADF3FF07ADF3FF00B1FFFF4BA1A2FFDD8600FFD68700FFD08700FFD28A
        04FFDA9719FF784E029400000000000000000000000000000000000000000000
        00000000000000000000000000000780B0B929BEF6FF08B1F3FF04B0F3FF06B0
        F3FF06B0F3FF06B0F3FF06B0F3FF06B0F3FF06B0F3FF06B0F3FF06B0F3FF06B0
        F3FF06B0F3FF06B0F3FF06B0F3FF00B4FFFF4DA4A3FFE18800FFD88700FFDD9D
        1EFFCB890CF1120B011600000000000000000000000000000000000000000000
        000000000000000000000000000000141C1D11ADE8F12FC1F6FF04B2F4FF03B2
        F4FF06B3F4FF05B3F4FF05B3F4FF05B3F4FF05B3F4FF05B3F4FF05B3F4FF05B3
        F4FF05B3F4FF05B3F4FF05B3F4FF05B3F4FF00B7FFFF48A49FFFEC9B11FFE29A
        14FF4A2F00590000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000002B3C3F17B8F1FA33C5F7FF09B7
        F5FF00B4F5FF04B6F5FF04B6F5FF04B6F5FF04B6F5FF04B6F5FF04B6F5FF04B6
        F5FF04B6F5FF04B6F5FF04B6F5FF00B5F4FF00B5F5FF17C5FFFF66B4A9FF6F46
        027F000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000002E3E4113B0E5ED36C7
        F7FF20C0F6FF01B8F5FF00B7F5FF01B8F5FF02B9F5FF03B9F5FF03B9F5FF03B9
        F5FF01B9F5FF00B8F5FF00B7F5FF15BDF6FF36C6F7FF21C1F7FF005879790000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000001720210685
        AEB42BC6F8FF37C8F8FF28C4F7FF14BFF7FF08BDF6FF02BCF6FF01BCF6FF05BC
        F6FF0FBEF6FF21C2F7FF34C7F8FF32C8F8FF10A3D2D900334548000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000003546490A88AFB526C1F1F832C9F8FF36C9F8FF34C9F8FF34C9F8FF35C9
        F8FF34C9F8FF2BC7F8FF119DC8CE0050696D0006080800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000141B1C003C4E51025B74780677969B067A9BA00563
        7E8200485D60001F292A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object CommonProfitGraphBtn: TdxBarLargeButton
      Caption = #1054#1073#1097#1072#1103' '#1074#1099#1088#1091#1095#1082#1072
      Category = 0
      Hint = #1054#1073#1097#1072#1103' '#1074#1099#1088#1091#1095#1082#1072
      Visible = ivAlways
      OnClick = CommonProfitGraphBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000100000001000000020000
        0003000000040000000500000005000000060000000600000006000000070000
        0007000000030000000000000000000000000000000400000003000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000002000000100000001E000000260000002300000020000000230000
        002500000027000000290000002A0000002B0000002C0000002C0000002D0000
        0029000000370A170B560A180B57070F08490000002B000000320000012F0000
        012B000000270000002000000014000000050000000000000000000000000000
        000000000002000000110000001E00000018171717463A3A3A713D3D3E763D3D
        3E773D3D3E783D3D3E783E3E3F793E3E3F7A3E3E3F7A3E3E3F7A3E3E3F7A403E
        40712B6335C62B8639FF2D863BFF2D833BFB142517670000001F0000012F0000
        012C000000270000002100000015000000050000000000000000000000000000
        000000000000000000000000000038383946BEBEBFF1CDCDCEFFCFCFD0FFD1D1
        D2FFD2D2D3FFD4D4D5FFD5D5D6FFD6D6D6FFD6D6D7FFD6D6D7FFD7D6D8FFDBD7
        DBFF50A065FF248F41FF2D9248FF238F40FF8FB098F44741464D000000000000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000A6A6A7D2CBCBCCFFCBCBCCFFCCCCCEFFCECE
        D0FFD0D0D1FFD1D1D2FFD2D2D3FFD3D3D4FFD3D3D4FFD4D4D5FFD4D3D5FFDAD5
        D9FF4FA86FFF259A4FFF2D9D55FF21994CFF9DC0AAFFB9B1B7D5000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005050506BABABBE6D2D2D3FFEFEFEFFFF3F3F3FFF2F2
        F3FFF3F3F3FFF3F3F3FFF2F3F3FFF6F4F5FFFFF7FDFFFFF7FDFFFFF7FDFFFFF8
        FFFF58B982FF23A45BFF2DA862FF20A559FFA9C9B6FFD4C0CCDF000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005050506BBBBBCE3D5D5D6FFE4E4E4FFE7E7E8FFE9E9
        E9FFEAEAEBFFEBEBEBFFEFECEEFFE1E8E5FF94D4B3FF8CD2AEFF8FD3B0FF90D3
        B1FF40B779FF27AE68FF2CB06BFF26AE67FF65BE90FF78B797EE1A5537791854
        35770D2C1C3F0000000000000000000000000000000000000000000000000000
        0000000000000000000005050506BFBFC0E3D9D9DAFFDADADBFFDCDCDDFFDDDD
        DEFFDEDEDFFFDFDFDFFFEBE1E7FF8BCBADFF0AAC5EFF19AF67FF19AF67FF19AF
        67FF27B470FF2BB673FF2AB673FF2BB673FF21B36CFF1DB26AFF2AB571FF2AB5
        72FF28A76AEB0104030600000000000000000000000000000000000000000000
        0000000000000000000005050506C3C3C4E3DFDFE0FFF7F7F7FFF9F9FAFFF9F9
        F9FFF9F9F9FFF9F9F9FFFCFAFBFF91DBBBFF16B771FF28BC7BFF28BC7BFF28BC
        7BFF28BC7BFF28BC7BFF28BC7BFF28BC7BFF28BC7BFF28BC7BFF28BC7BFF28BC
        7BFF25AD71EA0106040800000000000000000000000000000000000000000000
        0000000000000000000005050506C7C7C7E3E0E0E1FFDFDFE0FFE0E0E1FFE1E1
        E2FFE1E2E3FFE2E3E3FFF3E7EDFF86D2B3FF06B970FF18BC7AFF18BC79FF18BC
        79FF22BF80FF26C082FF26C081FF26C082FF1DBF7DFF1ABE7CFF26C082FF27C1
        82FF24B67BF20105030600000000000000000000000000000000000000000000
        0000000000000000000005050506C8C8C9E3E2E2E3FFEAEAEAFFECECECFFECEC
        EDFFECECEDFFECECEDFFF1EDEFFFD7E9E3FF82DDB9FF7FDCB7FF81DCB8FF83DD
        B9FF43CA95FF1DC083FF20C285FF23C285FF65CEA5FF71C6A4F22679589A2375
        55961447335B0000000000000000000000000000000000000000000000000000
        0000000000000000000005050506C9C9CAE3E4E4E5FFF4F4F4FFF6F7F7FFF7F7
        F7FFF7F7F7FFF7F8F8FFF7F8F8FFFDF9FBFFFFFBFFFFFFFAFEFFFFFAFFFFFFFB
        FFFF5DD2A7FF13C185FF1CC489FF18C386FFB8DFD1FFDCCAD3DC000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005050506CBCBCCE3E4E5E5FFDFE0E0FFE0E1E1FFE1E2
        E2FFE2E3E3FFE3E4E4FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5E5FFE5E5E5FFECE6
        E9FF54CFA5FF11C48AFF19C68EFF15C58BFFB0DFCEFFD4CBCFDE030303030000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005050506CCCCCDE3E6E7E7FFF4F4F4FFF7F6F7FFF7F6
        F6FFF6F7F6FFF7F6F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF7F6F6FFF8F7
        F7FF51D3AAFF0BC58EFF14C893FF0EC78EFFADE0CFFFD8CED1DF040404040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005050506CDCDCEE3E8E8E8FFEEEEEEFFEFF0F0FFF0F0
        F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F0FFF0F0F1FFF0F0F1FFF0F0F1FFF9F2
        F4FF64D6B3FF04C78FFF08C892FF15C994FFBFE4D8FFD6CED1DF040404040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005050606CECFCFE3E8E9E9FFE6E7E7FFE7E8E8FFE7E8
        E8FFE7E8E8FFE7E8E8FFE7E8E8FFE7E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFEBE8
        EAFFD7E6E2FFABDFCFFFA9DECFFFBAE1D5FFEBEBECFFCECECEDF040404040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005050506CECFCFE3EAEBEBFFF8F9F9FFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFFAFAFAFFF9FA
        FAFFFFFBFCFFFFFCFFFFFFFCFFFFFFFBFEFFEDEEEEFFCDCECEDF040404040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005050606CFCFD0E3EAEBEBFFE6E7E7FFE5E6E6FFE5E6
        E6FFE6E6E7FFE6E6E8FFE6E7E8FFE6E8E8FFE6E8E8FFE7E8E8FFE6E8E8FFE6E8
        E8FFE6E7E8FFE6E6E8FFE6E6E7FFE5E7E7FFEAEBEBFFCECECEDF040404040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005060506D0D0D1E3EAEBEBFFEFF0F0FFF0F0F0FFF0F1
        F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFF1F1
        F1FFF1F1F1FFF1F1F1FFF1F1F1FFF0F0F0FFEBECECFFCECECEDF040404040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000006060606D0D1D1E3EBECECFFF5F6F6FFF6F7F7FFF7F7
        F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F8FFF7F7F8FFF7F7F8FFF7F7F7FFF6F6
        F7FFF6F6F6FFF7F8F7FFF7F7F8FFF7F7F8FFEEEFEFFFCECFCFDF040404040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000006060606D0D1D1E3EBEBECFFE5E5E5FFE4E5E5FFE5E5
        E6FFE5E5E6FFE5E6E6FFE6E6E6FFE6E6E7FFE6E6E7FFE6E6E7FFEBEBECFFECEC
        EDFFEFF0F0FFECEDEDFFE7E7E8FFE7E7E8FFE6E8E8FFD3D4D4EA040404040000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000006060606D0D1D1E3EBECECFFF7F7F7FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF8F8F8FFEEEEEFFFF0F0
        F1FFD1D2D3FFA0A1A2FF9E9E9FFFA4A5A6FFA9AAABFF69696991000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000006060606D0D1D1E3EBECECFFEAEBEBFFEAEBEBFFEBEB
        ECFFEBEBECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFF1F1F2FFDFDF
        E0FF8D8F90FF898A8BFF949596FF9B9C9DFF6060619700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005060606D0D1D1E3EAEBEBFFEDEDEDFFEDEEEEFFEEEE
        EEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEEFFEEEEEFFFEDEDEEFFF2F2F3FFC9CA
        CBFF878788FF959596FF9C9C9DFF616162970000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000005060506D1D2D3E6EBECECFFF6F7F7FFF8F8F8FFF8F8
        F8FFF9F8F9FFF8F8F9FFF8F9F9FFF8F9F9FFF8F9F9FFF8F8F8FFF3F4F4FFC9CA
        CBFF8C8C8DFF99999AFF60606198000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000001010101C4C4C4D7E9EAEAFFE9EBEBFFE9EAEAFFE9EA
        EAFFEAEAEBFFEAEAEBFFEAEAECFFEAEBEBFFEAEBEBFFEAEBEBFFF1F2F2FFCACB
        CCFF919293FF5F5F5F9900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000004D4E4E55E6E6E7FCEBECECFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFECECEDFFF1F1F2FFCCCC
        CDFF5959599A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000252626295A5A5A625C5D5D645B5C
        5C635B5C5C635B5C5C635B5C5C635B5C5C635C5C5C635C5C5C635F5F60664C4C
        4C58000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object ExpensesGraphBtn: TdxBarLargeButton
      Caption = #1056#1072#1089#1093#1086#1076#1099
      Category = 0
      Hint = #1056#1072#1089#1093#1086#1076#1099
      Visible = ivAlways
      OnClick = ExpensesGraphBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000040000000500000005000000060000000600000000000000000000
        0005000000060000000500000005000000040000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000F0000001E0000002600000028000000200000
        0021000000230000002500000027000000260000002D1027126E102A13710000
        002F000000260000002700000025000000240000002100000021000000280000
        0028000000200000001300000003000000000000000000000000000000000000
        000000000000000000000000000F0000001E000000200505052F3F3F40785757
        589357575893575758945D5A5D955855578B21592CBB2C893DFF2C893DFF215C
        2DC15554548B5F5C5F955858599458585994585859934242437B080808340000
        0020000000210000001300000003000000000000000000000000000000000000
        0000000000000000000000000000000000000A0A0A0A9E9E9FC9CCCCCDFFCFCF
        D0FFD1D1D2FFD7D4D7FFDCD7DBFF6BAE7FFF279345FF2D944BFF2D944BFF2693
        45FF63AB79FFDBD8DAFFDBD7DAFFD3D4D5FFD3D3D4FFD0D0D1FFA8A8A9D10E0E
        0E0F000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004C4C4C5FCCCCCCFFCECECFFFD0D0
        D1FFD7D4D7FFDDD7DBFF61B07FFF1D994BFF2D9F58FF2D9F58FF2D9F58FF2EA0
        58FF1D9A4BFF59AE79FFDCD8DBFFDCD7DBFFD3D4D4FFD2D2D3FFD0D0D1FF5757
        576B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000062626279D0D0D1FFD3D3D4FFD7D6
        D7FFDBD8DBFF62B888FF1DA558FF2DAA64FF2DAA64FF2DAA64FF2DAA64FF2DAA
        64FF2EAA64FF1DA558FF59B683FFDBDADCFFDCDADCFFD7D7D8FFD5D5D6FF6868
        687E000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000062626276D4D4D5FFD7D7D8FFE8DD
        E4FF76C39CFF07A755FF20AE65FF2BB06CFF2CB06CFF2CB06CFF2CB06CFF2CB0
        6CFF2CB06CFF21AE65FF08A755FF6CC197FFEDE2E8FFDCDCDDFFD9D9DAFF6868
        687B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000063636476D8D8D9FFDCDCDDFFE6E0
        E4FFAED5C3FF68C599FF66C497FF2DB775FF29B673FF2AB674FF2AB674FF29B6
        73FF2BB774FF64C496FF67C498FFA3D2BCFFE9E3E7FFE0E0E1FFDEDEDFFF6A6A
        6B7B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000065656676DDDDDEFFE0E0E1FFE0E1
        E1FFEAE4E8FFF7E8F0FFE1E4E4FF31BF80FF25BB7AFF28BD7CFF28BD7CFF25BB
        7BFF2CBE7EFFDCE3E1FFF9E9F2FFEDE6EAFFE1E2E3FFE2E2E3FFE1E1E2FF6C6C
        6D7B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000068686876E0E0E1FFE1E2E2FFE2E3
        E3FFE3E4E4FFE9E6E8FFD6E3DEFF2DC286FF21BF80FF25C082FF25C082FF22BF
        81FF28C183FFD0E2DBFFECE7EAFFE5E5E6FFE4E5E5FFE3E4E4FFE2E2E3FF6D6D
        6D7B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000069696976E1E2E2FFE3E3E4FFE4E4
        E5FFE5E6E6FFEBE8E9FFD7E5E0FF2AC48AFF1EC184FF22C286FF22C286FF1FC1
        85FF25C387FFD2E4DEFFEDE9EBFFE7E7E8FFE6E6E7FFE5E5E6FFE4E4E5FF6D6D
        6E7B000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000069696A76E3E3E4FFE4E5E5FFE5E6
        E6FFE7E7E8FFEDE9EBFFD9E6E2FF26C68EFF1AC388FF1EC48AFF1EC48AFF1BC3
        89FF21C58BFFD3E6E0FFEFEBEDFFE8E9E9FFE7E8E8FFE6E7E7FFE5E6E6FF6E6E
        6E7B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006A6A6A76E4E5E5FFE6E6E7FFE7E8
        E8FFE8E9E9FFEFECEDFFDAE8E4FF23C893FF17C58DFF1BC68FFF1BC68FFF18C5
        8EFF1EC790FFD4E8E2FFF2EDEFFFEAEBEBFFE9EAEAFFE8E9E9FFE7E7E8FF6F6F
        6F7B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006A6A6A76E5E6E6FFE7E8E8FFE8E9
        E9FFEAEBEBFFF0EDEEFFD9E9E5FF1EC996FF0EC690FF12C792FF12C792FF0EC7
        91FF18C994FFD2E8E2FFF2EDEFFFEBECECFFEBECECFFEAEBEBFFE8E9E9FF6F70
        707B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006A6B6B76E7E7E8FFE9E9EAFFEAEB
        EBFFEBECECFFEFEDEEFFDEEAE7FF33CE9FFF21CA96FF25CB98FF25CB98FF22CB
        96FF2DCD9DFFD8E9E5FFF1EDEEFFEBECECFFEBECECFFEBECECFFEAEAEBFF7070
        707B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006B6B6B76E8E8E9FFEAEBEBFFEBEC
        ECFFEBECECFFEBECECFFEFEDEEFFC1E6DCFFAEE2D3FFB1E3D4FFB1E3D4FFAEE2
        D3FFBFE5DCFFEFEDEEFFEBECECFFEBECECFFEBECECFFEBECECFFEBECECFF7171
        717B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006B6C6C76E8E9E9FFEBECECFFEBEC
        ECFFEBECECFFEBECECFFEBECECFFF6EDF1FFFAEEF3FFF9EFF2FFF9EFF2FFFAEF
        F3FFF7EEF1FFECECEDFFECECEDFFEBECECFFEBECECFFEBECECFFEBECECFF7172
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006B6C6C76E9EAEAFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFECECEDFFECECEDFFECEDEDFFECEDEDFFECEDEDFFECED
        EDFFECEDEDFFECEDEDFFECECEDFFECECEDFFEBECECFFEBECECFFEBECECFF7172
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6C6C76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDED
        EEFFEDEDEEFFECEDEDFFECEDEDFFECECEDFFECECEDFFEBECECFFEBECECFF7172
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6C6D76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
        EEFFEDEDEEFFEDEDEEFFEDEEEEFFEFF0F0FFEFEFF0FFEEEFEFFFEEEFEFFF7273
        737B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6D6D76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
        EEFFEDEDEEFFF0F0F1FFECEDEDFFDFE0E0FFDDDDDFFFDDDEDEFFDDDEDEFF7070
        707E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6D6D76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
        EEFFF0F0F1FFE3E3E4FFA4A5A6FF919192FF989899FF9E9FA0FF8E8F8FDB1717
        1720000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6C6D76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEEEE
        EFFFF1F1F2FFAEAFB0FF828384FF939495FF9A9A9BFF89898AD91111111A0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C6C6C76EAEBEBFFEBECECFFEBEC
        ECFFEBECECFFECECEDFFECECEDFFECEDEDFFECEDEDFFEDEDEEFFEDEDEEFFEEEE
        EFFFEDEDEEFF9E9FA0FF8D8D8EFF99999AFF888888D811111119000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006F6F6F79E9EAEAFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFECECEDFFECECEDFFECEDEDFFECEDEDFFECEDEDFFEDEE
        EEFFECECEDFFA3A3A4FF929293FF858586D81010101800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000004545464CE8E9E9FFEBEBECFFEBEC
        ECFFEBECECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFECEDEDFFEDEE
        EEFFEBECEDFFA4A5A6FF7D7D7ED60F0F0F170000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000101010188888895E4E5E5F8EBEC
        ECFFEBECECFFEBECECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFEDED
        EEFFEAEAEAFF909192D20C0C0C16000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000001A1A1A1C2829
        292C2727272A2727272A2727272A2727272A2727272A2727272A2727272A2727
        272A2929292D0A0A0A0A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton23: TdxBarButton
      Action = RefreshDataAction
      Category = 0
    end
    object dxBarButton24: TdxBarButton
      Action = RefreshDataAction
      Category = 0
    end
    object dxBarButton25: TdxBarButton
      Action = RefreshDataAction
      Category = 0
    end
    object dxBarButton26: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton26Click
    end
    object PlanBeginDateEdit: TcxBarEditItem
      Caption = '   '#1089
      Category = 0
      Hint = '   '#1089
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.OnEditValueChanged = PlanEndDateEditPropertiesEditValueChanged
    end
    object cxBarEditItem20: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxExtLookupComboBoxProperties'
    end
    object dxBarLargeButton8: TdxBarLargeButton
      Caption = #1055#1086' '#1084#1077#1085#1077#1076#1078#1077#1088#1072#1084
      Category = 0
      Hint = #1055#1086' '#1084#1077#1085#1077#1076#1078#1077#1088#1072#1084
      Visible = ivAlways
      OnClick = dxBarLargeButton8Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00040000000E000000150000001B0000001D0000001500000012000001180000
        0220000002270101012900000229000002250000011F0000011D000000210000
        002B0000012C0000012B0000002A000000290000002800000026000000240000
        00210000001E0000001A000000150000000E0000000400000000000000000000
        00080000001B00000028000000260000012A27170369553103A6744202CC7F49
        03D9894F03E58B5102E8894F03E57F4A03DA744302CE583303AC2B1903750000
        023A00000039000001430000014200000141000001400000013D0000013B0000
        0138000001340000012F000000280000001B0000000800000000000000000000
        000000000001000000010F090318794503BEA65F01FFA76000FFA66000FFA660
        00FFA55F00FFA55F00FFA55F00FFA66000FFA66000FFA76000FFA66001FF7C48
        03C7140C03290000000A0000000F0000000E0000000D0000000C0000000A0000
        0009000000070000000500000003000000010000000000000000000000000000
        00000000000003020104864E03CBA76100FFA76200FFA76100FFA76100FFA761
        00FFA76100FFA76100FFA76100FFA76100FFA76100FFA76100FFA76100FFA862
        00FF8C5203D50503010500000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000036200350A96300FFA96400FFA96400FFA96400FFA96400FFA964
        00FFA96400FFA96400FFA96400FFA96400FFA96400FFA96400FFA96400FFA964
        00FFA96300FF3D24035B00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005E38038AAC6600FFAC6600FFAC6600FFAC6600FFAC6600FFAC66
        00FFAC6600FFAC6600FFAC6600FFAC6600FFAC6600FFAC6600FFAC6600FFAC66
        00FFAC6600FF6B40039D00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000006C42049DAF6900FFAF6900FFAF6900FFAF6900FFAF6900FFAF69
        00FFAF6900FFAF6900FFAF6900FFAF6900FFAF6900FFAF6900FFAF6900FFAF69
        00FFAE6900FF754500A800000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000005C380384B26B00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B
        00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B00FFB26B
        00FFB36B00FF6D4805A606190D30112A1351132F155A0F26114909170A2E050B
        0515000000000000000000000000000000000000000000000000000000000000
        0000000000003B240353B46D00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D
        00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D00FFB46D
        00FFC16B00FF6A7A20FE21883FFF2D863AFF2E863AFF2D863AFF2D863AFF2B7F
        37F121602BB60B1E0E3800000000000000000000000000000000000000000000
        0000000000000B07020FAD6A02F1B77000FFB77000FFB77000FFB77000FFB770
        00FFB77000FFB77000FFB77000FFB77000FFB77000FFB77000FFB77000FFB870
        00FFBA6F00FF408A3BFF288F47FF2D8E44FF2D8E44FF2D8E44FF2D8E44FF2D8E
        44FF2D8D43FF2B8B42FC0A1E0F36000000000000000000000000000000000000
        000000000000000000005D3A0480BA7200FFB97200FFB97200FFB97200FFB972
        00FFB97200FFB97200FFB97200FFB97200FFB97200FFB97200FFB97300FFC86E
        00FF86801DFF229954FF2D964EFF2D974EFF2D974EFF2D974EFF2D974EFF2D97
        4EFF2D974EFF2D964DFF206936B1000000000000000000000000000000000000
        0000000000000000000003020104955C02CABC7500FFBC7500FFBC7500FFBC75
        00FFBC7500FFBC7500FFBC7500FFBC7500FFBC7500FFBC7500FFC77100FFAF79
        0AFF329D54FF29A05AFF2D9F57FF2D9F57FF2D9F57FF2D9F57FF2D9F57FF2D9F
        57FF2D9F57FF2D9F58FF28894CDB000000000000000000000000000000000000
        00000000000000000000000000000E090113945C02C6BF7700FFBF7700FFBF77
        00FFBF7700FFBF7700FFBF7700FFBF7700FFBF7700FFC37600FFAF7D0FFF3EA2
        56FF25AA66FF2EA761FF2DA761FF2DA761FF2DA761FF2DA761FF2DA761FF2DA7
        61FF2DA761FF2DA761FF278F53D9000000000000000000000000000000000000
        000000000000000000000000000000000000030201035E3B027CAA6B03DFC179
        00FFC17900FFC17900FFC17900FFC17900FFAD6B02E16C48079230A35FF124B0
        6EFF2EAE68FF2DAE68FF2DAE68FF2DAE68FF2DAE68FF2DAE68FF2DAE68FF2DAE
        68FF2DAE68FF2DAE68FF207C4BB5000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000805308A5C47C
        00FFC47C00FFC47C00FFC47C00FFC47C00FF885605AF0000000017764CA62CB1
        6DFF2BB26EFF2BB26EFF2BB26EFF2BB26EFF2BB26EFF2BB26EFF2BB26EFF2BB2
        6EFF2CB26EFF2BB26EFF12442B61000000000000000000000000000000000000
        000000000000000000000000000000000000000000006D46048CC67E00FFC77E
        00FFC77E00FFC77E00FFC77E00FFC77E00FFC67E00FF7444018E0015131729B5
        73FD2AB674FF2AB674FF2AB674FF2AB674FF2AB674FF2AB674FF2AB674FF2AB6
        74FF2AB674FF239961D601040305000000000000000000000000000000000000
        00000000000000000000000000000000000020150328C98001FFC98100FFC981
        00FFC98100FFC98100FFC98100FFC98100FFC98100FFC98101FF210D00210940
        2C5428BB7AFF29BB7AFF29BB7AFF29BB7AFF29BB7AFF29BB7AFF29BB7AFF28BB
        7AFF24AA6FE8071D132700000000000000000000000000000000000000000000
        000000000000000000000000000000000000623F027ACC8300FFCC8300FFCC83
        00FFCC8300FFCC8300FFCC8300FFCC8300FFCC8300FFCC8300FF694403830000
        00000C3624481F9563C727BD7EFC27BF7FFF27BF7FFF27BF7FFF26B77AF41B80
        55AB0517101F0000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000784F0592CF8600FFCF8600FFCF85
        00FFCF8500FFCF8500FFCF8500FFCF8500FFCF8600FFCF8600FF8257079E0000
        0000000000000B2D203B24BB7FF725C082FF25C082FF24C082FF22A873DE0205
        0406000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000006C4A0A7FD38C06FFD08700FFD188
        00FFD18800FFD18800FFD18800FFD18800FFD18700FFD38B05FF734F0B880000
        00000518111F1FB77DF021C286FF22C286FF22C286FF22C286FF21C285FF1A92
        65C0010201020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000002A1C0531DB9717FFD38900FFD48A
        00FFD48A00FFD48A00FFD48A00FFD48A00FFD38900FFDB9716FF3423063D0000
        0000116A4B8A1FC389FF1FC389FF1FC389FF1FC389FF1FC389FF1FC389FF1FC3
        89FF093123400000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000008C6111A1DE9C1AFFD68D
        02FFD58A00FFD58B00FFD58A00FFD68D02FFDE9C19FF946713AB000000000000
        00001C986EC31CC58DFF1DC58DFF1DC58DFF1DC58DFF1DC58DFF1DC58DFF1DC5
        8DFF1262477E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000002000003906411A5E2A1
        23FFE09D1BFFDE9A15FFE09D1BFFE2A122FF966913AC05020007000000000000
        0000228A67AE1BC790FF1AC690FF1AC690FF1AC690FF1AC690FF18C690FF21C8
        92FF16523E670000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000003926
        04427F5B138FA47518B7815C14913E2904470000000000000000000000000000
        00001445355630CB99FF11C792FF14C893FF16C893FF13C893FF17C893FF34C9
        99FB0615101A0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000278667A538CE9EFF21CB99FF1BCA98FF26CC9AFF3DCE9FFF1651
        3E64000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000018554268379F7DC23DB38DDB308F70AE0C3529420000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton9: TdxBarLargeButton
      Caption = #1054#1073#1097#1080#1081
      Category = 0
      Hint = #1054#1073#1097#1080#1081
      Visible = ivAlways
      OnClick = dxBarLargeButton9Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000020000000300000000000000000000000000000002000000030000
        00080000000E0000000E0000000F0000000B0000000800000008000000080000
        00080000000C0000000F0000000E0000000D0000000600000003000000020000
        0000000000000000000100000004000000010000000000000000000000000000
        00080000001B0000001B0308103A0515285305142655051426570515285A0309
        11490000003500000141000001360E0903501B1102601A10025F1A10025F1B10
        025F08050249000001370000014100000034060D075009160A5B08150A570815
        095508150A51020402320000001E0000001B0000000800000000000000000000
        0004000000080725465F1570D5F0177AE6FF177AE6FF177AE6FF177AE7FF1571
        D6F20826466E000000173E24047F995802F6A25D01FFA15D01FFA15D01FFA25D
        01FF925403ED2817036100000016153D1A912B7F36FA2D8338FF2D8338FF2D83
        38FF2D8338FF267230E408160A3C0000000B0000000400000000000000000000
        0000000000001267BCCC1580E9FF157FE9FF157FE9FF157FE9FF157FE9FF1580
        EAFF1069C1CF00000000935301E0A55F00FFA55F00FFA55F00FFA55F00FFA45F
        00FFA56000FF733F01AC000202022C873FF62D8B40FF2D8B40FF2D8B40FF2D8B
        40FF2D8B40FF2D8B40FF1C55279A000000000000000000000000000000000000
        0000000000001371C5D81484E9FF1484E9FF1484E9FF1484E9FF1484E9FF1484
        E9FF0F70C9D802010002945500E1A76100FFA76100FFA76100FFA76100FFA761
        00FFA76100FF764000AE000F0B142E9249FF2D9148FF2D9148FF2D9148FF2D91
        48FF2D9148FF2D9148FF1D5F2EA7000000000000000000000000000000000000
        0000000000001172C3D51388EAFF1388EAFF1388EAFF1388EAFF1388EAFF1388
        EAFF0D72C8D602010002955600E0A96300FFA96300FFA96300FFA96300FFA963
        00FFA96300FF774100AD000F0B132E984FFD2D984FFF2D984FFF2D984FFF2D98
        4FFF2D984FFF2D984FFF1D6132A3000000000000000000000000000000000000
        0000000000001077C4D5118DEBFF118DEBFF118DEBFF118DEBFF118DEBFF118D
        EBFF0C77C9D602010002975800E0AB6500FFAB6500FFAB6500FFAB6500FFAB65
        00FFAB6500FF784300AD00100C132E9F58FD2D9F58FF2D9F58FF2D9F58FF2D9F
        58FF2D9F58FF2D9F58FF1D6639A4000000000000000000000000000000000000
        0000000000000F7AC5D51091ECFF1091ECFF1091ECFF1091ECFF1091ECFF1091
        ECFF0B7BC9D6020100029A5A00E0AE6800FFAE6800FFAE6800FFAE6800FFAE68
        00FFAE6800FF7A4500AD00100D132EA65FFD2DA65FFF2DA65FFF2DA65FFF2DA6
        5FFF2DA65FFF2DA65FFF1D6B3DA4000000000000000000000000000000000000
        0000000000000D7DC6D50E95EDFF0E95EDFF0E95EDFF0E95EDFF0E95EDFF0E95
        EDFF097ECAD6020100029B5C00E0B06A00FFB06A00FFB06A00FFB06A00FFB06A
        00FFB06A00FF7B4500AD00110E132EAC66FD2DAC66FF2DAC66FF2DAC66FF2DAC
        66FF2DAC66FF2DAC66FF1D6F42A4000000000000000000000000000000000000
        0000000000000D81C7D50D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9A
        EEFF0882CBD6020100029D5E00E0B26C00FFB26C00FFB26C00FFB26C00FFB26C
        00FFB26C00FF7E4700AD00110F132DAF6BFD2CAF6BFF2CAF6BFF2CAF6BFF2CAF
        6BFF2CAF6BFF2CAF6BFF1C7145A4000000000000000000000000000000000000
        0000000000000C86C8D50C9FEFFF0C9FEFFF0C9FEFFF0C9FEFFF0C9FEFFF0C9F
        EFFF0886CCD602010002A06000E0B56E00FFB56E00FFB56E00FFB56E00FFB56E
        00FFB56E00FF804800AD00120F132CB36FFD2BB36FFF2BB36FFF2BB36FFF2BB3
        6FFF2BB36FFF2BB36FFF1C7347A4000000000000000000000000000000000000
        0000000000000A89C8D50AA3F0FF0AA3F0FF0AA3F0FF0AA3F0FF0AA3F0FF0AA3
        F0FF068ACDD602010002A36200E0B77000FFB77000FFB77000FFB77000FFB770
        00FFB77000FF814900AD001210132BB774FD2AB774FF2AB774FF2AB774FF2AB7
        74FF2AB774FF2AB774FF1B764BA4000000000000000000000000000000000000
        000000000000098CC9D509A7F1FF09A7F1FF09A7F1FF09A7F1FF09A7F1FF09A7
        F1FF058DCED602010002A46300E0B97200FFB97200FFB97200FFB97200FFB972
        00FFB97200FF824B00AD001211132ABA79FD29BB79FF29BB79FF29BB79FF29BB
        79FF29BB79FF29BB79FF1A784EA4000000000000000000000000000000000000
        0000000000000891CAD508ACF2FF08ACF2FF08ACF2FF08ACF2FF08ACF2FF08AC
        F2FF0491CED602010002A76500E0BC7400FFBC7400FFBC7400FFBC7400FFBC74
        00FFBC7400FF844C00AD0013111328BD7EFD28BE7EFF28BE7EFF28BE7EFF28BE
        7EFF28BE7EFF28BE7EFF1A7A51A4000000000000000000000000000000000000
        0000000000000694CBD506B1F4FF06B1F4FF06B1F4FF06B1F4FF06B1F4FF06B1
        F4FF0295CFD602010002A96700E0BE7600FFBE7600FFBE7600FFBE7600FFBE76
        00FFBE7600FF864D00AD0013121325BE81FD26C081FF26C081FF26C081FF26C0
        81FF26C081FF26C081FF187B53A4000000000000000000000000000000000000
        0000000000000799CED603B4F4FF05B5F4FF05B5F4FF05B5F4FF05B5F4FF03B4
        F4FF039AD1D702010002AA6900DFC07900FFC07900FFC07900FFC07900FFC079
        00FFC07900FF884F00AD0013121323BF84FD23C184FF23C184FF23C184FF23C1
        84FF23C184FF23C184FF177C55A4000000000000000000000000000000000000
        00000000000022A4D0D70DBCF6FF00B8F5FF00B8F5FF00B8F5FF00B8F5FF0DBC
        F6FF1EA7D7DB01000001AD6B00E0C37B00FFC37B00FFC37B00FFC37B00FFC37B
        00FFC37B00FF8A5100AD0013121321C087FD21C287FF21C287FF21C287FF21C2
        87FF21C287FF21C287FF157D57A4000000000000000000000000000000000000
        0000000000000E5C757939C9F8FF39C9F8FF37C9F8FF37C9F8FF39C9F8FF39C9
        F8FF0E5F7A7B00000000AF6F01E2C57D00FFC57D00FFC57D00FFC57D00FFC57D
        00FFC57D00FF8B5200AD001313131FC28AFD1FC48AFF1FC48AFF1FC48AFF1FC4
        8AFF1FC48AFF1FC48AFF147E59A4000000000000000000000000000000000000
        000000000000000000000238484A0E5063660D5164670D5164670E5063660239
        494B0000000002020103B27101E3C87F00FFC87F00FFC87F00FFC87F00FFC87F
        00FFC87F00FF8D5300AD001313131EC38CFD1DC58CFF1DC58CFF1DC58CFF1DC5
        8CFF1DC58CFF1DC58CFF137F5AA4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104B47301E3CA8100FFCA8100FFCA8100FFCA8100FFCA81
        00FFCA8100FF8F5500AD001313131CC48FFD1BC68FFF1BC68FFF1BC68FFF1BC6
        8FFF1BC68FFF1BC68FFF117F5CA4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104B67501E3CC8300FFCC8300FFCC8300FFCC8300FFCC83
        00FFCC8300FF915600AD0013131318C591FD19C792FF19C792FF19C792FF19C7
        92FF19C792FF18C792FF0F805DA4000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104B77601E3CE8500FFCE8500FFCE8500FFCE8500FFCE85
        00FFCE8500FF925700AC0014141421CA98FF10C893FF13C894FF13C894FF13C8
        94FF12C894FF15C894FF1A8564A8000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104BA7901E3D18800FFD18800FFD18800FFD18800FFD188
        00FFD18800FF945C00B00006060637C698F434CD9DFF26CB9BFF28CC9BFF27CC
        9BFF27CC9BFF3CCE9FFF1C765B93000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000003020104BC7B00E3D38A00FFD38A00FFD38A00FFD38A00FFD38A
        00FFD38A00FF976200B600000000084A385C37BA91E544C69CF243C59BF243C5
        9BF244C59CF2259F7CC50016111C000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000004030104BF7E02E3D58B00FFD68C00FFD58C00FFD58C00FFD68C
        00FFD58B00FF9A6602B7000000000000000000060408000D0911000D0911000D
        0911000D09110000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000002010002CC8D15EADA9207FFD78D00FFD78D00FFD78D00FFD78C
        00FFDB950CFFA37111BB00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000077520B89E2A121FFE3A324FFE3A323FFE3A323FFE3A3
        25FFE2A01FFF5137065E00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000003A260143573B04635439046054390460563A
        03622C1D00340000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object PlanEndDateEdit: TcxBarEditItem
      Caption = #1087#1086
      Category = 0
      Hint = #1087#1086
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.OnEditValueChanged = PlanEndDateEditPropertiesEditValueChanged
    end
    object dxBarLargeButton10: TdxBarLargeButton
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080
      Category = 0
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100' '#1087#1086#1082#1072#1079#1072#1090#1077#1083#1080
      Visible = ivAlways
      OnClick = dxBarLargeButton10Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000040000000500000005000000060000000600000006000000060000
        0005000000060000000500000005000000040000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000F0000001E000000260000012B0000012F0000
        013300000135000001370000013800000139000001390000013A0000013A0000
        00310000002D000001390000013700000135000001330000012F0000012B0000
        00260000001E0000000F00000001000000000000000000000000000000000000
        00000000000000000001000000100000001F000000270000012C000001300000
        0133000001360000013700000139000001390000013A00000039000000351E56
        26BE0F2B147E00000024000000360000013600000133000001300000012C0000
        00270000001F0000001000000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        000300000004000000050000000600000006000000070000000500000002287C
        3BDB2D9045FF11351A5F00000000000000030000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000257D
        44CD2D9B53FF2D9B52FF1545266E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000409060E103822541B603991237E49BF24844CCA2CA2
        5DF72DA760FF2DA760FF2DA65FFF185833860000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000002060409175A3783299F61E92CAE69FF2CAE69FF2CAE69FF2CAE69FF2CAF
        6AFF2CAF6AFF2CAF6AFF2CAF6AFF2CAE69FF1B663F9400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000081F
        142C239860D62AB471FF2AB572FF2AB572FF2AB572FF2AB572FF2AB572FF2AB5
        72FF2AB572FF2AB572FF2AB572FF2AB572FF2AB471FF1C764BA6010403060000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000720152B25AF
        71EE28BB7AFF29BB7AFF28BB7AFF28BB7AFF28BB7AFF28BB7AFF28BB7AFF28BB
        7AFF28BB7AFF28BB7AFF28BB7AFF29BB7AFF26BB79FF2CBC7CFF0E38264C0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000308060B21A770DE26C0
        81FF26C081FF24BF80FF23BF80FF23BF80FF23BF80FF24BF80FF25C081FF26C0
        81FF26C081FF26C081FF26C081FF22BF7FFF32C387FF39A476D105100B150000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000146E4C911EC184FF1EC1
        84FF25C387FF2CC48AFF30C58BFF33C58CFF31C58CFF2EC48AFF27C388FF21C2
        86FF22C286FF22C286FF1DC184FF32C58CFF369C73C6030D0911000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000416101C1CC087FB2EC790FF3FCA
        96FF3FB88AE736A178CA328B68AE2C7A5B982E7E5F9D359872BE3BAE82DA23C4
        8BFE1DC48AFF1AC389FF32C891FF2F936EB90006040800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000C63478031CA95FF2E8163A00E31
        253D0007050A00000000000000000000000000000000000000000000000116A4
        76D317C58EFF32CA95FF2A8262A3000100010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000002010226B185DE1B59446E000000000000
        00000000000000000000000000000000000000000000000000000000000015A5
        7AD230CC99FF2275599200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000010604071A5F497500000000000000000000
        0000000000000000000000000000000000002D1A04460A06010F0000000029A8
        81D01D6F568A0000000000000000000000000000000000000000000000000000
        0000010100020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000058330387A55F03FF1D12042B000000000110
        0D14000000000000000000000000000000000000000000000000000000006139
        05952918023E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000653C0298A96300FFAA6402FF140D041D000000000000
        0000000000000000000000000000000000000000000000000000462A0369B573
        11FC100B03160000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000002020103734504A7AD6700FFAE6800FFAE6801FF4128055D140C011D0604
        02080000000005040207130C011C241602344B2D036E854F02C3B06B03FF8051
        0BB1000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000805
        010B855003BDB36C00FFB36C00FFB36C00FFB36C00FFB26B00FFB06B01FCA061
        03E4995C02DA9F6003E3B06A01FBB26C01FFB26C00FFB16A00FFBA760BFF2C1C
        053C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000D0802129259
        02CBB76F00FFB77000FFB77000FFB77000FFB77000FFB77000FFB77000FFB770
        00FFB77000FFB77000FFB77000FFB77000FFB56E00FFBD7708FF885A10B10000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000007040109985D02CFBB73
        00FFBC7400FFBC7400FFBC7400FFBC7400FFBC7400FFBC7400FFBC7400FFBC74
        00FFBC7400FFBC7400FFBC7400FFBA7200FFC07A07FFB77B16E8110B02170000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000A06010DBA7B12EBC37C
        04FFBF7600FFC07800FFC07800FFC07800FFC07800FFC07800FFC07800FFC078
        00FFC07800FFC07700FFBF7600FFC6800BFFBE8017EB2317042E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000261B082DBE83
        19E7C78006FFC37B00FFC57D00FFC57D00FFC57D00FFC47B00FFC47B00FFC47B
        00FFC47B00FFC88107FFCE8A12FFA26D13C61D12012600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001D14
        0423B98018DECC8608FFC87F00FFC98100FFC98100FFCE870AFFCF890CFFD08B
        10FFD28E15FEA67213C94E340860000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000140D0218AE7A19CCD28B0BFFCD8300FFCE8501FF81580F996B4A0E7E4731
        0A541F1503260000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000906020BA17117BBD6900CFFD28800FF130D0217000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000002010003976B14ADDC9611FF2418032A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000005E420A6C110C0114000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton27: TdxBarButton
      Caption = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Category = 0
      Hint = #1057#1073#1088#1086#1089#1080#1090#1100' '#1092#1080#1083#1100#1090#1088#1099
      Visible = ivAlways
      ImageIndex = 3
    end
    object cxBarEditItem19: TcxBarEditItem
      Caption = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Category = 0
      Hint = #1042#1082#1083#1102#1095#1080#1090#1100' '#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
    end
    object dxBarButton28: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      Visible = ivAlways
      ImageIndex = 5
      OnClick = dxBarButton28Click
    end
    object CashBeginDateEdit: TcxBarEditItem
      Caption = #1089':   '
      Category = 0
      Hint = #1089':   '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.OnEditValueChanged = CashBeginDateEditPropertiesEditValueChanged
      InternalEditValue = '0:00:00'
    end
    object CashEndDateEdit: TcxBarEditItem
      Caption = #1087#1086': '
      Category = 0
      Hint = #1087#1086': '
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.OnEditValueChanged = CashBeginDateEditPropertiesEditValueChanged
      InternalEditValue = '0:00:00'
    end
    object dxBarLargeButton11: TdxBarLargeButton
      Caption = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1088#1077#1089#1095#1080#1090#1072#1090#1100
      Visible = ivAlways
      OnClick = dxBarLargeButton11Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        000200000003000000060000000A0000000D0000001000000013000000190000
        002B00000032000000370000003D959689FF959689FF959689FF959689FF9596
        89FF959689FF232321710000003D0000003A0000003300000030000000200000
        0014000000110000000E0000000B000000070000000400000003000000000000
        0000000000000000000300000005000000080000000C00000010000000140000
        00190000001E000000220606052F818275FBA1A295FFA1A195FFA1A195FFA0A2
        94FF8C8D80FF3B3B358900000028000000240000001F0000001B000000160000
        00120000000E0000000900000006000000040000000100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000014141228858679F9A2A396FFA1A396FFA2A396FFA1A2
        95FF97988BFF5E5E55B200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000003636316865665CC2090908110000
        00000000000000000000232320468A8B7FFCA3A397FFA3A397FFA3A397FFA3A4
        97FF9D9E91FF737469DE000000000000000000000000000000002C2C27566869
        5ECB0707060E0000000000000000000000000000000000000000000000000000
        000000000000000000000000000035353068848579FB949588FF7C7D70F11D1D
        1A3A0303030630302B6075766AE3939486FFA4A599FFA4A598FFA4A498FFA4A5
        98FFA3A497FF7F8074FC5A5B52AF1E1E1B3B010201035050489A858679FB9293
        86FF727368DE0707060E00000000000000000000000000000000000000000000
        000000000000000000003738326B868779FBA2A397FFA5A699FF9E9F92FF8283
        77FA7D7E71F48C8D80FC9E9F93FFA5A699FFA5A69AFFA5A699FFA5A699FFA5A6
        9AFFA5A69AFFA4A598FF98998CFF858679F77D7E71F68D8E81FEA4A598FFA5A6
        99FF949589FF727368DE0707060E000000000000000000000000000000000000
        0000000000004D4D4781858679FBA3A598FFA6A79BFFA6A79BFFA7A89BFFA5A6
        99FFA2A397FFA6A79BFFA6A79BFFA6A89BFFA6A89BFFA6A79BFFA6A79BFFA6A7
        9BFFA6A79BFFA7A79BFFA6A79BFFA6A79BFFA1A396FFA6A89BFFA6A79BFFA6A7
        9BFFA6A89BFF96978AFF76776BE0090908100000000000000000000000000000
        00000A0A0914838477FDC2C3B4FFA7A89CFFA8A89DFFA7A99CFFA7A89CFFA8A9
        9CFFA8A99CFFA7A89DFFA9A99EFFBABBAFFFCFD1C3FFD8D9CBFFDDDED0FFD7D7
        CAFFC9C9BCFFB3B4A6FFA8A99DFFA7A89CFFA7A89CFFA8A89CFFA7A99DFFA8A9
        9DFFA8A89DFFA7A99CFF9E9F91FF4F5048900000000000000000000000000000
        0000000000003637316998998BFEBCBDB1FFA9AA9FFFA9AA9EFFA9AA9EFFA9AA
        9EFFA9AA9EFFBEBFB3FFDDDED1FFD0D2C4FFBBBDB0FFB2B3A6FFAEAFA3FFB4B5
        A9FFC0C1B4FFD4D5C8FFD3D5C6FFB2B4A7FFA9AA9EFFA9AA9EFFA9AA9EFFA9AA
        9EFFA9AA9EFFB8B9ABFF848578F20606050B0000000000000000000000000000
        000000000000000000005D5E55AE98998DFEABACA0FFABACA0FFABAB9FFFABAC
        A1FFCCCDC0FFCFD0C3FFAEB0A3FFAAACA0FFABACA0FFABABA0FFAAACA0FFAAAB
        A0FFABACA0FFABABA0FFB5B6AAFFD5D6C8FFBBBDB0FFABACA0FFABACA0FFAAAC
        9FFFA7A89DFF868779F91818162F000000000000000000000000000000000000
        000000000000000000000B0B0A15828376FBABACA0FFACADA2FFACADA2FFCBCC
        BFFFC4C5B9FFACADA2FFACADA2FFADADA1FFACAEA2FFACAEA2FFACADA2FFACAE
        A1FFACADA2FFACADA2FFACADA1FFAFAFA4FFCECFC2FFB9BAAEFFACADA2FFACAD
        A2FF9FA094FF6C6D63CB00000000000000000000000000000000000000000000
        000000000000000000003A3A346F96978BFDAEAFA3FFADAFA3FFBEBFB3FFC9CA
        BDFFADAEA3FFAEAFA4FFAEAFA4FFAEAFA4FFAEAEA4FFAEAFA4FFAEAFA4FFAEAF
        A3FFAEAFA3FFAEAEA4FFADAFA3FFAEAFA3FFB1B2A6FFCFD0C3FFB2B2A7FFAEAF
        A4FFADADA3FF86877AF70F0F0E1D000000000000000000000000000000000000
        0000000000000707070E7C7C71E6A9AA9EFFAFB0A5FFB1B1A7FFCFD0C3FFB2B3
        A7FFB0B0A5FFAFB1A6FFB0B1A5FFB0B1A5FFBEBFB5FFDADBD5FFD7D7D2FFC6C7
        BFFFB4B5AAFFAFB1A5FFAFB0A5FFAFB0A5FFB0B0A5FFB8BAAEFFBFC0B4FFAFB0
        A6FFAFB0A5FF9C9D90FE4D4D459003030205000000000000000042433D787C7D
        71E286877AF7898A7DF995968AFDB2B3A7FFB1B2A8FFB8B9ADFFBDBEB2FFB2B3
        A8FFB1B2A7FFB1B2A7FFB1B2A7FFBABBB1FF96978BFD838478F077786DD88788
        7BF7A3A499FEB5B6ABFFB1B3A7FFB1B2A8FFB1B3A7FFB1B2A8FFB3B4A8FFB1B2
        A7FFB2B2A7FFACADA2FF909184FB898A7CF9848579F275766CD3727369CAA5A6
        9AFFB2B3A8FFB3B4A9FFB3B4AAFFB3B4A9FFB3B4A9FFB1B2A6FFB3B4A8FFB2B4
        A9FFB3B4A9FFB3B4AAFFB6B7ACFF929386FC3F403A7400000000000000000505
        050A6A6B60BEA1A297FEB2B4A9FFB3B4AAFFB3B4A9FFB3B4A9FFACADA1FFB3B4
        A9FFB3B4A9FFB3B4AAFFB3B4A9FFB3B4A9FFB1B2A7FF97988BFE74756ACAAAAB
        A0FFB4B6ABFFB5B6ABFFB5B6ACFFB5B6ABFFB4B6ABFFAAAB9EFFB4B5AAFFB5B6
        ABFFB4B5ABFFB4B5ABFFACADA2FF7A7B6FD90000000000000000000000000000
        00000607060C8A8B7CF8B5B6ABFFB5B6ABFFB4B6ABFFB4B6ABFFAAABA0FFB5B5
        ABFFB5B5ABFFB5B6ABFFB5B5ABFFB4B5ABFFB5B6ABFF9B9C8FFD74756BCAABAC
        A2FFB7B7ADFFB6B7ADFFB6B7ADFFB6B8ADFFB6B7ADFF9FA094FFB5B6ACFFB6B8
        ADFFB6B7ADFFB7B8ADFFA6A89CFF5858519B0000000000000000000000000000
        00000000000084857AEAB2B3A9FFB6B8ADFFB6B7ADFFB7B8ADFFA9AB9FFFB7B8
        ADFFB6B7ADFFB6B7ADFFB6B8ADFFB6B8ADFFB6B7ADFF9C9D91FD77786ECCAEAF
        A4FFB8B9AFFFB8B9AFFFB9BAAFFFB8BAAFFFB8B9AEFF9C9D91FFB3B4AAFFB8B9
        AFFFB8B9AFFFB8B9AFFFAEAFA5FF797A6FD30000000000000000000000000000
        0000040404088B8C7FF8B8B9AFFFB8B9AFFFB8B9AFFFB8B9AFFFA6A79BFFB9B9
        AFFFB8B9AFFFB8B9AFFFB8BAAFFFB8B9AFFFB8B9AFFF9E9F93FD88897EDAC0C2
        B4FFD6D7C9FFD7D9CBFFC7C8BDFFBABBB1FFB9BBB0FFA4A599FFADAEA3FFBABB
        B1FFB9BBB1FFBABAB1FFBABBB1FF949588FB3636316100000000000000000303
        030563645BAEA3A498FFBABAB0FFBABAB1FFB9BAB1FFB9BBB1FF9FA094FFBABB
        B1FFBABBB1FFBABBB0FFCECFC3FFD6D8CBFFDCDDCEFFADAFA1FF41423C738081
        76DA8D8E81F18F9083FA9D9E91FEBCBCB2FFBBBCB3FFB2B3AAFF9F9F94FFBCBC
        B3FFBBBCB3FFBCBDB2FFBBBCB3FFB6B8ADFF97988CFC858679E773746BC7898A
        7EF2A0A196FEBBBBB1FFBBBCB3FFBBBCB3FFBBBDB2FFBABBB1FF98998CFFBCBC
        B3FFBBBDB3FFB4B4AAFF969789FD909185F98B8C80EC78796ECD000000000000
        00000000000000000000838479D9BEBFB3FFBDBEB5FFBDBEB5FF9C9C90FFB5B6
        ACFFBDBEB5FFBEBEB5FFBDBEB5FFBDBEB4FFBDBEB5FFB8B9B0FFB2B3A9FFBABB
        B2FFBDBFB4FFBDBFB4FFBEBEB4FFBEBEB4FFBDBEB5FFA7A89DFFAAABA0FFBDBE
        B4FFBDBEB5FFA8A99CFD43433D6D000000000000000000000000000000000000
        00000000000000000000292925499FA093FCBFC0B6FFBEC0B6FFB6B7ADFF9A9B
        8FFFBDBEB4FFBFC0B6FFBFC0B6FFBFBFB6FFBFBFB6FFBFC0B7FFBFC0B6FFBEC0
        B7FFBFC0B6FFBEC0B6FFBFC0B6FFBFBFB7FFB4B6ABFF9A9B8FFFBEBFB5FFBFC0
        B6FFBDBEB5FF8F9084F705050509000000000000000000000000000000000000
        000000000000000000000707070D8E8F82FBBCBEB4FFC0C1B8FFC0C2B8FFAFB1
        A6FF9D9D92FFBDBEB4FFC0C1B8FFC0C2B8FFC0C2B8FFC0C2B8FFC0C2B8FFC1C1
        B8FFC0C1B8FFC0C2B8FFC1C2B8FFB5B6ADFF999A8DFFBABCB2FFC0C1B8FFC0C2
        B9FFADAEA3FF696A61B700000000000000000000000000000000000000000000
        00000000000001010101717168C2A9AA9FFEC2C2BAFFC2C3B9FFC2C3BAFFC2C3
        BAFFB3B4AAFF999A8EFFB1B2A7FFC2C3BAFFC2C3BAFFC2C3BAFFC2C3BAFFC2C2
        BAFFC2C3BAFFBFC0B6FFA8A99EFF9B9C90FFBCBDB4FFC2C3BAFFC2C3B9FFC2C3
        BAFFC0C1B7FF939488FA21221F3C000000000000000000000000000000000000
        00000000000064655E9EA1A297FEC3C4BBFFC3C5BBFFC4C4BBFFC3C4BBFFC3C4
        BBFFC3C5BBFFC1C2BAFFB6B7ADFFAAAAA0FFABACA1FFACADA3FFAFB1A5FFAAAB
        A1FFA7A89DFFB0B0A6FFBABBB2FFC3C4BCFFC3C4BCFFC3C4BBFFC3C5BCFFC3C4
        BCFFC3C5BCFFBABBB1FF8F9084F40B0B0A130000000000000000000000000000
        00000B0B0A14929385FEDDDED2FFCFD1C8FFC5C6BDFFC4C6BDFFC5C6BDFFC5C6
        BDFFC7C8BFFFC4C6BDFFC5C6BDFFC4C6BDFFC5C6BDFFC5C6BDFFC5C5BDFFC5C6
        BDFFC4C6BDFFC5C6BDFFC4C6BDFFC5C5BDFFC6C8BFFFC4C6BDFFC4C6BDFFC4C6
        BDFFC5C6BDFFD1D2CAFFADAEA0FF585850910000000000000000000000000000
        00000000000031312D539D9E90FEE1E3D7FFD1D2C9FFC6C7BFFFC8C9BFFFDCDE
        D1FFD4D5C6FFECEEE1FFD6D8CEFFC6C7BEFFC6C7BFFFC6C7BFFFC6C7BEFFC6C7
        BEFFC7C7BEFFC7C8C0FFDBDDD2FFE6E7D9FFD2D3C4FFDDDFD2FFC6C7BEFFC6C7
        BEFFD4D5CDFFBCBEB0FF898A7EDC040404070000000000000000000000000000
        000000000000000000002F2F2B509D9E90FEE1E3D8FFD8D9D0FFD6D7C8FF9899
        8CFB76786EC898998CFBC0C1B3FFC8C9BFFFC7C8C0FFC7C8BFFFC7C9C0FFC7C8
        C0FFC7C9C0FFCBCCC0FFB2B3A5FE939488F77C7D72D1A8A99CFEE2E4D5FFD9DA
        D0FFBCBDB0FF89897EDB03030306000000000000000000000000000000000000
        00000000000000000000000000002E2E2A4F9C9D90FEBCBDAFFF8C8D81EB1717
        1529000000000B0B0A145858519AACADA1FEC9C9C1FFC8C9C1FFC9C9C1FFC8CA
        C1FFC6C6BEFF919185F930302C55030303050000000046464078999A8EFCB7B9
        ABFF89897EDB0303030600000000000000000000000000000000000000000000
        0000000000000000000000000000000000002E2E2A4E64645CA7040504080000
        0000000000000000000022221F3DA4A599FCC9CBC2FFC9CAC2FFCACAC3FFC9CB
        C2FFBDBEB5FF838478D70000000000000000000000000000000021211E3A6A6B
        62B2030303060000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000001112101F9FA093FCF8FAE9FFF8FAE9FFF8FAE9FFF8FA
        E9FFDDDFD1FF686960A900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000002020204939487FDB2B4A6FFB2B4A6FFB2B4A6FFB3B4
        A6FFA2A396FF3D3E386900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton13: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000010000000200000003000000040000
        0005000000060000000600000008000000050000000000000002000000090000
        0008000000080000000700000006000000060000000500000004000000030000
        0002000000010000000000000000000000000000000000000000000000000000
        00060000001600000021000000280000012C0000013000000133000001350000
        0138000001390000013A0000002F0203023D0C220F6806100850000000310000
        013D0000013B0000013A00000139000001390000013800000135000001330000
        01300000012C0000002800000021000000160000000600000000000000000000
        0006000000140000001E00000024000000290000012D0000012F000001320000
        0134000001350000002407160A56267233E32E883BFF2C813AF90D23116B0000
        00290000013800000137000001360000013500000134000001320000012F0000
        012D00000029000000240000001E000000140000000600000000000000000000
        0000000000000000000000000000000000000000000100000002000000030000
        00030000000008170B2929813DE92D8F43FF2D8D43FF2D8E43FF297F3DE40205
        030A000000040000000500000004000000030000000300000003000000020000
        0001000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000008180C28298744EA2D944AFF2D934AFF2D944AFF2D934AFF2D934AFF1A53
        2B8E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000819
        0D2A298B49EA2D9850FF2D9951FF2D9951FF2D9951FF2D9951FF2D9951FF2D98
        50FE091C0F2F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000081A0F2A2992
        50EA2D9F57FF2D9F57FF2D9F57FF2D9F57FF2D9F57FF2D9F57FF2D9F57FF2D9F
        57FF247D45C90000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000081C102A299857EA2DA6
        5FFF2DA65FFF2DA65FFF2DA65FFF2DA65FFF2DA65FFF2DA65FFF2DA65FFF2DA6
        5FFF2DA65FFF1446296A00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000081C112A299D5EEA2DAC66FF2DAC
        66FF2DAC66FF2DAC66FF2DAC66FF2DAC66FF2DAC66FF2DAC66FF2DAC66FF2DAC
        66FF2DAC66FF2CA562F406120B1B000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000081D122A28A061E92CAF6AFF2CAF6AFF2CAF
        6AFF2CAF6AFF2CAF6AFF2CAF6BFF28AE68FF2BAF69FF2CAF6BFF2CAF6AFF2CAF
        6AFF2CAF6AFF2CAF6AFF207B4BB2000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000071D122A27A366EA2BB26FFF2BB26FFF2BB26FFF2BB2
        6FFF2BB26FFF2BB26FFF28B16DFF43BC7FFF32B574FF29B26EFF2BB26FFF2BB2
        6FFF2BB26FFF2BB26FFF2BB26FFF0F3B25530000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000005180F2226A76AEA2AB674FF2AB674FF2AB674FF2AB674FF2AB6
        74FF2AB674FF25B571FF46C085FF48A275D048BD84F828B673FF2AB674FF2AB6
        74FF2AB674FF2AB674FF2AB674FF27A76BE9030B070F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001C5C3F7B2DBB7BFF26B977FF29BA79FF29BA79FF29BA79FF29BA
        78FF24B876FF45C388FF35835FA800000000214F39653EC185FF25B976FF29BA
        79FF29BA79FF29BA79FF29BA79FF29BA79FF1C794FA600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001331233E50C992FF2ABE7FFF25BD7CFF28BE7DFF28BE7DFF23BC
        7BFF44C58CFF368561A90000000000000000000000003B956CBD30C081FF25BD
        7CFF28BE7DFF28BE7DFF28BE7DFF28BE7DFF28BE7DFF0F422C58000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000194633594FCA94FF29C082FF1EBE7DFF1FBE7EFF43C7
        8EFF368663A9000000000000000000000000000000000A19121F44C08AF524BF
        7FFF26C081FF26C081FF26C081FF26C081FF26C081FF25B77BF3061811200000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001845325850CB96FF42C790FF4AC993FF3386
        63A90000000000000000000000000000000000000000000000002356406C3BC6
        8DFF1FC081FF24C183FF24C183FF24C183FF24C183FF24C183FF1E9B6ACD0102
        0103000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000103D2B4E38926EB8256E508B0000
        0000000000000000000000000000000000000000000000000000000000003996
        6FBC2CC48AFF1EC185FF22C286FF22C286FF22C286FF22C286FF22C286FF177C
        56A2000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000715
        101A43C08FF120C389FF1EC388FF20C389FF20C389FF20C389FF20C389FF20C3
        89FF1160447D0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001A4434553FCA97FF19C48AFF1DC48BFF1DC48BFF1DC48BFF1DC48BFF1DC4
        8BFF1EC48CFF0F543C6C00000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000002B75599134CA96FF15C48DFF1CC68EFF1BC58EFF1BC58EFF1BC5
        8EFF1BC58EFF1CC68EFF0C4C3761000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000100013AA07AC52AC995FF14C68FFF1AC791FF19C791FF1AC7
        91FF17C790FF16C690FF1DBF8CF4000202030000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000004130F1841B98FE423CA96FF11C792FF17C894FF10C7
        92FF1DC995FF44CE9EFF248967AA000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000009221A2A45C499F12ACC9AFF17CA96FF33CD
        9CFF4CCFA1FE206D548700050407000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000830253C3FBB91E54BD1A4FF34A0
        7DC404291F340000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000C0910012B20360000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object CapitalDE: TcxBarEditItem
      Caption = #1044#1072#1090#1072':'
      Category = 0
      Hint = #1044#1072#1090#1072':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxDateEditProperties'
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.OnEditValueChanged = CapitalDEPropertiesEditValueChanged
      InternalEditValue = '0:00:00'
    end
    object cxBarEditItem24: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxComboBoxProperties'
    end
    object dxBarLargeButton14: TdxBarLargeButton
      Caption = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1041#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Visible = ivAlways
      Glyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000020000000400000006000000080000
        0008000000090000000A0000000B0000000C0000000D0000000D0000000E0000
        000D0000000C0000000B0000000B000000090000000800000008000000070000
        0005000000020000000000000000000000000000000000000000000000000000
        000000000000000000000000000A0000001F0000012C00000030000000260100
        00370102053F0102044001020441010204420102044301020443010204440102
        04430102044201020442010204400102053F0101033B000000290000002C0000
        012E000000230000000F00000000000000000000000000000000000000000000
        000000000000000000000000000500000011000000170202031C0E40789B1567
        C1E0156DCDEB156BCBE9156CCBE9156CCCEA156CCCEA156CCCEA156BCBEA156C
        CCEA156CCCEA156CCCEA156BCBE9156CCCEA156AC8E6115199BB05101C390000
        0013000000130000000700000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000F51919D1580EBFF1580
        EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580
        EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EBFF1471CBDD0308
        0C0C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000005121D1F1485EAFF1485EAFF1485
        EAFF1485EAFF1485EAFF1485EAFF1485E9FF1284EBFF148CF7FF148DF7FF1488
        EFFF1484E8FF1485EAFF1485EAFF1485EAFF1485EAFF1485EAFF1384EAFF0B35
        5B63000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000622383C138AEBFF128AEBFF128A
        EBFF128AEBFF128AEBFF128AEBFF118BEDFF1A8BE1FF116AB1FF1168B0FF117A
        CFFF128DF0FF128AEBFF128AEBFF128AEBFF128AEBFF128AEBFF128AEBFF0944
        747E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000521363A118FECFF108FECFF108F
        ECFF108FECFF108FECFF108FECFF0D91F3FF2F9AD4FF130D04FF0B0000FF0F5B
        93FF109AFDFF108FECFF108FECFF108FECFF108FECFF108FECFF108FECFF0845
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000523363A1095EDFF0F95EDFF0F95
        EDFF0F95EDFF0F95EDFF0F95EDFF0A93EFFF29A7EDFF1C282BFF0C0303FF0F77
        BEFF0F9CF8FF0F95EDFF0F95EDFF0F95EDFF0F95EDFF0F95EDFF0F95EDFF0748
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000524363A0E9AEEFF0D9AEEFF0D9A
        EEFF0D9AEEFF0D9AEEFF0D9AEEFF0A98EEFF20AFFBFF25404CFF0D0E17FF0D8F
        DDFF0D9EF4FF0D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF064A
        737B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000525373A0CA0F0FF0BA0F0FF0BA0
        F0FF0BA0F0FF0BA0F0FF0BA0F0FF089EF0FF1EB3FCFF284858FF0E1422FF0C96
        E1FF0BA3F5FF0BA0F0FF0BA0F0FF0BA0F0FF0BA0F0FF0BA0F0FF0BA0F0FF054D
        747B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000426373A0BA5F1FF0AA5F1FF0AA5
        F1FF0AA5F1FF0AA5F1FF0AA5F1FF07ABFBFF2F98C7FF16131EFF150D16FF0F5D
        89FF09B1FFFF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF0550
        747B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000428373A08AAF2FF08ABF2FF08AB
        F2FF08ABF2FF08ABF2FF08ABF2FF04AEF8FF26AAE0FF213246FF151A2DFF0C7D
        B3FF07B3FCFF08ABF2FF08ABF2FF08ABF2FF08ABF2FF08ABF2FF07ABF2FF0352
        757B000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000062B393B0CB2F4FF04AFF3FF06B0
        F3FF06B0F3FF06B0F3FF06B0F3FF06AFF3FF06B4F9FF10A8E6FF089BD9FF06B5
        FAFF06B0F3FF06B0F3FF06B0F3FF06B0F3FF06B0F3FF05B0F3FF08B1F3FF0859
        797E000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000003151C1D1FBDF6FF06B6F5FF00B4
        F4FF02B5F4FF02B5F4FF02B5F4FF02B5F4FF02B4F4FF00B8F9FF01BAFCFF02B5
        F4FF02B5F4FF02B5F4FF02B5F4FF02B5F4FF01B5F4FF00B4F4FF1BBCF6FF0B47
        5C60000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000F73949927C4F7FF16C0
        F8FF0DBFF9FF0EBFF9FF10BEF8FF13BEF6FF13BEF6FF13BEF6FF13BEF6FF13BE
        F6FF13BEF6FF12BEF7FF0EBFF9FF0DBFF9FF11BFF9FF24C3F7FF1CA5D2D90009
        0C0D000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000101010A5F797C2FB3
        DAE639C5EFFF39C5EFFF2FBAE6F025AFD9DF25B0DAE025B0DAE025B0DAE025B0
        DAE025AFD9DF29B4DFE639C4EFFF38C5EFFF39C1EAFA147C9CA1001318190000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006465
        6597A3ABADFFA3ABADFF525A5C85000103030002040400020404000204040002
        0404000103031B242633A4ACAEFFA3ABADFF949A9CE500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006C6A
        6A9BAFADADFFAFADADFF5B595881000000000000000000000000000000000000
        0000000000002320202DB0AEAEFFAFADADFF9E9C9DE507070709000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006C6C
        6C9CAFAFB0FFAFAFB0FF5B5B5B83000000000000000000000000000000000000
        00000000000023232330AFAFB0FFAFAFB0FF9F9F9FE60808080A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006C6C
        6D9CB1B1B2FFB1B1B2FF5B5B5B82000000000000000000000000000000000000
        0000000000002222222FB1B1B2FFB1B1B2FFA0A0A1E60808080A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006F6F
        709CB4B4B5FFB3B3B4FF5A5A5B80000000000000000000000000000000000000
        0000000000002121212DB3B3B5FFB3B3B4FFA3A4A4E60808080A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000007070
        7198B7B7B8FFB4B4B5FF757576A2000000000000000000000000000000000000
        00000000000033333345B5B5B6FFB5B5B6FFA6A7A7E203030304000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004E4E
        4E68BEBEBFFFB5B5B6FFACACADEF121212160000000000000000000000000000
        000000000000808081B0B5B6B6FFBBBBBCFF939394C300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001212
        121AC0C0C1FABCBDBDFFB7B7B8FF929293C71818181F00000000000000000404
        040462626284B8B8B9FFB8B8B9FFC4C4C5FF4E4E4E6900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000062626384C8C9C9FFBDBDBEFFB8B8B9FFB1B1B2F2818182AE797979A3A0A0
        A1D9B9B9BAFFB9B9BAFFC7C8C8FFA6A7A7D90404040700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001878788B3CCCCCDFFC6C6C7FFBDBDBEFFBABABBFFBABABBFFBBBB
        BCFFC1C2C2FFCCCCCDFFB5B5B6E91D1D1D290000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000065646586C2C2C3F4CECFCFFFCDCECEFFCDCDCEFFCECE
        CFFFCDCECEFF8D8D8DB718181822000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001313131B4C4C4C64767676977F7F80A35E5E
        5F7B282828370000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
      OnClick = dxBarLargeButton14Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000020000000400000006000000080000
        0008000000090000000A0000000B0000000C0000000D0000000D0000000E0000
        000D0000000C0000000B0000000B000000090000000800000008000000070000
        0005000000020000000000000000000000000000000000000000000000000000
        000000000000000000000000000A0000001F0000012C00000030000000260100
        00370102053F0102044001020441010204420102044301020443010204440102
        04430102044201020442010204400102053F0101033B000000290000002C0000
        012E000000230000000F00000000000000000000000000000000000000000000
        000000000000000000000000000500000011000000170202031C0E40789B1567
        C1E0156DCDEB156BCBE9156CCBE9156CCCEA156CCCEA156CCCEA156BCBEA156C
        CCEA156CCCEA156CCCEA156BCBE9156CCCEA156AC8E6115199BB05101C390000
        0013000000130000000700000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000F51919D1580EBFF1580
        EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580
        EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EAFF1580EBFF1471CBDD0308
        0C0C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000005121D1F1485EAFF1485EAFF1485
        EAFF1485EAFF1485EAFF1485EAFF1485E9FF1284EBFF148CF7FF148DF7FF1488
        EFFF1484E8FF1485EAFF1485EAFF1485EAFF1485EAFF1485EAFF1384EAFF0B35
        5B63000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000622383C138AEBFF128AEBFF128A
        EBFF128AEBFF128AEBFF128AEBFF118BEDFF1A8BE1FF116AB1FF1168B0FF117A
        CFFF128DF0FF128AEBFF128AEBFF128AEBFF128AEBFF128AEBFF128AEBFF0944
        747E000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000521363A118FECFF108FECFF108F
        ECFF108FECFF108FECFF108FECFF0D91F3FF2F9AD4FF130D04FF0B0000FF0F5B
        93FF109AFDFF108FECFF108FECFF108FECFF108FECFF108FECFF108FECFF0845
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000523363A1095EDFF0F95EDFF0F95
        EDFF0F95EDFF0F95EDFF0F95EDFF0A93EFFF29A7EDFF1C282BFF0C0303FF0F77
        BEFF0F9CF8FF0F95EDFF0F95EDFF0F95EDFF0F95EDFF0F95EDFF0F95EDFF0748
        727B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000524363A0E9AEEFF0D9AEEFF0D9A
        EEFF0D9AEEFF0D9AEEFF0D9AEEFF0A98EEFF20AFFBFF25404CFF0D0E17FF0D8F
        DDFF0D9EF4FF0D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF0D9AEEFF064A
        737B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000525373A0CA0F0FF0BA0F0FF0BA0
        F0FF0BA0F0FF0BA0F0FF0BA0F0FF089EF0FF1EB3FCFF284858FF0E1422FF0C96
        E1FF0BA3F5FF0BA0F0FF0BA0F0FF0BA0F0FF0BA0F0FF0BA0F0FF0BA0F0FF054D
        747B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000426373A0BA5F1FF0AA5F1FF0AA5
        F1FF0AA5F1FF0AA5F1FF0AA5F1FF07ABFBFF2F98C7FF16131EFF150D16FF0F5D
        89FF09B1FFFF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF0AA5F1FF0550
        747B000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000428373A08AAF2FF08ABF2FF08AB
        F2FF08ABF2FF08ABF2FF08ABF2FF04AEF8FF26AAE0FF213246FF151A2DFF0C7D
        B3FF07B3FCFF08ABF2FF08ABF2FF08ABF2FF08ABF2FF08ABF2FF07ABF2FF0352
        757B000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000062B393B0CB2F4FF04AFF3FF06B0
        F3FF06B0F3FF06B0F3FF06B0F3FF06AFF3FF06B4F9FF10A8E6FF089BD9FF06B5
        FAFF06B0F3FF06B0F3FF06B0F3FF06B0F3FF06B0F3FF05B0F3FF08B1F3FF0859
        797E000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000003151C1D1FBDF6FF06B6F5FF00B4
        F4FF02B5F4FF02B5F4FF02B5F4FF02B5F4FF02B4F4FF00B8F9FF01BAFCFF02B5
        F4FF02B5F4FF02B5F4FF02B5F4FF02B5F4FF01B5F4FF00B4F4FF1BBCF6FF0B47
        5C60000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000F73949927C4F7FF16C0
        F8FF0DBFF9FF0EBFF9FF10BEF8FF13BEF6FF13BEF6FF13BEF6FF13BEF6FF13BE
        F6FF13BEF6FF12BEF7FF0EBFF9FF0DBFF9FF11BFF9FF24C3F7FF1CA5D2D90009
        0C0D000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000101010A5F797C2FB3
        DAE639C5EFFF39C5EFFF2FBAE6F025AFD9DF25B0DAE025B0DAE025B0DAE025B0
        DAE025AFD9DF29B4DFE639C4EFFF38C5EFFF39C1EAFA147C9CA1001318190000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006465
        6597A3ABADFFA3ABADFF525A5C85000103030002040400020404000204040002
        0404000103031B242633A4ACAEFFA3ABADFF949A9CE500000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006C6A
        6A9BAFADADFFAFADADFF5B595881000000000000000000000000000000000000
        0000000000002320202DB0AEAEFFAFADADFF9E9C9DE507070709000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006C6C
        6C9CAFAFB0FFAFAFB0FF5B5B5B83000000000000000000000000000000000000
        00000000000023232330AFAFB0FFAFAFB0FF9F9F9FE60808080A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006C6C
        6D9CB1B1B2FFB1B1B2FF5B5B5B82000000000000000000000000000000000000
        0000000000002222222FB1B1B2FFB1B1B2FFA0A0A1E60808080A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000006F6F
        709CB4B4B5FFB3B3B4FF5A5A5B80000000000000000000000000000000000000
        0000000000002121212DB3B3B5FFB3B3B4FFA3A4A4E60808080A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000007070
        7198B7B7B8FFB4B4B5FF757576A2000000000000000000000000000000000000
        00000000000033333345B5B5B6FFB5B5B6FFA6A7A7E203030304000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000004E4E
        4E68BEBEBFFFB5B5B6FFACACADEF121212160000000000000000000000000000
        000000000000808081B0B5B6B6FFBBBBBCFF939394C300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001212
        121AC0C0C1FABCBDBDFFB7B7B8FF929293C71818181F00000000000000000404
        040462626284B8B8B9FFB8B8B9FFC4C4C5FF4E4E4E6900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000062626384C8C9C9FFBDBDBEFFB8B8B9FFB1B1B2F2818182AE797979A3A0A0
        A1D9B9B9BAFFB9B9BAFFC7C8C8FFA6A7A7D90404040700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001878788B3CCCCCDFFC6C6C7FFBDBDBEFFBABABBFFBABABBFFBBBB
        BCFFC1C2C2FFCCCCCDFFB5B5B6E91D1D1D290000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000065646586C2C2C3F4CECFCFFFCDCECEFFCDCDCEFFCECE
        CFFFCDCECEFF8D8D8DB718181822000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000001313131B4C4C4C64767676977F7F80A35E5E
        5F7B282828370000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton15: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000001000000020000000400000005000000050000
        0007000000080000000800000009000000090000000A0000000A0000000A0000
        0009000000030000000200000001000000000000000000000000000000000000
        0000000000000000000200000000000000000000000000000000000000000000
        000700000018000000230000002800000025000000270000002A0000002D0000
        002F000000300000003100000032000000330000003300000034000000330000
        003308101C500A152355091422530915235309142252091422500914224E0914
        224B04070C350000001F00000023000000180000000700000000000000000000
        000500000013000000170000001C1F1F204B29292957282829582929295A2929
        2A5C2A2A2B5D2A2A2B5E2A2A2B5E2B2B2C5F2B2B2B5F2B2B2B5F2B2B2A57174F
        88B0167DE6FE187EE6FF187DE5FF187FE9FF1882EDFF187EE7FF187EE6FF187E
        E7FF1773D1ED03182D4B00000010000000130000000500000000000000000000
        0000000000000E0E0E109F9F9FBCCDCDCEFDD3D3D4FFD8D8D9FFDCDCDDFFE0E0
        E1FFE3E3E4FFE4E4E5FFE5E5E6FFE6E6E7FFE6E6E7FFEDEAE8FFD0DDE8FF198B
        EDFF0F86EBFF1287EBFF1389EDFF1482DDFF1278CEFF1285E8FF1288ECFF1387
        EBFF0D85EDFF347EBED40F0F0D0F000000000000000000000000000000000000
        00000000000073737494CFCFD0FFDFDFE0FFD4D4D5FFD7D7D8FFDDDDDEFFE0E0
        E1FFE2E2E3FFE3E3E4FFE4E5E5FFE5E6E6FFE6E7E7FFEEEAE7FFC9DBE8FF1191
        ECFF0D8FECFF1090ECFF109AFDFF216A93FF0D1114FF108BE3FF1093F0FF1090
        ECFF038CEFFF55A5DFFF81787294000000000000000000000000000000000000
        0000000000009A9A9AC2CACACBFFD0D0D1FFE2E2E3FFDDDDDEFFDFDFE0FFE2E1
        E3FFE3E3E4FFE5E5E6FFE6E7E7FFE7E8E8FFE8E9E9FFF0ECE9FFCBDEEAFF0F9B
        EEFF0A99EEFF0D9AEEFF0B9FFAFF2080B3FF122B3DFF0D9FF6FF0D9AEFFF0D9A
        EEFF0097F0FF52ABE1FF9C928DB7000000000000000000000000000000000000
        000000000000989899BECFCFD0FFD2D2D3FFD3D3D3FFE4E4E5FFE4E4E5FFE2E2
        E3FFE5E5E6FFE6E7E7FFE8E8E9FFE9EAEAFFEAEBEBFFF3EEECFFCCE2EDFF0CA4
        F0FF07A2F0FF0AA3F0FF0AADFEFF23719AFF141523FF0B9CE6FF0AA5F5FF0AA3
        F0FF00A0F2FF50B1E3FF998E8AB1000000000000000000000000000000000000
        000000000000999999BECFCFD0FFD6D6D7FFDADADBFFD6D6D6FFE4E4E4FFE8E8
        E9FFE5E5E6FFE8E8E9FFE9EAEAFFEBECECFFEBECECFFF5F0EEFFCDE5EFFF07AD
        F3FF03ABF2FF07ACF2FF06B0F8FF1496CEFF0F6C9AFF06A9EFFF07ADF4FF07AC
        F2FF00A9F5FF4EB9E6FF9A8E8BB1000000000000000000000000000000000000
        00000000000099999ABED1D1D2FFD6D6D7FFDDDDDEFFE1E1E2FFD7D7D8FFE3E3
        E3FFECECECFFE8E9E9FFEBECECFFEBECECFFEEEFEFFFE9E6E6FFDFE5E7FF2DC3
        F8FF00B6F9FF01B9FAFF00B4F5FF00B9FDFF00BFFFFF00B5F7FF00B7F8FF00B9
        FAFF00B8FBFF77C5E2FF9B8F8CB1000000000000000000000000000000000000
        0000000000009A9A9BBED1D1D2FFD7D7D8FFDDDDDEFFE1E1E2FFE4E4E5FFDADA
        DBFFE1E1E2FFEFF0F0FFECEDEDFFEEEFEFFFD9D8DAFFBEBEC0FFC9C2C0FFB6D6
        E1FF5EC7E7FF4DBADCFF65D0F1FF61CCEDFF65D1F1FF66D1F2FF59C4E5FF4BBA
        DCFF77C9E3FFCED1D2FF908E8EB1000000000000000000000000000000000000
        0000000000009A9A9BBED1D1D2FFD7D7D8FFDDDDDEFFE1E1E2FFE3E3E4FFE7E8
        E8FFDCDDDDFFE2E2E3FFEFF0F0FFCFD0D0FFB9B9BAFFC1C1C2FFBFC0C1FFC7C0
        BEFFC4B8B5FFB2A8A6FFDCD3D0FFEDE4E1FFF1E8E5FFF2E8E6FFCBC1BFFFB0A6
        A4FFD9CDCAFFD5D2D3FF8D8E8EB1000000000000000000000000000000000000
        0000000000009A9A9BBED1D1D2FFD7D7D8FFDDDDDEFFE1E1E2FFE3E3E4FFE5E5
        E6FFECEDEDFFDEDFDFFFC3C3C4FFBCBCBDFFD9D9DAFFF5F5F5FFF3F3F4FFD6D6
        D7FFB5B5B6FFADACADFFD9DADAFFEDEDEDFFE5E4E5FFE6E6E7FFC4C4C5FFACAB
        ACFFCDCCCDFFD2D2D3FF8E8E8EB1000000000000000000000000000000000000
        00000000000099999ABED0D0D1FFD6D6D7FFDCDCDDFFE0E0E1FFE2E2E3FFE8E8
        E9FFDFDFE0FFC1C1C2FFCBCBCBFFF0F0F0FFFFFFFFFFFEFEFEFFFFFFFFFFFFFF
        FFFFCFCFCFFFADADAEFFC5C5C6FFE3E3E3FFE6E6E7FFE6E6E7FFC4C4C5FFB0B0
        B1FFCECECFFFD1D1D2FF8D8D8EB1000000000000000000000000000000000000
        000000000000989899BECFCFD0FFD5D5D6FFDADADBFFDFDFE0FFE4E4E5FFD5D5
        D6FFC3C3C4FFE0E0E0FFFDFDFDFFFEFEFEFFFCFCFCFFFDFDFDFFFDFDFDFFFFFF
        FFFFE1E1E1FFB3B3B4FFBABABBFFC8C8C9FFDDDDDEFFDEDEDFFFB8B8B9FFBDBD
        BEFFD1D1D2FFCFCFD0FF8C8C8CB1000000000000000000000000000000000000
        000000000000979798BECDCDCEFFD3D3D4FFD9D9DAFFDDDDDEFFCFCFD0FFD3D3
        D3FFF3F3F3FFFEFEFEFFFBFBFBFFFBFBFBFFFCFCFCFFFEFEFEFFFEFEFEFFFEFE
        FEFFF8F8F8FFC8C8C9FFBABABBFFBFBFC0FFBDBDBEFFBCBCBDFFBDBDBFFFCCCC
        CDFFD3D3D4FFCCCCCDFF8B8B8CB1000000000000000000000000000000000000
        000000000000989899C0CBCBCCFFD1D1D2FFD2D2D4FFD3D3D4FFE5E5E6FFFAFA
        FAFFFAFAFAFFF9F9F9FFFAFAFAFFFBFBFBFFFCFCFCFFFDFDFDFFFDFDFDFFFCFC
        FCFFFEFEFEFFF1F1F1FFD1D1D2FFC3C4C4FFC2C2C3FFC8C9C9FFCCCCCDFFD1D1
        D2FFD0D0D1FFCACACBFF8A8A8BB2000000000000000000000000000000000000
        0000000000008F8F90B7C8C8C9FFCECECFFFDBDBDCFFF0F0F0FFF9F9F9FFF7F7
        F7FFF8F8F8FFF9F9F9FFFAFAFAFFFBFBFBFFFCFCFCFFFCFCFCFFFCFCFCFFFCFC
        FCFFFAFAFAFFFCFCFCFFF9F9F9FFEEEEEEFFEAEAEAFFF0F0F0FFEEEEEEFFDADA
        DAFFCDCDCEFFC7C7C8FF8A8A8AB2000000000000000000000000000000000000
        00000000000037373747CACACBFFDCDDDDFFE8E8E8FFECECECFFF0F0F0FFF2F2
        F2FFF3F3F3FFF4F4F4FFF4F4F5FFF5F5F5FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
        F6FFF5F5F5FFF4F4F4FFF4F4F4FFF5F5F5FFF5F5F5FFF1F1F1FFEBEBEBFFE6E7
        E7FFDADBDBFFC9C9CAFF37373747000000000000000000000000000000000000
        00000000000000000000282829323D3E3E4B3D3D3D4B3E3E3E4B3F3F3F4B3F3F
        3F4B3F3F404B4040404B4040404B4040404B4040404B4040404B4040404B4040
        404B4040404B4040404B4040404B3F3F3F4B3F3F3F4B3E3E3F4B3E3E3E4B3D3D
        3D4B3D3D3E4B2829293200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton29: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton16: TdxBarLargeButton
      Caption = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Category = 0
      Hint = #1056#1072#1079#1073#1083#1086#1082#1080#1088#1086#1074#1072#1090#1100' '#1079#1072' '#1087#1077#1088#1080#1086#1076
      Visible = ivAlways
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000300000005000000020000000000000001000000020000
        0004000000050000000500000006000000070000000800000008000000080000
        0007000000080000000C0000000E0000000D0000000C0000000B0000000A0000
        0008000000070000000500000003000000010000000000000000000000000000
        00080000001B000000270000001F0404093E060716580607165A0606165C0607
        165E0607165F0607165F06071660060616610606166106071662060716620607
        17620607155E0202024000000035000001410000013F0000013D0000013B0000
        0138000001340000012F000000270000001B0000000800000000000000000000
        00040000000E000000090E103881181C73F01A1F7CFF1A1E7CFF1A1E7CFF1A1E
        7CFF1A1E7CFF1A1F7CFF1A1F7CFF1A1F7CFF1A1F7CFF1A1E7CFF1A1E7CFF191E
        7CFF1A1F7CFF161A69E008091D5B0000001D0000002800000027000000240000
        00220000001F0000001B000000160000000E0000000400000000000000000000
        000000000000090B2441191F85FF191E84FF191E84FF191E84FF191E84FF191E
        84FF191E84FF191E84FF191E84FF191E84FF191E84FF191E84FF191E84FF191E
        84FF191E84FF191E85FF191D7AE90304090C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000012165599181E8BFF191F8BFF191F8BFF191F8BFF191F8BFF191F
        8BFF181D89FF191F93FF1A2197FF1A2091FF191F8AFF191F8BFF191F8BFF191F
        8BFF191F8BFF191F8BFF191F8BFF0A0B2B4D0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000131660A51A1F92FF1A1F92FF1A1F92FF1A1F92FF1A1F92FF181D
        90FF252FA2FF1A1F54FF0F1039FF151860FF1B2099FF1A1F92FF1A1F92FF1A1F
        92FF1A1F92FF1A1F92FF1A1F92FF090B345B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000131663A31A2099FF1A2099FF1A2099FF1A2099FF1A2099FF171C
        96FF2A36B5FF20273EFF070500FF131754FF1B22A6FF1A2099FF1A2099FF1A20
        99FF1A2099FF1A2099FF1A2099FF090B35580000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000131668A31A20A1FF1A20A1FF1A20A1FF1A20A1FF1A20A1FF181E
        9FFF242EB7FF283264FF0A0B01FF171C77FF1B21AAFF1A20A1FF1A20A1FF1A20
        A1FF1A20A1FF1A20A1FF1A20A1FF090B38590000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000013176DA31B21A9FF1B21A9FF1B21A9FF1B21A9FF1B21A9FF1A20
        A8FF1F27B9FF2E3B83FF0D100DFF191F96FF1B22AEFF1B21A9FF1B21A9FF1B21
        A9FF1B21A9FF1B21A9FF1B21A9FF090C3B590000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000131871A31B22B0FF1B22B0FF1B22B0FF1B22B0FF1B22B0FF191F
        AFFF2933BFFF253059FF101515FF171E70FF1C22B9FF1B22B0FF1B22B0FF1B22
        B0FF1B22B0FF1B22B0FF1B22B0FF090C3D590000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000131776A31B22B7FF1B22B7FF1B22B7FF1B22B7FF1B22B7FF181E
        B7FF2F3CC4FF203041FF12201AFF16215DFF1B22C2FF1B22B7FF1B22B7FF1B22
        B7FF1B22B7FF1B22B7FF1B22B7FF090B3F580000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000161B7EA51B22BEFF1B23BFFF1B23BEFF1B23BEFF1B23BEFF1B22
        BEFF1E26C5FF2634A8FF192778FF1B24B2FF1B23C2FF1B23BEFF1B23BEFF1B23
        BEFF1B23BEFF1B22BEFF1C24BFFF0B0E455B0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001B227A97222AC9FF191FC4FF1C23C6FF1C23C6FF1C23C6FF1C23
        C6FF1B22C4FF1B20CBFF1C22D1FF1C23C9FF1C23C5FF1C23C6FF1C23C6FF1C23
        C6FF1C22C6FF191FC4FF2631CCFF0D0F3B4A0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000090B313C303ED6FF2732D2FF1D25CDFF1E26CEFF1E26CEFF1E26
        CEFF1E26CEFF1E26CEFF1E26CEFF1E26CEFF1E26CEFF1E26CEFF1D25CEFF1C25
        CEFF1E26CEFF2C39D4FF2A35C0E502020A0C0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000E1252622E3BC4E23747D9FA3646D9FA3646D9FA3646
        D9FA3646D9FA3646D9FA3646D9FA3646D9FA3645D9F93545DAFB3444DEFF3444
        DEFF3645DCFD2731ADCA0607272F000000000000000000000000000000000000
        00002626263859595A861F1F1F2E000000000000000000000000000000000000
        00000000000000000000000000000000060802031A1F02031A1F02031A1F0203
        1A1F02031A1F02031A1F02031A1F02031A1F02021A1E1A1A34449394B3FF9394
        B3FF797996D40000000000000000000000000000000000000000000000000808
        080B9F9FA1EDABABACFF909091D6000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001B1B1521B3B2ACFFB3B3
        ACFF92928CCF0000000000000000000000000000000000000000000000001111
        1117A8A8A9F7ADADAEFF99999AE1010101010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001C1C1C29AFAFB0FFAFAF
        B0FF909091D10000000000000000000000000000000000000000000000001010
        1016A7A7A8F4AFAFB0FF989899DD000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001D1D1D29B1B1B2FFB1B1
        B2FF919192D00000000000000000000000000000000000000000000000000F0F
        0F15A9A9AAF3B1B1B2FF9A9A9BDE010101010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001E1E1E2AB4B4B5FFB3B3
        B4FF939394D00000000000000000000000000000000000000000000000000D0D
        0D12ABABACF3B3B3B4FF9E9E9FDF010101010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000001717171FB7B8B8FBB4B4
        B5FFA5A5A6E80303030400000000000000000000000000000000000000001D1D
        1D28B3B3B4FCB5B5B6FFA1A1A1DB000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000003030305ABABACE3B9B9
        BAFFB6B6B7FF4343435C00000000000000000000000000000000000000006969
        6A92B6B6B7FFBBBBBCFF888989B5000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000006D6D6E90C3C3
        C4FFB7B6B8FFB0B0B1F2363636490000000000000000000000004F4F506CB9B8
        BAFFB8B8B9FFC4C4C5FF42424258000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000F0F0F16B7B8
        B8EDC5C6C6FFB9B9BAFFBABABBFF939393C8848485B49C9C9DD5B9B9BAFFBABA
        BBFFC8C8C9FF989899C700000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000002C2C
        2C3DBDBEBEF2CBCBCCFFC2C2C3FFBDBDBEFFBCBCBDFFBDBEBEFFC4C4C5FFCCCC
        CDFFA6A7A7D71111121900000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00001C1C1C278A8A8AB2CBCCCCFCCECFCFFFCECECFFFCECECFFFC2C3C3F37373
        73960A0A0A0F0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000019191923414141565353536D39393A4C101011180000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarLargeButton17: TdxBarLargeButton
      Caption = #1055#1086#1076#1088#1086#1073#1085#1086
      Category = 0
      Hint = #1055#1086#1076#1088#1086#1073#1085#1086
      Visible = ivNever
      OnClick = dxBarLargeButton17Click
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00040000000E000000160000000E0000000E0000001200000015000000170000
        00190000001B0000001B0000001C0000001E0000001E0000001F0000001F0000
        001E0000001E0000001D0000001B000000190000002200000027000000240000
        00210000001E0000001A000000150000000E0000000400000000000000000000
        00080000001A0000001B162A346A35657BB7396D86C3386B84C2386C84C3386C
        85C4386C85C4386C85C4386C86C4386D87C4386D87C4386E88C5386E88C5386F
        89C539718BC6366A84C4325F75C6254D61AB060B0F4C000000350000003B0000
        0138000001340000012F000000280000001B0000000800000000000000000000
        0000000000001427304264B3D3FF65B7D8FF57ABD0FF59ACD2FF59ADD3FF59AE
        D5FF59AFD5FF59B0D7FF5AB1D8FF5AB2DAFF5AB3DBFF5AB4DDFF5BB5DEFF5BB5
        DFFF5BB7E1FF5CB8E3FF58AAD1FF71AAC5FF3F809FD200000003000000000000
        0006000000070000000500000003000000010000000000000000000000000000
        00000000000034657C9D68BADBFF69BBDCFF56ACD3FF58AED6FF59AFD7FF59B0
        D8FF59B1D9FF59B2DBFF59B3DCFF5AB4DDFF5AB4DEFF5AB5E0FF5BB6E1FF5BB7
        E3FF5BB8E4FF5BB9E5FF52B6E5FFB9CBD5FF86BAD3FF3081AACC2B627F950406
        0708000000000000000000000000000000000000000000000000000000000000
        000000000000366C86A569BEE1FF69BFE2FF58B1DBFF5AB3DDFF5AB4DEFF5AB5
        DFFF5AB6E0FF5BB7E2FF5BB7E3FF5BB9E5FF5BB9E6FF5CBAE7FF5CBBE7FF5CBB
        E8FF5CBCE9FF5DBDE9FF51B8E7FFB2CBD8FFCBD9E1FFACCFD2FF98CADAFF1739
        4C59000000000000000000000000000000000000000000000000000000000000
        000000000000366E88A36AC2E6FF6AC2E7FF59B7E2FF5BB8E4FF5BB9E6FF5BBA
        E6FF5CBBE7FF5CBBE8FF5CBCE8FF5CBDE9FF5DBDE9FF5DBDEAFF5DBEEAFF5EBE
        EAFF5EBFEBFF5EC0ECFF53BBE9FFADCAD9FFEDEAF0FFFFD491FFCCD1B4FF1742
        5D63000000000000000000000000000000000000000000000000000000000000
        00000000000038718CA36CC6ECFF6BC5ECFF5BBAE8FF5CBCE9FF5DBDE9FF5DBD
        EAFF5DBDEAFF5EBEEAFF5EBFEAFF5EBFEBFF5FC0ECFF5FC1ECFF5FC1ECFF5FC2
        EDFF60C3EDFF60C3EEFF54BEEBFFB5D3E1FFECE6E4FFF6F0ECFFCAE8F6FF163D
        5061000000000000000000000000000000000000000000000000000000000000
        00000000000038728EA36DC8EEFF6CC8EEFF5CBEEAFF5EBFEBFF5EC0EBFF5FC0
        ECFF5FC1ECFF5FC2ECFF60C2EDFF60C3EDFF60C3EDFF60C4EEFF61C5EEFF61C5
        EFFF61C6EFFF62C6F0FF56C1ECFFBAD8E6FFEFE8E6FFEFEAE9FFC7E6F6FF173E
        5161000000000000000000000000000000000000000000000000000000000000
        0000000000003A7490A36ECBF0FF6ECAEFFF5EC1ECFF60C3EDFF60C3EDFF60C4
        EEFF61C4EEFF61C5EEFF61C5EFFF61C6EFFF62C6F0FF62C7F0FF62C8F0FF63C8
        F1FF63C9F1FF63CAF2FF58C4F0FFB2D0DEFFF2EEEBFFEEE8E6FFBDDDEDFF1740
        5361000000000000000000000000000000000000000000000000000000000000
        0000000000003A7691A36FCDF1FF70CDF1FF60C4EEFF61C6EFFF62C6F0FF62C7
        F0FF62C7F0FF62C8F1FF63C9F1FF63C9F2FF63CAF2FF64CAF2FF64CBF3FF64CB
        F3FF65CCF3FF65CDF4FF58C6F1FFC1E0EEFFFBF7F5FFECE9E7FFC7DDE7FF1D41
        5260000000000000000000000000000000000000000000000000000000000000
        0000000000003B7892A371D0F3FF71D0F3FF61C8F1FF63C9F1FF63CAF2FF63CA
        F2FF64CBF2FF64CBF3FF64CCF3FF65CCF4FF65CDF4FF65CEF4FF66CEF5FF66CF
        F5FF66D0F6FF67D1F7FF5BCBF4FFB5D4E1FFEFE9E6FFEBECEBFFE6E8E9FF404B
        505C000000000000000000000000000000000000000000000000000000000000
        0000000000003B7A94A372D3F5FF72D2F5FF63CAF3FF65CCF3FF65CDF4FF65CD
        F4FF66CEF5FF66CEF5FF66CFF5FF67D0F6FF67D0F6FF67D1F6FF67D2F7FF68D2
        F8FF68D2F8FF68D4F9FF5DCDF5FFBFDEEBFFFCFBF9FFF2F3F3FFEAEAEAFF9290
        909C000000000000000000000000000000000000000000000000000000000000
        0000000000003D7C96A373D5F7FF73D5F7FF65CEF5FF66CFF6FF67D0F6FF67D1
        F7FF67D1F7FF67D2F7FF68D3F8FF68D3F8FF69D3F8FF69D4F9FF6AD4F9FF6BD5
        F9FF6BD5F9FF6CD6F9FF60D0F7FFC0DEEAFFF6EEEAFFE6E7E7FFECEDEEFFE1E2
        E2F4131313140000000000000000000000000000000000000000000000000000
        0000000000003E7E97A375D8F9FF74D8F8FF66D2F8FF68D3F8FF68D3F8FF69D4
        F9FF6AD4F9FF6AD5F9FF6BD5F9FF6CD5F9FF6DD5F9FF6DD5F9FF6FD6F9FF6FD7
        F9FF70D7F9FF71D7F9FF6BD7FAFF89CCE6FFEAE9EBFFFDFBF9FFF0F2F2FFEAEB
        EBFF6A6B6B730000000000000000000000000000000000000000000000000000
        0000000000003F8099A376DAFAFF77DAFAFF6AD4F9FF6BD5F9FF6DD6F9FF6DD6
        F9FF6ED6F9FF6FD6F9FF70D7F9FF71D7F9FF71D7F9FF72D8F9FF73D8F9FF74D8
        F9FF74D9F9FF75D9F9FF77DAF9FF6ED8FAFF7FD2EFFFE0E3E5FFE9E9E8FFECED
        EDFFC9CACADA0202020200000000000000000000000000000000000000000000
        000000000000428299A37ADCFAFF7ADBFAFF6FD6F9FF70D7F9FF71D7F9FF72D8
        F9FF73D8F9FF73D8F9FF74D9F9FF75D9F9FF75D9F9FF76DAF9FF77DAF9FF78DA
        F9FF79DBFAFF79DBFAFF7ADBFAFF7CDDFBFF6ED5F7FFCCE3EDFFFDFAFAFFEFF0
        EFFFEAEBEBFF4242424700000000000000000000000000000000000000000000
        000000000000448399A37EDDFAFF7EDDFAFF73D8F9FF75D9F9FF76D9F9FF76DA
        F9FF77DAF9FF78DAF9FF79DBFAFF7ADBFAFF7ADBFAFF7BDBFAFF7CDCFAFF7DDC
        FAFF7DDDFAFF7EDDFAFF7FDDFAFF80DEFBFF76D9F7FFC9E1ECFFEFEAE9FFE8E9
        E9FFECEDEDFFA5A6A6B300000000000000000000000000000000000000000000
        00000000000046849AA381DFFAFF81DEFAFF77DAF9FF79DBFAFF7ADBFAFF7BDB
        FAFF7BDCFAFF7CDCFAFF7DDCFAFF7EDDFAFF7EDDFAFF80DDFAFF80DEFAFF81DE
        FAFF82DEFAFF82DFFAFF83DFFAFF85E0FBFF7ADAF7FFC8DFE9FFF8F5F5FFF8F8
        F8FFEDEEEEFFE7E8E8FC1F1F1F21000000000000000000000000000000000000
        00000000000048859BA385E0FBFF85E0FBFF7CDCFAFF7EDDFAFF7EDDFAFF7FDD
        FAFF80DDFAFF80DEFAFF81DEFAFF82DFFAFF83DFFAFF84DFFAFF84E0FAFF85E0
        FAFF86E0FAFF87E1FAFF88E1FAFF89E2FBFF7FDCF8FFD1E9F2FFF6F2F0FFE6E6
        E6FFE9EAEAFFEBECECFF7E7F7F89000000000000000000000000000000000000
        0000000000004B869BA388E1FBFF88E1FBFF80DEFAFF82DEFAFF83DFFAFF83DF
        FAFF84DFFAFF85E0FAFF85E0FAFF86E0FAFF87E1FAFF88E1FAFF89E1FAFF8AE2
        FBFF8BE2FBFF8CE2FBFF8DE3FBFF8FE4FCFF85E0F9FFC5DCE6FFF2EDECFFF5F5
        F5FFF6F6F6FFEBECECFFCDCDCDDE000000000000000000000000000000000000
        0000000000004D889CA38CE3FBFF8CE3FBFF85E0FAFF86E0FAFF87E0FAFF88E1
        FAFF89E1FAFF8AE1FAFF8BE2FBFF8CE2FBFF8CE3FBFF8EE3FBFF8FE4FBFF91E4
        FBFF91E5FBFF92E6FBFF94E6FBFF96E8FCFF8BE2F9FFD2EAF3FFFCF8F8FFEFEF
        F0FFEAEBEBFFEBECECFFBBBCBCCB000000000000000000000000000000000000
        0000000000004F899CA38FE4FBFF8FE4FBFF8AE2FBFF8BE2FBFF8DE3FBFF8EE3
        FBFF8EE4FBFF90E4FBFF91E5FBFF92E5FBFF93E6FBFF94E7FBFF95E7FBFF96E7
        FCFF98E8FCFF99E9FCFF9AE9FCFF9CEBFCFF92E5FAFFCBE3ECFFF2EDECFFEBEC
        ECFFEBECECFFB3B4B4C22828282B000000000000000000000000000000000000
        000000000000538C9FA594E6FCFF94E6FBFF90E5FBFF92E5FBFF93E6FBFF94E6
        FBFF95E7FBFF96E7FCFF97E8FCFF98E9FCFF9AE9FCFF9BEAFCFF9CEAFCFF9EEA
        FCFF9EEBFCFF9FECFCFFA1ECFCFFA2EDFDFF99E8FBFFCDE3ECFFE8E3E2F39292
        929E353535390000000000000000000000000000000000000000000000000000
        0000000000005387989D99E9FCFF99E9FBFF96E7FCFF98E8FCFF99E9FCFF9AE9
        FCFF9BEAFCFF9DEAFCFF9EEBFCFF9FEBFCFFA0ECFCFFA1ECFDFFA2EDFCFFA4EE
        FDFFA5EEFDFFA6EFFDFFA7EFFDFFAAF1FDFFA3ECFBFF63757C861A19181A0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000001F343C3E96E6FAFFA0ECFDFF9FECFCFFA0ECFDFFA2EDFDFFA3ED
        FDFFA4EEFDFFA5EEFDFFA6EFFDFFA7EFFDFFA8F0FDFFAAF1FDFFABF1FEFFACF2
        FEFFADF2FEFFAEF3FEFFAFF3FEFFAEF3FEFF7DB8C5CB00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000020353C3F598B999D6198A7AB6196A4A86196A4A86296
        A4A86296A4A86396A4A86396A4A86496A4A86497A4A86597A3A86598A4A86698
        A4A86698A4A86698A4A8689AA6AB4E757F84060C0F1100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object BuyingSnabReportButton: TdxBarLargeButton
      Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1091#1087#1082#1077
      Category = 0
      Hint = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1091#1087#1082#1077
      Visible = ivAlways
      OnClick = BuyingSnabReportButtonClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000010101061010108E7C7C7CEE4B4B4BDA010101690000
        0006000000000000000000000000000000000000000000000000000000000000
        00000A0A0A6A636363E66A6A6AE6030303850000001300000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000F0F0F57646464FFB2B2B2FF989898FF272727D60000
        001E000000000000000000000000000000000000000000000000000000000707
        072B525252FEA7A7A7FFA8A8A8FF404040F30000003B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D757A7A7AFF747474FF7D7D7DFF575757DB0000
        0011000000000000000000000000000000000000000000000000000000001818
        1841767676FF767676FF797979FF727272F80303033100000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000023232359606060FF606060FF606060FF464445B30000
        0000000000000000000000000000000000000000000000000000000000001311
        122D606060FD606060FF606060FF565555DE0505050E00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000202020529282980403D3FC9383436AD0A0C0B220000
        0000000000000000000000000000000000000000000000000000000000000000
        0000201D1F5F3E3C3DC43D393BBD141615400000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000C8446FF0C8446FF0C8446FF0C8446FF0C84
        46FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C84
        46FF0C8446FF0C8446FF0C8446FF0C8446FF0000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000001D0E390C8446FF0A8546FF088645FF098546FF0B84
        46FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0C8446FF0B84
        46FF088645FF088645FF098646FF078344FC0024124400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000064C28901B8F54FF60BA90FF9FDCC2FFB1E3CEFFC3EA
        DAFFD4EFE3FFE2F4ECFFEDF8F3FFF4FBF8FFEDF8F3FFE2F4ECFFD3EFE3FFC3EA
        D9FFB0E3CDFF9EDCC2FF8ED7B8FF21955BFF024A258D00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000D7440D332AD76FF57D2A5FF57D2A4FE56D1A2FE55D1
        A3FF56D1A4FF56D1A3FE55D0A2FE54D1A3FF56D1A3FE56D1A3FE55D1A3FF56D1
        A3FE57D1A3FE57D2A5FF57D2A6FF2CA870FF076F3ACE00050209000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000080411138B4FF840BE8AFF49C895FE137345BA0B5F34A9289E
        69EA2B9C68DF0A5C32A41E8656CC35AB79EB0A5E34A70F6B40B23BB881F81279
        48C60A5D34A52D9E6DE04DCD9DFF3EBE88FF0C8448F200110820000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000012C1657168F52FF4BC894FF36B67DFF007C39FF007633FF26A6
        68FF007633FF007633FF159455FF32AF75FF007633FF007633FF31B075FF0076
        33FF007330FF119252FF4AC895FF49C692FF128E4FFD01341964000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000065A30AC209A5CFF40BF86FF53C38FFFB2DFC8FFB2DFC8FF54C1
        8EFFA7DDC4FFB5DFCAFF62C396FF4FC18DFFB3DFCAFFB2DFC9FF52C28EFFA7DD
        C4FFB4DFCAFF6AC59AFF42C088FF44C088FF1E9A5CFF045D30B3000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000001127F47E52EA76AFF38B87AFF1D8250CA0E6237A6127343C038B1
        78FA147243B90E6137A61E8452CC32A66FEB0E6338A80F6439AA27905CD62BA1
        69EF0F6338A90E653AAB30A36CEB40BB80FF2DA96BFF09783FE30007030D0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000001209242B955FFC96D6B6FF72C99DFF007633FF00722EFD007633FF27A8
        67FF007633FF007633FF007633FF2CA96BFF007432FD007533FD007633FF28A6
        67FF007533FD007633FF007633FF3EB97BFF3CB678FF0D8649F7011F103C0000
        0000000000000000000000000000000000000000000000000000000000000000
        0000053F21793EA06EFFC8EBD9FFBFE7D2FFCBE8DAFFCBE7D8FFC0E4D2FF6EC7
        9AFFB5DFCAFFB0DCC6FFA1D9BCFF45B87EFFAFDCC5FFAEDCC4FFA5DABFFF48B9
        7FFFAEDCC4FFAEDCC4FFA3D9BEFF3AB678FF3EB87AFF169152FD034C27920000
        0000000000000000000000000000000000000000000000000000000000000000
        0000166E41C563B58BFFC4EAD7FF70AD8EDB2D6D4AA82E704CAC6DB08EE57BB8
        9AE4206941A913653BAA258655CC3BA670EB116439A911673BAC157142B634AC
        6FF9177947C411653AA9136D40B435AB70F43EB87AFF25A162FF066E39D20001
        0001000000000000000000000000000000000000000000000000000000000004
        0208248C56F18CCDABFFB8E6CFFF007633FF007633FF007633FF61B68BFD0076
        33FF006B25F9006D28F9319A65FC74C19AFE006D28F9007431FA007633FA2BA8
        69FF018241FB007633FF007633FF007633FF3FB97BFF39B375FF0A8144F3000E
        071A000000000000000000000000000000000000000000000000000000000122
        11432C9660FEA1DBBEFFB0E2C9FFC7E6D7FFC6E4D4FFC7E4D5FFB2E0C9FFD1EC
        DDFFC7E4D5FFC7E4D4FF9FD6BAFFA4DABFFFC3E3D2FFC0E3D1FFBFE2D0FF80CE
        A7FF7DC7A2FFB6DFCAFFB2DDC7FF98D7B6FF36B475FF3DB97AFF0F884BF80338
        1D6C000000000000000000000000000000000000000000000000000000000851
        2C993EA36FFFA5DFC2FF82CAA5FF43A472FF47A676FF4CA97AFFAADDC4FF5BB1
        85FF4AA776FF48A572FF6EBD96FF96D3B4FF42A26EFF3FA471FF3DA16CFF6DC1
        96FF6CC095FF349D66FF299B60FF209B5DFF4CBC84FF44BB7FFF1D995BFE0563
        33BE00000000000000000000000000000000000000000000000000000000167B
        48DC59B486FF9CDCBCFF63B98EFF007633FF007633FF007633FF98D5B6FF0076
        33FF007633FF007633FF53AC7FFF91CFAFFF007633FF007633FF007633FF57B2
        84FF6BBE94FF007633FF007633FF007633FF6EC599FF74CDA0FF4FB883FF087E
        42F0000301050000000000000000000000000000000000000000000000001E8F
        54FD71C69CFF86D2ACFFC6E9D8FFD4EFE1FFD5EFE3FFD7F0E4FFAFE1C8FFDCF2
        E7FFDFF3E9FFE2F4EBFFDFF3E9FFC1E8D4FFE1F4EBFFDFF3E9FFDDF2E8FFB4E3
        CBFFAAE0C5FFD5EFE2FFD2EEE0FFCEEDDDFF8BD3AFFF7ECFA6FF7ACEA4FF0D83
        47F4022613490000000000000000000000000000000000000000000000004097
        6ADB68B68EE470B894E376BA97E37BBD9CE382BFA0E388C1A5E38FC4AAE395C6
        ADE39AC7B0E39ECAB4E3A4CBB7E3A7CDBAE3A7CDBAE3A4CCB7E39FCAB5E39CC8
        B2E396C7AEE38FC4AAE38AC1A6E383BFA1E37FBE9EE385CCA9F788D4ADFF2494
        5CF905562DA50000000000000000000000000000000000000000000000000102
        0203020403050204030503040305030403050304040503040405030404050304
        0405030404050304040504040405040504050405040504050405040404050304
        040503040405030404050304040503040405030404054E79649290D7B3FF59B6
        87FF07773EE401150B2901150B2801150B280005020900000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000273D324B9ADAB9FF89D1
        ADFF0A8145F406793DEB06793EEC06793EEC0149238F00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000F17131C94CFB1F29ADA
        BAFF75C09AFF6BB48DFF68B58EFF6FB893FF185B399700000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000304030579A891C4A5DD
        C1FFA6DFC3FFA5DFC3FF9EDDBDFF9CDDBCFF2F58437400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000446153739ACB
        B1E89CD1B6F095CEB1F08ECBADF086C8A7F03C5A4B6B00000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarButton30: TdxBarButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 2
    end
    object cxBarEditItem21: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
    end
    object CB_cash_filter: TcxBarEditItem
      Caption = #1053#1077' '#1086#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1089' '#1088#1072#1079#1085#1080#1094#1077#1081' 0'
      Category = 0
      Hint = #1053#1077' '#1086#1090#1086#1073#1088#1072#1078#1072#1090#1100' '#1089' '#1088#1072#1079#1085#1080#1094#1077#1081' 0'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCheckBoxProperties'
      Properties.ImmediatePost = True
      Properties.NullStyle = nssUnchecked
      Properties.OnEditValueChanged = CB_cash_filterPropertiesEditValueChanged
    end
    object dxBarButton31: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object RefreshCapitaFrameBtn: TdxBarLargeButton
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Category = 0
      Hint = #1054#1073#1085#1086#1074#1080#1090#1100
      Visible = ivAlways
      OnClick = RefreshCapitaFrameBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000040000000500000005000000060000000600000006000000060000
        0005000000060000000500000005000000040000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000010000000F0000001E000000260000012B0000012F0000
        013300000135000001370000013800000139000001390000013A0000013A0000
        00310000002D000001390000013700000135000001330000012F0000012B0000
        00260000001E0000000F00000001000000000000000000000000000000000000
        00000000000000000001000000100000001F000000270000012C000001300000
        0133000001360000013700000139000001390000013A00000039000000351E56
        26BE0F2B147E00000024000000360000013600000133000001300000012C0000
        00270000001F0000001000000001000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        000300000004000000050000000600000006000000070000000500000002287C
        3BDB2D9045FF11351A5F00000000000000030000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000257D
        44CD2D9B53FF2D9B52FF1545266E000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000409060E103822541B603991237E49BF24844CCA2CA2
        5DF72DA760FF2DA760FF2DA65FFF185833860000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000002060409175A3783299F61E92CAE69FF2CAE69FF2CAE69FF2CAE69FF2CAF
        6AFF2CAF6AFF2CAF6AFF2CAF6AFF2CAE69FF1B663F9400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000081F
        142C239860D62AB471FF2AB572FF2AB572FF2AB572FF2AB572FF2AB572FF2AB5
        72FF2AB572FF2AB572FF2AB572FF2AB572FF2AB471FF1C764BA6010403060000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000720152B25AF
        71EE28BB7AFF29BB7AFF28BB7AFF28BB7AFF28BB7AFF28BB7AFF28BB7AFF28BB
        7AFF28BB7AFF28BB7AFF28BB7AFF29BB7AFF26BB79FF2CBC7CFF0E38264C0000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000308060B21A770DE26C0
        81FF26C081FF24BF80FF23BF80FF23BF80FF23BF80FF24BF80FF25C081FF26C0
        81FF26C081FF26C081FF26C081FF22BF7FFF32C387FF39A476D105100B150000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000146E4C911EC184FF1EC1
        84FF25C387FF2CC48AFF30C58BFF33C58CFF31C58CFF2EC48AFF27C388FF21C2
        86FF22C286FF22C286FF1DC184FF32C58CFF369C73C6030D0911000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000416101C1CC087FB2EC790FF3FCA
        96FF3FB88AE736A178CA328B68AE2C7A5B982E7E5F9D359872BE3BAE82DA23C4
        8BFE1DC48AFF1AC389FF32C891FF2F936EB90006040800000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000C63478031CA95FF2E8163A00E31
        253D0007050A00000000000000000000000000000000000000000000000116A4
        76D317C58EFF32CA95FF2A8262A3000100010000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000002010226B185DE1B59446E000000000000
        00000000000000000000000000000000000000000000000000000000000015A5
        7AD230CC99FF2275599200000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000010604071A5F497500000000000000000000
        0000000000000000000000000000000000002D1A04460A06010F0000000029A8
        81D01D6F568A0000000000000000000000000000000000000000000000000000
        0000010100020000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000058330387A55F03FF1D12042B000000000110
        0D14000000000000000000000000000000000000000000000000000000006139
        05952918023E0000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000653C0298A96300FFAA6402FF140D041D000000000000
        0000000000000000000000000000000000000000000000000000462A0369B573
        11FC100B03160000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000002020103734504A7AD6700FFAE6800FFAE6801FF4128055D140C011D0604
        02080000000005040207130C011C241602344B2D036E854F02C3B06B03FF8051
        0BB1000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000805
        010B855003BDB36C00FFB36C00FFB36C00FFB36C00FFB26B00FFB06B01FCA061
        03E4995C02DA9F6003E3B06A01FBB26C01FFB26C00FFB16A00FFBA760BFF2C1C
        053C000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000000000000000000000000000000D0802129259
        02CBB76F00FFB77000FFB77000FFB77000FFB77000FFB77000FFB77000FFB770
        00FFB77000FFB77000FFB77000FFB77000FFB56E00FFBD7708FF885A10B10000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000007040109985D02CFBB73
        00FFBC7400FFBC7400FFBC7400FFBC7400FFBC7400FFBC7400FFBC7400FFBC74
        00FFBC7400FFBC7400FFBC7400FFBA7200FFC07A07FFB77B16E8110B02170000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000000000000A06010DBA7B12EBC37C
        04FFBF7600FFC07800FFC07800FFC07800FFC07800FFC07800FFC07800FFC078
        00FFC07800FFC07700FFBF7600FFC6800BFFBE8017EB2317042E000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000261B082DBE83
        19E7C78006FFC37B00FFC57D00FFC57D00FFC57D00FFC47B00FFC47B00FFC47B
        00FFC47B00FFC88107FFCE8A12FFA26D13C61D12012600000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000001D14
        0423B98018DECC8608FFC87F00FFC98100FFC98100FFCE870AFFCF890CFFD08B
        10FFD28E15FEA67213C94E340860000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000140D0218AE7A19CCD28B0BFFCD8300FFCE8501FF81580F996B4A0E7E4731
        0A541F1503260000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000906020BA17117BBD6900CFFD28800FF130D0217000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000002010003976B14ADDC9611FF2418032A000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000005E420A6C110C0114000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object dxBarSpinEdit1: TdxBarSpinEdit
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
    end
    object cxBarEditItem22: TcxBarEditItem
      Caption = 'New Item'
      Category = 0
      Hint = 'New Item'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxCalcEditProperties'
    end
    object CapitalYearEdit: TcxBarEditItem
      Caption = #1043#1086#1076':'
      Category = 0
      Hint = #1043#1086#1076':'
      Visible = ivAlways
      Width = 100
      PropertiesClassName = 'TcxSpinEditProperties'
      Properties.ImmediatePost = True
    end
    object ClearProfitsSandGraphBtn: TdxBarLargeButton
      Caption = #1063#1080#1089#1090#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' '#1087#1077#1089#1086#1082
      Category = 0
      Hint = #1063#1080#1089#1090#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' '#1087#1077#1089#1086#1082
      Visible = ivAlways
      OnClick = ClearProfitsSandGraphBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000040000000500000006000000060000000600000006000000070000
        0006000000000000000000000006000000040000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000D0000001C00000021000000180000001B0000001F0000
        0022000000240000002500000027000000280000002800000029000000270000
        002C112913700E200F62000000230000002300000028000000320000012F0000
        012B000000260000001E00000011000000020000000000000000000000000000
        0000000000000000000D0000001902020324505050876C6C6DA66D6D6EA86D6D
        6FA86F6F6FA96F6F70AA707071AA6F6F71AA707071AB737173AB777176A62E63
        39C22A893BFF268538FF556859AF726D71A43333346C000000260000012E0000
        012B000000260000001F00000011000000020000000000000000000000000000
        0000000000000000000000000000868687A9CCCCCDFFCECECFFFD1D1D2FFD2D2
        D3FFD4D4D5FFD5D5D6FFD7D7D8FFD7D7D8FFDAD8DBFFE4DCE2FF78B38AFF2794
        46FF2C944BFF259245FF52A46AFFD8D4D7FFD1CFD2FF43434354000000000000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000001D1D1D24CCCCCCFFCDCDCEFFD0D0D1FFD2D2D3FFD4D4
        D4FFD5D5D6FFD6D6D6FFD6D7D7FFDAD8DAFFE5DCE2FF71B68CFF1C9A4BFF2DA0
        58FF2DA058FF2DA058FF1D9B4CFF87BB9BFFE0D5DDFF9FA0A0C4000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A33CECECFFFDADADBFFF8F8F8FFF8F8F8FFF8F8
        F8FFF8F8F9FFF8F8F8FFFBF9FAFFFFFAFDFF7DC99EFF1AA356FF2DAA64FF2DAA
        64FF2CAA64FF2DAA64FF29A962FF2EAA65FFC6D2CCFFB3ADB1CE000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000029292931D4D4D5FFD7D7D8FFDBDBDCFFDDDDDEFFE0E0
        E1FFE1E1E2FFE3E2E4FFEFE6EBFF7AC8A0FF1AAB60FF2BB16CFF2CB16DFF29B0
        6BFF28B06AFF2BB06CFF2DB16DFF1EAE64FF64BE90FFB9AEB5CA000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A31D8D8D9FFDCDCDDFFE4E4E5FFE5E5E6FFE6E6
        E7FFE6E6E7FFEDE8EBFF7DCAA7FF14B067FF29B774FF2AB775FF23B571FF3FBF
        82FF6ED0A1FF26B673FF29B674FF2AB774FF24B571FF6D9E87C6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A31DCDCDDFFE4E4E5FFF7F7F7FFF7F7F8FFF8F8
        F8FFF8F8F8FFFDF9FBFF70D1A6FF1BBA75FF25BC7CFF21BB7AFF2FBF7FFFB4E2
        CEFFFAF7F9FF52C894FF1EBB77FF28BD7DFF26BD7CFF22AB6FE7050D09110000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B2B2B31E0E1E1FFE0E0E1FFDBDCDCFFDCDDDEFFDDDE
        DFFFDEDFDFFFE4E0E2FFD8E0DEFF5AC99BFF1ABE7BFF2AC082FFA3D7C1FFEFE5
        EAFFECE2E7FFBADACDFF25C081FF21C081FF25C082FF23C081FF1C875CB20000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B2B2C31E1E1E2FFE5E6E6FFF3F3F3FFF3F3F3FFF3F3
        F4FFF3F3F3FFF2F3F3FFFBF5F8FFE8F3EFFF83DDB9FFB3E8D3FFFCF5F8FFF4F4
        F4FFF3F3F3FFFAF5F7FF8CDDBDFF15C07FFF20C286FF21C286FF21C286FF1360
        447D000000000000000000000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E2E3E3FFE6E7E7FFEFEFEFFFF0F0F1FFF1F2
        F2FFF2F2F2FFF2F3F3FFF2F3F3FFF7F4F6FFFDF5F9FFFBF5F8FFF3F4F4FFF3F3
        F3FFF2F3F3FFF4F3F4FFEFF0F0FF51CEA0FF12C386FF1EC48BFF1EC48BFF1EC4
        8BFF0E4B35600000000000000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E5E5E6FFE4E4E5FFE2E2E3FFE3E4E4FFE4E5
        E5FFE5E5E5FFE5E6E6FFE6E6E6FFE6E6E6FFE6E6E7FFE6E6E6FFE6E6E6FFE5E6
        E6FFE6E6E6FFE5E6E6FFF0E7EAFFC8E1D8FF2DC993FF12C58CFF1BC690FF18C6
        8FFF18C68FFF0A3C2C4C00000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E5E5E6FFEAEBEBFFF9F9F9FFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFFAFAFAFFF9FAFAFFF9FAFAFFF9FAFAFFF9FAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFF9FAF9FFFFFAFCFFB0E1D1FF1FC993FF10C793FF1CC9
        96FF35CB9AFC0E382B4600000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E6E7E7FFE7E8E8FFE7E8E8FFE9EAEAFFE9EA
        EAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EA
        EAFFE9EAEAFFE9EAEAFFE9EAEAFFEAEAEAFFF9EEF2FF94D6C1F62BC595F5309D
        7AC10E261E2E0000000000000000000000000000000000000000000000000000
        000000000000000000002C2D2D31E7E8E8FFE9EAEAFFECEDEDFFEDEDEEFFEDED
        EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
        EEFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFEBECECFFC1BBBDC9051410180000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31E8E8E9FFEDEDEEFFF8F9F9FFF8F9F9FFF8F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF8F9F9FFF7F8F8FFECEDEDFFBABBBBCA000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEAEAFFE9EAEAFFE3E4E4FFE3E4E4FFE3E4
        E4FFE4E4E5FFE4E4E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5
        E5FFE4E5E5FFE4E4E5FFE3E4E4FFE4E5E5FFEAECECFFBBBCBCCB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31E9EAEBFFEDEDEDFFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFEBECECFFBBBCBCCB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFECEDEDFFEFF0F0FFEFF0F0FFF0F0
        F1FFF0F0F1FFF0F1F1FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1F2FFF2F2F2FFF1F1
        F2FFF1F2F2FFF4F5F5FFF5F5F6FFF3F4F4FFEFF0F0FFBEBEBECC000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFEAEBEBFFE7E8E8FFE8E9E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9EAFFE9E9EAFFE9E9E9FFE9E9E9FFECECEDFFEEEE
        EFFFEEEFEFFFDEDEDFFFD9D9DAFFDADADBFFDADBDBFFB6B7B7D1000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFEEEEEEFFFAFAFAFFFAFAFAFFFAFA
        FBFFFAFAFBFFFAFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF8F8F8FFEEEEEFFFECEC
        EDFFB2B3B4FF8F8F90FF949596FF9B9B9DFF9E9E9FF92F2F2F46000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFEAEBEBFFE5E6E6FFE5E6E6FFE6E6
        E7FFE6E6E7FFE6E7E7FFE7E7E8FFE7E7E8FFE7E7E8FFE8E8E9FFF3F2F3FFC8C8
        C9FF838485FF909192FF99999AFF9C9C9DF92C2C2D4400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31E9EAEAFFECEDEDFFF3F3F3FFF4F4F4FFF4F4
        F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF2F2F3FFF2F2F3FFB7B8
        B9FF88898AFF969899FF9A9A9BF92C2D2D440000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002E2E2E32E9E9EAFFECEEEDFFF3F4F4FFF3F4F4FFF3F4
        F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F5F4FFF3F4F4FFF1F3F2FFBABB
        BCFF8D8E8FFF979899F92B2C2C44000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000010101112E1E2E2F7EAEBEBFFEAEBEBFFEAEBEBFFEAEB
        EBFFEAEBEBFFEBEBECFFEBEBECFFEBEBECFFEBECECFFEBECECFFF1F2F2FFBABB
        BCFF8E8F90F92A2A2A4300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000051515159D5D6D6E9EBECECFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFECECEDFFF0F0F1FFB7B8
        B9F1252525430000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000E0E0E0F2829292C2727272A2727
        272A2727272A2727272A2727272A2727272A2727272A2727272A29292A2D1818
        181A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
    object ClearProfitsFinGraphBtn: TdxBarLargeButton
      Caption = #1063#1080#1089#1090#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' '#1092#1080#1085#1072#1085#1089#1099
      Category = 0
      Hint = #1063#1080#1089#1090#1072#1103' '#1087#1088#1080#1073#1099#1083#1100' '#1092#1080#1085#1072#1085#1089#1099
      Visible = ivAlways
      OnClick = ClearProfitsFinGraphBtnClick
      HotGlyph.Data = {
        36100000424D3610000000000000360000002800000020000000200000000100
        2000000000000010000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000001000000020000
        0003000000040000000500000006000000060000000600000006000000070000
        0006000000000000000000000006000000040000000300000002000000010000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000010000000D0000001C00000021000000180000001B0000001F0000
        0022000000240000002500000027000000280000002800000029000000270000
        002C112913700E200F62000000230000002300000028000000320000012F0000
        012B000000260000001E00000011000000020000000000000000000000000000
        0000000000000000000D0000001902020324505050876C6C6DA66D6D6EA86D6D
        6FA86F6F6FA96F6F70AA707071AA6F6F71AA707071AB737173AB777176A62E63
        39C22A893BFF268538FF556859AF726D71A43333346C000000260000012E0000
        012B000000260000001F00000011000000020000000000000000000000000000
        0000000000000000000000000000868687A9CCCCCDFFCECECFFFD1D1D2FFD2D2
        D3FFD4D4D5FFD5D5D6FFD7D7D8FFD7D7D8FFDAD8DBFFE4DCE2FF78B38AFF2794
        46FF2C944BFF259245FF52A46AFFD8D4D7FFD1CFD2FF43434354000000000000
        0001000000000000000000000000000000000000000000000000000000000000
        000000000000000000001D1D1D24CCCCCCFFCDCDCEFFD0D0D1FFD2D2D3FFD4D4
        D4FFD5D5D6FFD6D6D6FFD6D7D7FFDAD8DAFFE5DCE2FF71B68CFF1C9A4BFF2DA0
        58FF2DA058FF2DA058FF1D9B4CFF87BB9BFFE0D5DDFF9FA0A0C4000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A33CECECFFFDADADBFFF8F8F8FFF8F8F8FFF8F8
        F8FFF8F8F9FFF8F8F8FFFBF9FAFFFFFAFDFF7DC99EFF1AA356FF2DAA64FF2DAA
        64FF2CAA64FF2DAA64FF29A962FF2EAA65FFC6D2CCFFB3ADB1CE000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000029292931D4D4D5FFD7D7D8FFDBDBDCFFDDDDDEFFE0E0
        E1FFE1E1E2FFE3E2E4FFEFE6EBFF7AC8A0FF1AAB60FF2BB16CFF2CB16DFF29B0
        6BFF28B06AFF2BB06CFF2DB16DFF1EAE64FF64BE90FFB9AEB5CA000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A31D8D8D9FFDCDCDDFFE4E4E5FFE5E5E6FFE6E6
        E7FFE6E6E7FFEDE8EBFF7DCAA7FF14B067FF29B774FF2AB775FF23B571FF3FBF
        82FF6ED0A1FF26B673FF29B674FF2AB774FF24B571FF6D9E87C6000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002A2A2A31DCDCDDFFE4E4E5FFF7F7F7FFF7F7F8FFF8F8
        F8FFF8F8F8FFFDF9FBFF70D1A6FF1BBA75FF25BC7CFF21BB7AFF2FBF7FFFB4E2
        CEFFFAF7F9FF52C894FF1EBB77FF28BD7DFF26BD7CFF22AB6FE7050D09110000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B2B2B31E0E1E1FFE0E0E1FFDBDCDCFFDCDDDEFFDDDE
        DFFFDEDFDFFFE4E0E2FFD8E0DEFF5AC99BFF1ABE7BFF2AC082FFA3D7C1FFEFE5
        EAFFECE2E7FFBADACDFF25C081FF21C081FF25C082FF23C081FF1C875CB20000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002B2B2C31E1E1E2FFE5E6E6FFF3F3F3FFF3F3F3FFF3F3
        F4FFF3F3F3FFF2F3F3FFFBF5F8FFE8F3EFFF83DDB9FFB3E8D3FFFCF5F8FFF4F4
        F4FFF3F3F3FFFAF5F7FF8CDDBDFF15C07FFF20C286FF21C286FF21C286FF1360
        447D000000000000000000000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E2E3E3FFE6E7E7FFEFEFEFFFF0F0F1FFF1F2
        F2FFF2F2F2FFF2F3F3FFF2F3F3FFF7F4F6FFFDF5F9FFFBF5F8FFF3F4F4FFF3F3
        F3FFF2F3F3FFF4F3F4FFEFF0F0FF51CEA0FF12C386FF1EC48BFF1EC48BFF1EC4
        8BFF0E4B35600000000000000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E5E5E6FFE4E4E5FFE2E2E3FFE3E4E4FFE4E5
        E5FFE5E5E5FFE5E6E6FFE6E6E6FFE6E6E6FFE6E6E7FFE6E6E6FFE6E6E6FFE5E6
        E6FFE6E6E6FFE5E6E6FFF0E7EAFFC8E1D8FF2DC993FF12C58CFF1BC690FF18C6
        8FFF18C68FFF0A3C2C4C00000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E5E5E6FFEAEBEBFFF9F9F9FFFAFAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFFAFAFAFFF9FAFAFFF9FAFAFFF9FAFAFFF9FAFAFFFAFA
        FAFFFAFAFAFFFAFAFAFFF9FAF9FFFFFAFCFFB0E1D1FF1FC993FF10C793FF1CC9
        96FF35CB9AFC0E382B4600000000000000000000000000000000000000000000
        000000000000000000002C2C2C31E6E7E7FFE7E8E8FFE7E8E8FFE9EAEAFFE9EA
        EAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EAEAFFE9EA
        EAFFE9EAEAFFE9EAEAFFE9EAEAFFEAEAEAFFF9EEF2FF94D6C1F62BC595F5309D
        7AC10E261E2E0000000000000000000000000000000000000000000000000000
        000000000000000000002C2D2D31E7E8E8FFE9EAEAFFECEDEDFFEDEDEEFFEDED
        EDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEEFFEDEDEEFFEDEDEEFFEDEDEEFFEDED
        EEFFEDEDEDFFEDEDEDFFEDEDEDFFECECECFFEBECECFFC1BBBDC9051410180000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31E8E8E9FFEDEDEEFFF8F9F9FFF8F9F9FFF8F9
        F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9F9FFF9F9
        F9FFF9F9F9FFF9F9F9FFF8F9F9FFF7F8F8FFECEDEDFFBABBBBCA000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEAEAFFE9EAEAFFE3E4E4FFE3E4E4FFE3E4
        E4FFE4E4E5FFE4E4E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5E5FFE4E5
        E5FFE4E5E5FFE4E4E5FFE3E4E4FFE4E5E5FFEAECECFFBBBCBCCB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31E9EAEBFFEDEDEDFFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6
        F6FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFEBECECFFBBBCBCCB000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFECEDEDFFEFF0F0FFEFF0F0FFF0F0
        F1FFF0F0F1FFF0F1F1FFF1F1F2FFF1F1F2FFF1F1F2FFF1F1F2FFF2F2F2FFF1F1
        F2FFF1F2F2FFF4F5F5FFF5F5F6FFF3F4F4FFEFF0F0FFBEBEBECC000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFEAEBEBFFE7E8E8FFE8E9E9FFE9E9
        E9FFE9E9E9FFE9E9E9FFE9E9EAFFE9E9EAFFE9E9E9FFE9E9E9FFECECEDFFEEEE
        EFFFEEEFEFFFDEDEDFFFD9D9DAFFDADADBFFDADBDBFFB6B7B7D1000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFEEEEEEFFFAFAFAFFFAFAFAFFFAFA
        FBFFFAFAFBFFFAFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFF8F8F8FFEEEEEFFFECEC
        EDFFB2B3B4FF8F8F90FF949596FF9B9B9DFF9E9E9FF92F2F2F46000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31EAEBEBFFEAEBEBFFE5E6E6FFE5E6E6FFE6E6
        E7FFE6E6E7FFE6E7E7FFE7E7E8FFE7E7E8FFE7E7E8FFE8E8E9FFF3F2F3FFC8C8
        C9FF838485FF909192FF99999AFF9C9C9DF92C2C2D4400000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002D2D2D31E9EAEAFFECEDEDFFF3F3F3FFF4F4F4FFF4F4
        F5FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF2F2F3FFF2F2F3FFB7B8
        B9FF88898AFF969899FF9A9A9BF92C2D2D440000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000002E2E2E32E9E9EAFFECEEEDFFF3F4F4FFF3F4F4FFF3F4
        F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F4F4FFF4F5F4FFF3F4F4FFF1F3F2FFBABB
        BCFF8D8E8FFF979899F92B2C2C44000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000010101112E1E2E2F7EAEBEBFFEAEBEBFFEAEBEBFFEAEB
        EBFFEAEBEBFFEBEBECFFEBEBECFFEBEBECFFEBECECFFEBECECFFF1F2F2FFBABB
        BCFF8E8F90F92A2A2A4300000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000000000000000000051515159D5D6D6E9EBECECFFEBECECFFEBEC
        ECFFEBECECFFEBECECFFECECEDFFECECEDFFECECEDFFECECEDFFF0F0F1FFB7B8
        B9F1252525430000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000E0E0E0F2829292C2727272A2727
        272A2727272A2727272A2727272A2727272A2727272A2727272A29292A2D1818
        181A000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000}
    end
  end
  object MainMenu1: TMainMenu
    Left = 888
    Top = 40
    object N1: TMenuItem
      Caption = #1060#1072#1081#1083
      object N2: TMenuItem
        Caption = #1042#1099#1093#1086#1076
        ShortCut = 32883
        OnClick = N2Click
      end
    end
    object ServiceMenu: TMenuItem
      Caption = #1057#1077#1088#1074#1080#1089
      object N17: TMenuItem
        Action = DoBackUp
      end
    end
    object N13: TMenuItem
      Caption = #1054#1090#1095#1077#1090#1099
      Visible = False
      object N14: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1074#1099#1074#1086#1079#1082#1077
      end
      object N15: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1079#1072#1082#1091#1087#1082#1077
      end
      object N16: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1088#1072#1089#1095#1077#1090#1072#1084' '#1089' '#1087#1077#1088#1077#1074#1086#1079#1095#1080#1082#1072#1084#1080
      end
    end
    object N5: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1086#1095#1085#1080#1082#1080
      object MMOrgListBtn: TMenuItem
        Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
        OnClick = MMOrgListBtnClick
      end
      object MMUsersBtn: TMenuItem
        Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
        OnClick = MMUsersBtnClick
      end
      object N3: TMenuItem
        Caption = #1043#1088#1091#1087#1087#1099' '#1084#1072#1090#1077#1088#1080#1072#1083#1086#1074
        OnClick = N3Click
      end
      object N11: TMenuItem
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099'/'#1091#1089#1083#1091#1075#1080
        Visible = False
        OnClick = N11Click
      end
      object N6: TMenuItem
        Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099' '#1042#1080#1085#1085#1080#1082#1086#1074#1086
        OnClick = N6Click
      end
      object N18: TMenuItem
        Caption = #1055#1077#1088#1077#1074#1086#1079#1095#1080#1082#1080
        OnClick = N18Click
      end
      object N19: TMenuItem
        Caption = #1052#1077#1089#1090#1072' '#1079#1072#1082#1091#1087#1082#1080
        OnClick = N19Click
      end
      object MMUserTypesBtn: TMenuItem
        Caption = #1058#1080#1087#1099' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1077#1081
        OnClick = MMUserTypesBtnClick
      end
    end
    object N4: TMenuItem
      Caption = #1057#1087#1088#1072#1074#1082#1072
      Visible = False
      object N12: TMenuItem
        Caption = #1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      end
    end
  end
  object ActionList1: TActionList
    Images = MainDM.cxImageList1
    Left = 944
    Top = 40
    object UpdateMainTransact: TAction
      Caption = #1048#1079#1084#1077#1085#1080#1090#1100
    end
    object DoBackUp: TAction
      Caption = #1057#1086#1079#1076#1072#1090#1100' '#1088#1077#1079#1077#1088#1074#1085#1091#1102' '#1082#1086#1087#1080#1102' '#1041#1044
      OnExecute = DoBackUpExecute
    end
    object RefreshDataAction: TAction
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 5
      OnExecute = RefreshDataActionExecute
    end
  end
  object cxPropertiesStore1: TcxPropertiesStore
    Components = <
      item
        Component = Owner
        Properties.Strings = (
          'Height'
          'Width')
      end>
    StorageName = 'cxPropertiesStore1'
    StorageType = stRegistry
    Left = 1008
    Top = 40
  end
  object cxPropertiesStore2: TcxPropertiesStore
    Components = <
      item
        Component = CashOrgFrame
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'Anchors'
          'AutoScroll'
          'AutoSize'
          'BiDiMode'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomHint'
          'DockSite'
          'DoubleBuffered'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'HorzScrollBar'
          'Left'
          'Margins'
          'Name'
          'Padding'
          'ParentBackground'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentCustomHint'
          'ParentDoubleBuffered'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'VertScrollBar'
          'Visible'
          'Width')
      end
      item
        Component = CashPlacesFrame
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'Anchors'
          'AutoScroll'
          'AutoSize'
          'BiDiMode'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomHint'
          'DockSite'
          'DoubleBuffered'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'HorzScrollBar'
          'Left'
          'Margins'
          'Name'
          'Padding'
          'ParentBackground'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentCustomHint'
          'ParentDoubleBuffered'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'VertScrollBar'
          'Visible'
          'Width')
      end
      item
        Component = CashTranspFrame
        Properties.Strings = (
          'Align'
          'AlignWithMargins'
          'Anchors'
          'AutoScroll'
          'AutoSize'
          'BiDiMode'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomHint'
          'DockSite'
          'DoubleBuffered'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'HorzScrollBar'
          'Left'
          'Margins'
          'Name'
          'Padding'
          'ParentBackground'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentCustomHint'
          'ParentDoubleBuffered'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'VertScrollBar'
          'Visible'
          'Width')
      end>
    StorageName = 'cxPropertiesStore2'
    StorageType = stRegistry
    Left = 520
    Top = 224
  end
end
