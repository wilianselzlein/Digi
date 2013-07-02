object FMenu: TFMenu
  Left = 0
  Top = 0
  Caption = 'FMenu'
  ClientHeight = 422
  ClientWidth = 731
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter
    Left = 0
    Top = 242
    Width = 731
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    OnMoved = Splitter1Moved
    ExplicitLeft = 25
    ExplicitTop = 211
    ExplicitWidth = 696
  end
  object ToolBarMenu: TToolBar
    Left = 0
    Top = 0
    Width = 731
    Height = 38
    AutoSize = True
    ButtonHeight = 38
    ButtonWidth = 117
    Caption = 'ToolBarMenu'
    DrawingStyle = dsGradient
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    GradientEndColor = clWhite
    GradientStartColor = clMoneyGreen
    HotTrackColor = clMoneyGreen
    Images = Dm.ImageList2
    List = True
    ParentFont = False
    ParentShowHint = False
    ShowCaptions = True
    ShowHint = True
    TabOrder = 0
    Transparent = True
    object btnCliente: TToolButton
      Left = 0
      Top = 0
      Hint = 'Clientes'
      Caption = '&Clientes F3'
      ImageIndex = 0
      OnClick = btnClienteClick
    end
    object btnProduto: TToolButton
      Left = 117
      Top = 0
      Hint = 'Produtos'
      Caption = '&Produtos F6'
      ImageIndex = 1
      OnClick = btnProdutoClick
    end
    object ToolButton2: TToolButton
      Left = 234
      Top = 0
      Width = 8
      Caption = 'ToolButton2'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object btnVenda: TToolButton
      Left = 242
      Top = 0
      Hint = 'Vendas'
      Caption = '&Vendas F1'
      ImageIndex = 2
      OnClick = btnVendaClick
    end
    object btnTroca: TToolButton
      Left = 359
      Top = 0
      Caption = '&Trocas F2'
      ImageIndex = 4
      OnClick = btnTrocaClick
    end
    object ToolButton4: TToolButton
      Left = 476
      Top = 0
      Width = 8
      Caption = 'ToolButton4'
      ImageIndex = 4
      Style = tbsSeparator
    end
    object btnBalcao: TToolButton
      Left = 484
      Top = 0
      Caption = '&Balc'#227'o F4'
      ImageIndex = 5
      OnClick = btnBalcaoClick
    end
    object ToolButton9: TToolButton
      Left = 601
      Top = 0
      Width = 8
      ImageIndex = 7
      Style = tbsSeparator
    end
    object btnImprimir: TToolButton
      Left = 609
      Top = 0
      Caption = 'Imprimir F12'
      ImageIndex = 7
      OnClick = btnImprimirClick
    end
  end
  object PanGraf: TPanel
    Left = 0
    Top = 245
    Width = 731
    Height = 177
    Align = alBottom
    Color = clWhite
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 696
    object ToolBar1: TToolBar
      Left = 707
      Top = 1
      Width = 23
      Height = 175
      Align = alRight
      AutoSize = True
      DrawingStyle = dsGradient
      GradientEndColor = clMoneyGreen
      GradientStartColor = clWhite
      Images = Dm.ImageList1
      List = True
      GradientDirection = gdHorizontal
      ParentShowHint = False
      ShowHint = True
      TabOrder = 0
      object btnGrafAtu: TToolButton
        Left = 0
        Top = 0
        Caption = 'btnGrafAtu'
        ImageIndex = 9
        Wrap = True
        OnClick = btnGrafAtuClick
      end
      object btnGrafFecha: TToolButton
        Left = 0
        Top = 22
        Hint = 'Fechar Gr'#225'ficos'
        ImageIndex = 5
        Wrap = True
        OnClick = btnGrafFechaClick
      end
      object btnGrafPrint: TToolButton
        Left = 0
        Top = 44
        Hint = 'Visualizar Impress'#227'o'
        ImageIndex = 10
        Wrap = True
        OnClick = btnGrafPrintClick
      end
      object btnGrafExport: TToolButton
        Left = 0
        Top = 66
        Hint = 'Exportar para BMP'
        ImageIndex = 7
        OnClick = btnGrafExportClick
      end
    end
    object PageControlChart: TPageControl
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 700
      Height = 169
      ActivePage = TabSheet3
      Align = alClient
      MultiLine = True
      TabOrder = 1
      TabPosition = tpLeft
      ExplicitWidth = 665
      object TabSheet1: TTabSheet
        Caption = 'Clientes'
        ExplicitWidth = 637
        object GridPanel1: TGridPanel
          Left = 0
          Top = 0
          Width = 672
          Height = 161
          Align = alClient
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = DBChart3
              Row = 0
            end
            item
              Column = 1
              Control = DBChart4
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          ExplicitWidth = 637
          object DBChart3: TDBChart
            Left = 1
            Top = 1
            Width = 335
            Height = 159
            MarginBottom = 1
            MarginLeft = 1
            MarginRight = 1
            MarginTop = 1
            Title.Font.Color = 8421440
            Title.Font.Height = -12
            Title.Font.Style = [fsBold]
            Title.Text.Strings = (
              'Maiores Compradores')
            BottomAxis.Title.Caption = 'Por quantidade de itens comprados'
            DepthAxis.Visible = True
            DepthTopAxis.Visible = True
            LeftAxis.LabelStyle = talText
            Legend.LegendStyle = lsSeriesGroups
            View3D = False
            View3DOptions.Orthogonal = False
            Zoom.Allow = False
            Zoom.MouseButton = mbMiddle
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            ExplicitWidth = 317
            PrintMargins = (
              15
              27
              15
              27)
            ColorPaletteIndex = 13
            object HorizBarSeries2: THorizBarSeries
              BarBrush.Gradient.Direction = gdLeftRight
              BarBrush.Gradient.EndColor = 8421440
              BarBrush.Gradient.Visible = True
              Marks.Arrow.Visible = False
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = False
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Emboss.Color = 8618883
              Marks.Shadow.Color = 8947848
              Marks.Style = smsPercent
              Marks.Visible = True
              DataSource = Dm.QGrafCliente1
              SeriesColor = 8421440
              ShowInLegend = False
              XLabelsSource = 'NOME'
              BarStyle = bsRectGradient
              Gradient.Direction = gdLeftRight
              Gradient.EndColor = 8421440
              Gradient.Visible = True
              MarksLocation = mlCenter
              MultiBar = mbNone
              XValues.Name = 'Bar'
              XValues.Order = loAscending
              XValues.ValueSource = 'VALOR'
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
          object DBChart4: TDBChart
            Left = 336
            Top = 1
            Width = 335
            Height = 159
            MarginBottom = 1
            MarginLeft = 1
            MarginRight = 1
            MarginTop = 1
            Title.Font.Color = 8421440
            Title.Font.Height = -12
            Title.Font.Style = [fsBold]
            Title.Text.Strings = (
              'Clientes Rent'#225'veis')
            BottomAxis.Title.Caption = 'Por valores comprados'
            DepthAxis.Visible = True
            DepthTopAxis.Visible = True
            LeftAxis.LabelStyle = talText
            Legend.LegendStyle = lsSeriesGroups
            View3D = False
            View3DOptions.Orthogonal = False
            Zoom.Allow = False
            Zoom.MouseButton = mbMiddle
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            ExplicitLeft = 318
            ExplicitWidth = 318
            PrintMargins = (
              15
              27
              15
              27)
            ColorPaletteIndex = 13
            object HorizBarSeries3: THorizBarSeries
              BarBrush.Gradient.Direction = gdLeftRight
              BarBrush.Gradient.EndColor = 8421440
              BarBrush.Gradient.Visible = True
              Marks.Arrow.Visible = False
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = False
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Emboss.Color = 8684676
              Marks.Margins.Left = 2
              Marks.Margins.Top = 1
              Marks.Margins.Right = 21
              Marks.Margins.Units = maPercentSize
              Marks.Shadow.Color = 8947848
              Marks.Style = smsValue
              Marks.Symbol.ShapeStyle = fosRoundRectangle
              Marks.Visible = True
              DataSource = Dm.QGrafCliente2
              SeriesColor = 8421440
              ShowInLegend = False
              XLabelsSource = 'NOME'
              BarStyle = bsRectGradient
              Gradient.Direction = gdLeftRight
              Gradient.EndColor = 8421440
              Gradient.Visible = True
              MarksLocation = mlCenter
              MultiBar = mbNone
              XValues.Name = 'Bar'
              XValues.Order = loAscending
              XValues.ValueSource = 'VALOR'
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Produtos'
        ImageIndex = 1
        ExplicitWidth = 637
        object GridPanel2: TGridPanel
          Left = 0
          Top = 0
          Width = 672
          Height = 161
          Align = alClient
          ColumnCollection = <
            item
              Value = 50.000000000000000000
            end
            item
              Value = 50.000000000000000000
            end>
          ControlCollection = <
            item
              Column = 0
              Control = DBChart1
              Row = 0
            end
            item
              Column = 1
              Control = DBChart2
              Row = 0
            end>
          RowCollection = <
            item
              Value = 100.000000000000000000
            end>
          TabOrder = 0
          ExplicitWidth = 637
          object DBChart1: TDBChart
            Left = 1
            Top = 1
            Width = 335
            Height = 159
            MarginBottom = 1
            MarginLeft = 1
            MarginRight = 1
            MarginTop = 1
            Title.Font.Color = 8421440
            Title.Font.Height = -12
            Title.Font.Style = [fsBold]
            Title.Text.Strings = (
              'Produtos Mais Vendidos')
            DepthAxis.Visible = True
            DepthTopAxis.Visible = True
            LeftAxis.LabelStyle = talText
            Legend.LegendStyle = lsSeriesGroups
            View3D = False
            View3DOptions.Orthogonal = False
            Zoom.Allow = False
            Zoom.MouseButton = mbMiddle
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 0
            ExplicitWidth = 317
            PrintMargins = (
              15
              27
              15
              27)
            ColorPaletteIndex = 13
            object Series1: THorizBarSeries
              BarBrush.Gradient.Direction = gdLeftRight
              BarBrush.Gradient.EndColor = 8421440
              BarBrush.Gradient.Visible = True
              Marks.Arrow.Visible = False
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = False
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Emboss.Color = 8618883
              Marks.Shadow.Color = 8947848
              Marks.Style = smsPercent
              Marks.Visible = True
              DataSource = Dm.QGrafProduto1
              SeriesColor = 8421440
              ShowInLegend = False
              XLabelsSource = 'NOME'
              BarStyle = bsRectGradient
              Gradient.Direction = gdLeftRight
              Gradient.EndColor = 8421440
              Gradient.Visible = True
              MarksLocation = mlCenter
              MultiBar = mbNone
              XValues.Name = 'Bar'
              XValues.Order = loAscending
              XValues.ValueSource = 'VALOR'
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
          object DBChart2: TDBChart
            Left = 336
            Top = 1
            Width = 335
            Height = 159
            MarginBottom = 1
            MarginLeft = 1
            MarginRight = 1
            MarginTop = 1
            Title.Font.Color = 8421440
            Title.Font.Height = -12
            Title.Font.Style = [fsBold]
            Title.Text.Strings = (
              'Produtos Mais Rent'#225'veis')
            DepthAxis.Visible = True
            DepthTopAxis.Visible = True
            LeftAxis.LabelStyle = talText
            Legend.LegendStyle = lsSeriesGroups
            View3D = False
            View3DOptions.Orthogonal = False
            Zoom.Allow = False
            Zoom.MouseButton = mbMiddle
            Align = alClient
            BevelOuter = bvNone
            Color = clWhite
            TabOrder = 1
            ExplicitLeft = 318
            ExplicitWidth = 318
            PrintMargins = (
              15
              27
              15
              27)
            ColorPaletteIndex = 13
            object HorizBarSeries1: THorizBarSeries
              BarBrush.Gradient.Direction = gdLeftRight
              BarBrush.Gradient.EndColor = 8421440
              BarBrush.Gradient.Visible = True
              Marks.Arrow.Visible = False
              Marks.Callout.Brush.Color = clBlack
              Marks.Callout.Arrow.Visible = False
              Marks.BackColor = clWhite
              Marks.Color = clWhite
              Marks.Emboss.Color = 8618883
              Marks.Shadow.Color = 8947848
              Marks.Style = smsPercent
              Marks.Visible = True
              DataSource = Dm.QGrafProduto2
              SeriesColor = 8421440
              ShowInLegend = False
              XLabelsSource = 'NOME'
              BarStyle = bsRectGradient
              Gradient.Direction = gdLeftRight
              Gradient.EndColor = 8421440
              Gradient.Visible = True
              MarksLocation = mlCenter
              MultiBar = mbNone
              XValues.Name = 'Bar'
              XValues.Order = loAscending
              XValues.ValueSource = 'VALOR'
              YValues.Name = 'Y'
              YValues.Order = loNone
            end
          end
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Vendas'
        ImageIndex = 2
        ExplicitWidth = 637
        object DBChart5: TDBChart
          Left = 0
          Top = 0
          Width = 672
          Height = 161
          Title.Font.Color = 8421440
          Title.Font.Height = -12
          Title.Font.Style = [fsBold]
          Title.Text.Strings = (
            'Movimenta'#231#227'o Mensal (Trocas X Vendas)')
          LeftAxis.LabelsMultiLine = True
          Legend.LegendStyle = lsSeries
          Legend.TextStyle = ltsPlain
          View3D = False
          Align = alClient
          Color = clWhite
          TabOrder = 0
          ExplicitWidth = 637
          PrintMargins = (
            15
            38
            15
            38)
          ColorPaletteIndex = 13
          object Series2: TLineSeries
            LegendTitle = 'Vendas'
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.BackColor = 8421440
            Marks.Color = 8421440
            Marks.Emboss.Color = 8487297
            Marks.Shadow.Color = 8618883
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = Dm.QGrafVenda1
            SeriesColor = 8421440
            XLabelsSource = 'DATA'
            LinePen.Width = 2
            Pointer.Brush.Gradient.EndColor = 10708548
            Pointer.Gradient.EndColor = 10708548
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
            YValues.ValueSource = 'VENDAS'
          end
          object Series3: TLineSeries
            LegendTitle = 'Trocas'
            Marks.Arrow.Visible = True
            Marks.Callout.Brush.Color = clBlack
            Marks.Callout.Arrow.Visible = True
            Marks.BackColor = clGreen
            Marks.Color = clGreen
            Marks.Style = smsValue
            Marks.Visible = True
            DataSource = Dm.QGrafVenda1
            SeriesColor = clGreen
            XLabelsSource = 'DATA'
            LinePen.Width = 2
            Pointer.Brush.Gradient.EndColor = 3513587
            Pointer.Gradient.EndColor = 3513587
            Pointer.InflateMargins = True
            Pointer.Style = psRectangle
            Pointer.Visible = False
            XValues.Name = 'X'
            XValues.Order = loAscending
            YValues.Name = 'Y'
            YValues.Order = loNone
            YValues.ValueSource = 'TROCAS'
          end
        end
      end
    end
  end
  object MainMenu: TMainMenu
    Left = 24
    Top = 56
    object Cadastros1: TMenuItem
      Caption = 'Cadastros'
      object miClientes: TMenuItem
        Caption = 'Clientes'
        ShortCut = 114
        OnClick = btnClienteClick
      end
      object miProdutos: TMenuItem
        Caption = 'Produtos'
        ShortCut = 117
        OnClick = btnProdutoClick
      end
    end
    object Movimentaes1: TMenuItem
      Caption = 'Movimenta'#231#245'es'
      object miVendas: TMenuItem
        Caption = 'Vendas'
        ShortCut = 112
        OnClick = btnVendaClick
      end
      object miTrocas: TMenuItem
        Caption = 'Trocas'
        ShortCut = 113
        OnClick = btnTrocaClick
      end
      object N1: TMenuItem
        Caption = '-'
      end
      object miBalcao: TMenuItem
        Caption = 'Balc'#227'o'
        ShortCut = 115
        OnClick = btnBalcaoClick
      end
    end
    object miImprimir: TMenuItem
      Caption = 'Imprimir'
      ShortCut = 123
      OnClick = btnImprimirClick
    end
    object miSair: TMenuItem
      Caption = 'Sair'
      ShortCut = 32883
      OnClick = btnSairClick
    end
  end
end
