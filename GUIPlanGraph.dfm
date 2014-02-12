object PlanGraphForm: TPlanGraphForm
  Left = 0
  Top = 0
  Caption = #1055#1088#1086#1089#1084#1086#1090#1088' '#1075#1088#1072#1092#1080#1082#1072
  ClientHeight = 319
  ClientWidth = 703
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PlanChart: TChart
    Left = 0
    Top = 26
    Width = 703
    Height = 293
    LeftWall.Visible = False
    Legend.Visible = False
    Title.Font.Color = clBlack
    Title.Font.Height = 20
    Title.Font.Name = 'Times New Roman'
    Title.Font.Style = [fsBold]
    Title.Text.Strings = (
      'TChart')
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
    PrintMargins = (
      5
      15
      5
      15)
    ColorPaletteIndex = 9
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
    LookAndFeel.Kind = lfFlat
    LookAndFeel.SkinName = 'Black'
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 416
    Top = 264
    DockControlHeights = (
      0
      0
      26
      0)
    object dxBarManager1Bar1: TdxBar
      Caption = 'PrintBar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 540
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'PrintButton'
        end>
      OneOnRow = True
      Row = 0
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object PrintButton: TdxBarButton
      Caption = #1055#1077#1095#1072#1090#1100
      Category = 0
      Hint = #1055#1077#1095#1072#1090#1100
      Visible = ivAlways
    end
  end
  object CommonPlan: TADOQuery
    Connection = MainDM.DBConnect
    Parameters = <
      item
        Name = 'id'
        DataType = ftInteger
        Size = -1
        Value = Null
      end
      item
        Name = 'id1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select PlanValue,sum(CommonProfit) as CurrentCost '
      'from Plans left join MainTransactions on'
      '(Plans.PlanMonth=Month(MainTransactions.TransactDate)'
      'and Plans.PlanYear=YEAR(MainTransactions.TransactDate))'
      'where Plans.PlanType=1'
      'and PlanMonth = (Select PlanMonth from Plans where id = :id)'
      'and PlanYear = (Select PlanYear from Plans where id = :id1)'
      'group by PlanValue')
    Left = 528
    Top = 32
  end
  object PrivatePlan: TADOQuery
    Connection = MainDM.DBConnect
    Parameters = <
      item
        Name = 'id'
        Size = -1
        Value = Null
      end
      item
        Name = 'id1'
        Size = -1
        Value = Null
      end>
    SQL.Strings = (
      'Select PlanOwner,PlanValue,sum(CommonProfitMng) as CurrentCost'
      'from Plans left join MainTransactions on'
      '(Plans.PlanMonth=Month(MainTransactions.TransactDate)'
      'and Plans.PlanYear=YEAR(MainTransactions.TransactDate)'
      'and Plans.PlanOwner=MainTransactions.ManagerID)'
      'where Plans.PlanType=2'
      'and PlanMonth = (Select PlanMonth from Plans where id = :id)'
      'and PlanYear = (Select PlanYear from Plans where id = :id1)'
      
        'group by PlanValue,Plans.ID,PlanMonth,PlanOwner,PlanYear,PlanTyp' +
        'e'
      'order by PlanYear desc,PlanMonth desc')
    Left = 592
    Top = 32
  end
end
