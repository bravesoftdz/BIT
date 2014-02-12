object PlanFrame: TPlanFrame
  Left = 0
  Top = 0
  Width = 808
  Height = 408
  TabOrder = 0
  object cxGrid2: TcxGrid
    Left = 0
    Top = 26
    Width = 435
    Height = 382
    Align = alLeft
    TabOrder = 0
    LookAndFeel.Kind = lfOffice11
    LookAndFeel.NativeStyle = False
    LookAndFeel.SkinName = 'Black'
    object PlansView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      object PlansViewID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
        Visible = False
      end
      object PlansViewPlanMonth: TcxGridDBColumn
        Caption = #1052#1077#1089#1103#1094
        DataBinding.FieldName = 'PlanMonth'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'COLUMN1'
        Properties.ListColumns = <
          item
            FieldName = 'COLUMN2'
          end>
        HeaderAlignmentHorz = taCenter
        Options.Filtering = False
      end
      object PlansViewPlanYear: TcxGridDBColumn
        Caption = #1043#1086#1076
        DataBinding.FieldName = 'PlanYear'
        HeaderAlignmentHorz = taCenter
      end
      object PlansViewPlanOwner: TcxGridDBColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        DataBinding.FieldName = 'PlanOwner'
        RepositoryItem = MainDM.UsersRepository
        HeaderAlignmentHorz = taCenter
      end
      object PlansViewPlanType: TcxGridDBColumn
        Caption = #1058#1080#1087
        DataBinding.FieldName = 'PlanType'
        PropertiesClassName = 'TcxLookupComboBoxProperties'
        Properties.KeyFieldNames = 'COLUMN1'
        Properties.ListColumns = <
          item
            FieldName = 'COLUMN2'
          end>
        HeaderAlignmentHorz = taCenter
      end
      object PlansViewPlanValue: TcxGridDBColumn
        Caption = #1055#1083#1072#1085
        DataBinding.FieldName = 'PlanValue'
        HeaderAlignmentHorz = taCenter
        Width = 56
      end
      object PlansViewCurrentCost: TcxGridDBColumn
        Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1086
        DataBinding.FieldName = 'CurrentCost'
        HeaderAlignmentHorz = taCenter
      end
      object PlansViewCurrentPercent: TcxGridDBColumn
        Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1086' %'
        DataBinding.FieldName = 'CurrentPercent'
        HeaderAlignmentHorz = taCenter
      end
    end
    object cxGrid2DBTableView1: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid2DBTableView1ID: TcxGridDBColumn
        DataBinding.FieldName = 'ID'
      end
      object cxGrid2DBTableView1PlanMonth: TcxGridDBColumn
        DataBinding.FieldName = 'PlanMonth'
      end
      object cxGrid2DBTableView1PlanOwner: TcxGridDBColumn
        DataBinding.FieldName = 'PlanOwner'
      end
      object cxGrid2DBTableView1PlanYear: TcxGridDBColumn
        DataBinding.FieldName = 'PlanYear'
      end
      object cxGrid2DBTableView1PlanType: TcxGridDBColumn
        DataBinding.FieldName = 'PlanType'
      end
      object cxGrid2DBTableView1PlanValue: TcxGridDBColumn
        DataBinding.FieldName = 'PlanValue'
      end
      object cxGrid2DBTableView1CurrentCost: TcxGridDBColumn
        DataBinding.FieldName = 'CurrentCost'
      end
      object cxGrid2DBTableView1CurrentPercent: TcxGridDBColumn
        DataBinding.FieldName = 'CurrentPercent'
      end
    end
    object PlanView: TcxGridTableView
      PopupMenu = PM
      NavigatorButtons.ConfirmDelete = False
      OnCellDblClick = PlanViewCellDblClick
      OnFocusedRecordChanged = PlanViewFocusedRecordChanged
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsView.CellEndEllipsis = True
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      OptionsView.HeaderAutoHeight = True
      Styles.OnGetContentStyle = PlanViewStylesGetContentStyle
      object PlanViewID: TcxGridColumn
        Caption = 'ID'
        Visible = False
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object PlanViewMonth: TcxGridColumn
        Caption = #1052#1077#1089#1103#1094
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object PlanViewYear: TcxGridColumn
        Caption = #1043#1086#1076
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object PlanViewManager: TcxGridColumn
        Caption = #1052#1077#1085#1077#1076#1078#1077#1088
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object PlanViewType: TcxGridColumn
        Caption = #1058#1080#1087
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object PlanViewPlanValue: TcxGridColumn
        Caption = #1055#1083#1072#1085
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object PlanViewDoneValue: TcxGridColumn
        Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1086
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
      object PlanViewPercentDone: TcxGridColumn
        Caption = #1042#1099#1087#1086#1083#1085#1077#1085#1086', %'
        HeaderAlignmentHorz = taCenter
        HeaderAlignmentVert = vaCenter
        Options.Editing = False
      end
    end
    object cxGrid2Level2: TcxGridLevel
      GridView = PlanView
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 435
    Top = 26
    Width = 8
    Height = 382
    Control = cxGrid2
  end
  object Chart1: TChart
    Left = 443
    Top = 26
    Width = 365
    Height = 382
    LeftWall.Visible = False
    Legend.Visible = False
    Title.Font.Color = clBlack
    Title.Font.Height = 20
    Title.Font.Name = 'Times New Roman'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'TChart')
    BottomAxis.LabelStyle = talText
    Chart3DPercent = 1
    DepthAxis.Automatic = False
    DepthAxis.AutomaticMaximum = False
    DepthAxis.AutomaticMinimum = False
    DepthAxis.Maximum = 0.439999999999999900
    DepthAxis.Minimum = -0.560000000000000100
    DepthTopAxis.Automatic = False
    DepthTopAxis.AutomaticMaximum = False
    DepthTopAxis.AutomaticMinimum = False
    DepthTopAxis.Maximum = 0.439999999999999900
    DepthTopAxis.Minimum = -0.560000000000000100
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    View3DWalls = False
    Align = alClient
    TabOrder = 6
    AutoSize = True
    PrintMargins = (
      26
      15
      26
      15)
    ColorPaletteIndex = 9
    object Series3: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 5125977
      Title = 'PlanBar'
      BarStyle = bsRectGradient
      Gradient.Direction = gdTopBottom
      Gradient.StartColor = 9601460
      Shadow.Color = 8882055
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      Left = 16
      Top = 16
    end
    object Series4: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 50787
      Title = 'CurrentBar'
      BarStyle = bsRectGradient
      Gradient.Direction = gdTopBottom
      Gradient.StartColor = 6029245
      Shadow.Color = 8750469
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
      Left = 40
      Top = 48
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
    LookAndFeel.SkinName = 'Black'
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 368
    Top = 128
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'PlansEditBar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 818
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
          ItemName = 'dxBarButton5'
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
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Category = 0
      Hint = #1059#1076#1072#1083#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 3
      OnClick = dxBarButton2Click
    end
    object dxBarButton3: TdxBarButton
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      Category = 0
      Hint = #1042#1089#1090#1072#1074#1080#1090#1100
      Visible = ivAlways
      ImageIndex = 0
      OnClick = InsertPlanExecute
    end
    object dxBarButton4: TdxBarButton
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
      OnClick = dxBarButton4Click
    end
    object dxBarButton5: TdxBarButton
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Category = 0
      Hint = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Visible = ivNever
      ImageIndex = 4
      OnClick = dxBarButton5Click
    end
  end
  object ActionList1: TActionList
    Images = MainDM.cxImageList1
    Left = 368
    Top = 184
    object InsertPlan: TAction
      Category = 'Bar'
      Caption = #1042#1089#1090#1072#1074#1080#1090#1100
      ImageIndex = 0
      OnExecute = InsertPlanExecute
    end
    object UpdateData: TAction
      Category = 'Bar'
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100' '#1076#1072#1085#1085#1099#1077
      ImageIndex = 2
    end
    object CopyPlan: TAction
      Category = 'Bar'
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      ImageIndex = 1
    end
    object DeletePlan: TAction
      Category = 'Bar'
      Caption = #1059#1076#1072#1083#1080#1090#1100
      ImageIndex = 3
    end
    object AppendRecord: TAction
      Category = 'Bar'
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      ImageIndex = 4
    end
  end
  object PM: TdxBarPopupMenu
    BarManager = dxBarManager1
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
        ItemName = 'dxBarButton5'
      end
      item
        Visible = True
        ItemName = 'dxBarButton2'
      end>
    UseOwnFont = False
    Left = 368
    Top = 240
  end
  object ManagerPlansQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorLocation = clUseServer
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
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
      end>
    SQL.Strings = (
      'Select ROW_NUMBER() OVER(ORDER BY PlanOwner) as Row,'
      
        '    PlanOwner,u.userfio,sum(PlanValue) as PlanValue,sum(DoneValu' +
        'e) as DoneValue'
      'from'
      '(Select PlanOwner,'
      '        sum(PlanValue) as PlanValue,'
      '        (select isnull(SUM(CommonProfit),0)'
      '         from MainTransactions'
      
        '         where Month(MainTransactions.TransactDate) = p.planMont' +
        'h'
      '         and YEAR(MainTransactions.TransactDate) = p.PlanYear'
      '         and ManagerID = p.PlanOwner'
      '         and OrganizationID<>1'
      
        '         and TransporterID not in (Select id from Transporters w' +
        'here lower(TransporterName) like '#39#1089#1072#1084#1086#1074#1099#1074#1086#1079#39')) as DoneValue     '
      'from Plans p'
      
        'where CONVERT(datetime, '#39'01.'#39'+CONVERT(char,p.PlanMonth)+'#39'.'#39'+CONV' +
        'ERT(char,p.PlanYear) , 104) between :bd and :ed'
      'and p.PlanType=2'
      'group by PlanOwner,planMonth,PlanYear) t, users u'
      'where u.id= t.PlanOwner'
      'group by PlanOwner,u.userfio')
    Left = 40
    Top = 104
    object ManagerPlansPlanOwner: TIntegerField
      FieldName = 'PlanOwner'
    end
    object ManagerPlansPlanValue: TBCDField
      FieldName = 'PlanValue'
      Precision = 19
    end
    object ManagerPlansDoneValue: TFloatField
      FieldName = 'DoneValue'
      ReadOnly = True
    end
    object ManagerPlansQRuserfio: TWideStringField
      FieldName = 'userfio'
      Size = 300
    end
    object ManagerPlansQRRow: TLargeintField
      FieldName = 'Row'
      ReadOnly = True
    end
  end
  object CommonPlanQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorLocation = clUseServer
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <
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
        Name = 'bd'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ed'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'select sum(PlanValue) as PlanValue, sum(DoneValue) as DoneValue'
      'from '
      '(Select PlanMonth as m,PlanYear as y,'
      '         sum(PlanValue) as PlanValue, 0 as DoneValue'
      'from Plans p'
      'where '
      'p.PlanType=1'
      
        'and CONVERT(datetime, '#39'01.'#39'+CONVERT(char,p.PlanMonth)+'#39'.'#39'+CONVER' +
        'T(char,p.PlanYear) , 104) between :bd1 and :ed1'
      'group by p.PlanMonth, p.PlanYear'
      'union all'
      'select Month(TransactDate) as m,YEAR(TransactDate) as y,'
      '        0 as PlanValue, SUM(CommonProfit) as DoneValue'
      ' from MainTransactions '
      'where TransactDate between :bd and :ed'
      'and OrganizationID<>1'
      
        'and TransporterID not in (Select id from Transporters where lowe' +
        'r(TransporterName) like '#39#1089#1072#1084#1086#1074#1099#1074#1086#1079#39')'
      'GROUP by Month(TransactDate),YEAR(TransactDate)) t')
    Left = 40
    Top = 176
    object CommonPlanQRPlanValue: TBCDField
      FieldName = 'PlanValue'
      ReadOnly = True
      Precision = 19
    end
    object CommonPlanQRDoneValue: TFloatField
      FieldName = 'DoneValue'
      ReadOnly = True
    end
  end
  object old: TADOQuery
    Connection = MainDM.DBConnect
    CursorLocation = clUseServer
    CursorType = ctOpenForwardOnly
    LockType = ltReadOnly
    Parameters = <
      item
        Name = 'bd'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end
      item
        Name = 'ed'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 3
        Precision = 23
        Size = 16
        Value = Null
      end>
    SQL.Strings = (
      'Select ROW_NUMBER() OVER(ORDER BY PlanOwner) as Row,'
      '    PlanOwner,u.userfio,PlanValue,DoneValue'
      'from'
      
        '(Select PlanOwner,sum(PlanValue) as PlanValue,isnull(SUM(CommonP' +
        'rofit),0) as DoneValue     '
      'from Plans left join MainTransactions on'
      '(Plans.PlanMonth=Month(MainTransactions.TransactDate)'
      'and Plans.PlanYear=YEAR(MainTransactions.TransactDate)'
      'and Plans.PlanOwner=MainTransactions.ManagerID)'
      'where MainTransactions.TransactDate between :bd and :ed'
      'and Plans.PlanType=2'
      'group by PlanOwner) t, users u'
      'where u.id= t.PlanOwner')
    Left = 200
    Top = 104
    object IntegerField1: TIntegerField
      FieldName = 'PlanOwner'
    end
    object BCDField1: TBCDField
      FieldName = 'PlanValue'
      Precision = 19
    end
    object FloatField1: TFloatField
      FieldName = 'DoneValue'
      ReadOnly = True
    end
    object WideStringField1: TWideStringField
      FieldName = 'userfio'
      Size = 300
    end
    object LargeintField1: TLargeintField
      FieldName = 'Row'
      ReadOnly = True
    end
  end
end
