object ExpensesGraphForm: TExpensesGraphForm
  Left = 0
  Top = 0
  Width = 680
  Height = 376
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  ParentFont = False
  TabOrder = 0
  object Chart1: TChart
    Left = 0
    Top = 26
    Width = 680
    Height = 350
    LeftWall.Visible = False
    Legend.Visible = False
    Title.Font.Color = clBlack
    Title.Font.Height = 20
    Title.Font.Name = 'Times New Roman'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      #1056#1072#1089#1093#1086#1076#1099)
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
    LeftAxis.Inverted = True
    RightAxis.Automatic = False
    RightAxis.AutomaticMaximum = False
    RightAxis.AutomaticMinimum = False
    View3DWalls = False
    Align = alClient
    TabOrder = 4
    AutoSize = True
    PrintMargins = (
      5
      15
      5
      15)
    ColorPaletteIndex = 9
    object Series3: TBarSeries
      HorizAxis = aTopAxis
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Style = smsValue
      Marks.Visible = False
      SeriesColor = 4195946
      Title = '2010Bar'
      BarWidthPercent = 50
      DepthPercent = 30
      Gradient.Direction = gdTopBottom
      Shadow.Color = 8684676
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series4: TBarSeries
      HorizAxis = aTopAxis
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Style = smsValue
      Marks.Visible = True
      Title = '2011Bar'
      BarWidthPercent = 50
      DepthPercent = 30
      Gradient.Direction = gdTopBottom
      Shadow.Color = 8684676
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series1: TBarSeries
      HorizAxis = aTopAxis
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 1138687
      Title = '2012Bar'
      BarWidthPercent = 50
      DepthPercent = 30
      Gradient.Direction = gdTopBottom
      Shadow.Color = 8618883
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series2: TBarSeries
      HorizAxis = aTopAxis
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Style = smsValue
      Marks.Visible = False
      Title = '2013Bar'
      BarWidthPercent = 50
      DepthPercent = 30
      Gradient.Direction = gdTopBottom
      Shadow.Color = 8816262
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series5: TBarSeries
      HorizAxis = aTopAxis
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8618883
      Marks.Style = smsValue
      Marks.Visible = False
      SeriesColor = 726209
      Title = '2014Bar'
      BarWidthPercent = 50
      DepthPercent = 30
      Gradient.Direction = gdTopBottom
      Shadow.Color = 8684676
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object BarManager: TdxBarManager
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
    Left = 632
    Top = 96
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
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object dxBarButton1: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
      OnClick = dxBarButton1Click
    end
    object dxBarButton2: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 3
    end
    object dxBarButton3: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      ImageIndex = 0
    end
    object dxBarButton4: TdxBarButton
      Caption = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Category = 0
      Hint = #1044#1091#1073#1083#1080#1088#1086#1074#1072#1090#1100
      Visible = ivAlways
      ImageIndex = 1
    end
    object dxBarButton5: TdxBarButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivNever
      ImageIndex = 4
    end
  end
  object ChartQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Month,Year,sum(SumExpense) as SumExpense'
      'from'
      
        '(Select Month(ExpenseDate) as Month, Year(ExpenseDate) as Year, ' +
        ' Sum(ExpenseValue) as SumExpense '
      'from Expenses'
      'where Year(ExpenseDate) >= Year(getdate())-2'
      'and isnull(ClearProfitException,0) = 0'
      'group by Month(ExpenseDate),Year(ExpenseDate)'
      'UNION ALL'
      
        'Select Month(FinExpDate) as Month,  Year(FinExpDate) as Year, Su' +
        'm(FinExpValue) as SumExpense '
      'from FinExpenses'
      'where Year(FinExpDate) >= Year(getdate())-2'
      'and isnull(ClearProfitException,0) = 0'
      'group by Month(FinExpDate),Year(FinExpDate)'
      'UNION ALL'
      
        'Select Month(SalaryDate) as Month,  Year(SalaryDate) as Year, Su' +
        'm(SalaryValue) as SumExpense '
      'from Salary'
      'where Year(SalaryDate) >= Year(getdate())-2'
      'and isnull(ClearProfitException,0) = 0'
      'group by Month(SalaryDate),Year(SalaryDate)'
      ') a'
      'group by Month,Year')
    Left = 632
    Top = 152
    object ChartQRMonth: TIntegerField
      FieldName = 'Month'
      ReadOnly = True
    end
    object ChartQRYear: TIntegerField
      FieldName = 'Year'
      ReadOnly = True
    end
    object ChartQRSumExpense: TFloatField
      FieldName = 'SumExpense'
      ReadOnly = True
    end
  end
end
