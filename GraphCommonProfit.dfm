object CommonProfitGraphForm: TCommonProfitGraphForm
  Left = 0
  Top = 0
  Width = 586
  Height = 402
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
    Width = 586
    Height = 376
    LeftWall.Visible = False
    Legend.Visible = False
    Title.Font.Color = clBlack
    Title.Font.Height = 20
    Title.Font.Name = 'Times New Roman'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      #1054#1073#1097#1072#1103' '#1074#1099#1088#1091#1095#1082#1072)
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
    TabOrder = 4
    AutoSize = True
    PrintMargins = (
      5
      15
      5
      15)
    ColorPaletteIndex = 9
    object Series3: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Style = smsValue
      Marks.Visible = False
      SeriesColor = 4195946
      Title = 'BarYear-2'
      DepthPercent = 40
      Gradient.Direction = gdTopBottom
      Shadow.Color = 8618883
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series4: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Style = smsValue
      Marks.Visible = True
      Title = 'BarYear-1'
      DepthPercent = 40
      Gradient.Direction = gdTopBottom
      Shadow.Color = 8553090
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
    object Series1: TBarSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Shadow.Color = 8553090
      Marks.Style = smsValue
      Marks.Visible = True
      SeriesColor = 1138687
      Title = 'BarCurentYear'
      DepthPercent = 40
      Gradient.Direction = gdTopBottom
      Shadow.Color = 8487297
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Bar'
      YValues.Order = loNone
    end
  end
  object ChartQR: TADOQuery
    Connection = MainDM.DBConnect
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select Month,Year,sum(SumProfit) as SumProfit'
      'from'
      
        '(Select ProfitMonth as Month,  ProfitYear as Year, sum(ProfitVal' +
        'ue) as SumProfit'
      'from Profit'
      'where ProfitYear >= Year(getdate())-2'
      'group by ProfitMonth ,ProfitYear'
      'UNION ALL'
      
        'Select Month(FinDate) as Month,  Year(FinDate) as Year, Sum(FinV' +
        'alue) as SumProfit '
      'from finances'
      'where Year(FinDate) >= Year(getdate())-2'
      'group by Month(FinDate),Year(FinDate)) a'
      'group by Month,Year'
      '')
    Left = 512
    Top = 192
    object ChartQRMonth: TIntegerField
      FieldName = 'Month'
      ReadOnly = True
    end
    object ChartQRSumProfit: TFloatField
      FieldName = 'SumProfit'
      ReadOnly = True
    end
    object ChartQRYear: TIntegerField
      FieldName = 'Year'
      ReadOnly = True
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
    Left = 480
    Top = 40
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
end
