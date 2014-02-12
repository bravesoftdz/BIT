object CapitalFrame: TCapitalFrame
  Left = 0
  Top = 0
  Width = 800
  Height = 423
  TabOrder = 0
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 800
    Height = 223
    Align = alTop
    TabOrder = 0
    LookAndFeel.SkinName = 'Black'
    object CapitalView: TcxGridDBTableView
      NavigatorButtons.ConfirmDelete = False
      FilterBox.Visible = fvNever
      DataController.DataSource = MainDM.CapitalDS
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <
        item
          Kind = skSum
          FieldName = 'InvExpValue'
        end>
      DataController.Summary.SummaryGroups = <>
      OptionsBehavior.CellHints = True
      OptionsData.Deleting = False
      OptionsData.Inserting = False
      OptionsView.CellEndEllipsis = True
      OptionsView.NoDataToDisplayInfoText = #1053#1077#1090' '#1076#1072#1085#1085#1099#1093
      OptionsView.ColumnAutoWidth = True
      OptionsView.GroupByBox = False
      Styles.OnGetContentStyle = VinnikViewStylesGetContentStyle
      object CapitalViewname: TcxGridDBColumn
        DataBinding.FieldName = 'name'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewJan: TcxGridDBColumn
        DataBinding.FieldName = 'Jan'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewFeb: TcxGridDBColumn
        DataBinding.FieldName = 'Feb'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewMar: TcxGridDBColumn
        DataBinding.FieldName = 'Mar'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewApr: TcxGridDBColumn
        DataBinding.FieldName = 'Apr'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewMay: TcxGridDBColumn
        DataBinding.FieldName = 'May'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewJun: TcxGridDBColumn
        DataBinding.FieldName = 'Jun'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewJul: TcxGridDBColumn
        DataBinding.FieldName = 'Jul'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewAug: TcxGridDBColumn
        DataBinding.FieldName = 'Aug'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewSep: TcxGridDBColumn
        DataBinding.FieldName = 'Sep'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewOct: TcxGridDBColumn
        DataBinding.FieldName = 'Oct'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewNov: TcxGridDBColumn
        DataBinding.FieldName = 'Nov'
        Options.Filtering = False
        Options.Sorting = False
      end
      object CapitalViewDcm: TcxGridDBColumn
        DataBinding.FieldName = 'Dcm'
        Options.Filtering = False
        Options.Sorting = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = CapitalView
    end
  end
  object cxSplitter1: TcxSplitter
    Left = 0
    Top = 223
    Width = 800
    Height = 8
    HotZoneClassName = 'TcxXPTaskBarStyle'
    AlignSplitter = salTop
    Control = cxGrid1
    ExplicitWidth = 8
  end
  object Chart1: TChart
    Left = 0
    Top = 231
    Width = 800
    Height = 192
    LeftWall.Visible = False
    Legend.Visible = False
    Title.Font.Color = clBlack
    Title.Font.Height = 20
    Title.Font.Name = 'Times New Roman'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      '')
    Title.Visible = False
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
    View3D = False
    View3DWalls = False
    Align = alClient
    TabOrder = 2
    AutoSize = True
    PrintMargins = (
      5
      15
      5
      15)
    ColorPaletteIndex = 8
    object Series1: TLineSeries
      ColorEachPoint = True
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Callout.Length = 20
      Marks.Shadow.Color = 8553090
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 1138687
      Title = 'BarCurentYear'
      Brush.Color = clWhite
      Brush.Style = bsVertical
      LineBrush = bsVertical
      LinePen.Color = 1138687
      OutLine.Visible = True
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Active = False
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object ChartQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    ExecuteOptions = [eoAsyncFetch]
    Parameters = <
      item
        Name = 'Year'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Select Month,  Year, Sum(sand+finances-expenses) as SumProfit '
      'from Balance'
      'where year = :year'
      'group by month,year')
    Left = 24
    Top = 192
    object ChartQRMonth: TIntegerField
      FieldName = 'Month'
    end
    object ChartQRYear: TIntegerField
      FieldName = 'Year'
    end
    object ChartQRSumProfit: TFMTBCDField
      FieldName = 'SumProfit'
      ReadOnly = True
      Precision = 38
      Size = 2
    end
  end
  object UpdateQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'sand'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 15
        Size = 19
        Value = Null
      end
      item
        Name = 'finances'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 15
        Size = 19
        Value = Null
      end
      item
        Name = 'expenses'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 15
        Size = 19
        Value = Null
      end
      item
        Name = 'Month'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Year'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Update Balance  set'
      'Sand = :sand,'
      'Finances = :finances,'
      'Expenses = :expenses'
      'where Month=:Month and Year=:Year')
    Left = 600
    Top = 168
  end
  object InsertQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'Month'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Year'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'Sand'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 15
        Size = 19
        Value = Null
      end
      item
        Name = 'Finances'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 15
        Size = 19
        Value = Null
      end
      item
        Name = 'Expenses'
        Attributes = [paSigned, paNullable]
        DataType = ftBCD
        NumericScale = 2
        Precision = 15
        Size = 19
        Value = Null
      end>
    SQL.Strings = (
      'Insert into Balance (Month,Year,Sand,Finances,Expenses,status) '
      'values (:Month,:Year,:Sand,:Finances,:Expenses,0)'
      '')
    Left = 600
    Top = 216
  end
  object DateQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select Month(TransactDate) as Month,Year(TransactDate) as Year'
      'from MainTransactions'
      'union'
      'select Month(FinDate) as Month,Year(FinDate) as Year'
      'from Finances'
      'union'
      'select Month(InvExpDate) as Month,Year(InvExpDate) as Year'
      'from InvestExpenses'
      'union'
      'select Month(FinExpDate) as Month,Year(FinExpDate) as Year'
      'from FinExpenses'
      'union'
      'select Month(ExpenseDate) as Month,Year(ExpenseDate) as Year'
      'from Expenses'
      'union'
      'select Month(SalaryDate) as Month,Year(SalaryDate) as Year'
      'from Salary')
    Left = 600
    Top = 120
    object IntegerField1: TIntegerField
      FieldName = 'Month'
      ReadOnly = True
    end
    object IntegerField2: TIntegerField
      FieldName = 'Year'
      ReadOnly = True
    end
  end
  object DeleteQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ProfitMonth'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end
      item
        Name = 'ProfitYear'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'Delete from balance'
      'where status <> 1')
    Left = 600
    Top = 288
  end
end
