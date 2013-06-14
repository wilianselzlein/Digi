inherited FTroca: TFTroca
  Caption = 'Trocas'
  PixelsPerInch = 96
  TextHeight = 13
  object Splitter1: TSplitter [0]
    Left = 0
    Top = 135
    Width = 634
    Height = 3
    Cursor = crVSplit
    Align = alBottom
    ExplicitTop = 30
    ExplicitWidth = 84
  end
  object Splitter2: TSplitter [1]
    Left = 277
    Top = 30
    Height = 105
    Align = alRight
    ExplicitLeft = 0
    ExplicitTop = 111
    ExplicitHeight = 643
  end
  inherited DBGrid: TDBGrid
    Width = 277
    Height = 105
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'Id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DATATROCA'
        Title.Caption = 'Data'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TOTALTROCADO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Total Trocado'
        Visible = True
      end
      item
        Expanded = False
        Visible = False
      end>
  end
  inherited Panel1: TPanel
    object Label1: TLabel [1]
      Left = 56
      Top = 28
      Width = 34
      Height = 16
      Caption = 'Data'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 58
      Top = 44
      Width = 90
      Height = 21
      DataField = 'DATATROCA'
      DataSource = DataSource
      TabOrder = 2
      OnKeyDown = txtPesquisaKeyDown
    end
    object DBMemo1: TDBMemo
      Left = 184
      Top = 25
      Width = 449
      Height = 47
      Align = alRight
      DataField = 'OBS'
      DataSource = DataSource
      TabOrder = 3
    end
  end
  object DBGrid1: TDBGrid [5]
    Left = 0
    Top = 138
    Width = 634
    Height = 101
    Align = alBottom
    Color = clWhite
    DataSource = DSItem
    FixedColor = clMoneyGreen
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColumnResize, dgRowLines, dgTabs, dgAlwaysShowSelection, dgConfirmDelete, dgCancelOnExit]
    ParentFont = False
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -13
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = [fsBold]
    OnDrawColumnCell = DBGrid1DrawColumnCell
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ITEM'
        ReadOnly = True
        Title.Alignment = taCenter
        Title.Caption = 'Item'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'LKPProduto'
        Title.Caption = 'Produto'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'QUANTIDADE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Quantidade'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Pre'#231'o'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Total'
        ReadOnly = True
        Title.Alignment = taRightJustify
        Width = 83
        Visible = True
      end>
  end
  object Panel3: TPanel [6]
    Left = 280
    Top = 30
    Width = 354
    Height = 105
    Align = alRight
    Color = clMoneyGreen
    ParentBackground = False
    TabOrder = 4
    object Label2: TLabel
      Left = 5
      Top = 53
      Width = 49
      Height = 16
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 5
      Top = 22
      Width = 34
      Height = 16
      Caption = 'Data'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 164
      Top = 21
      Width = 86
      Height = 16
      Caption = 'Total Venda'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 1
      Top = 1
      Width = 352
      Height = 16
      Align = alTop
      Alignment = taCenter
      Caption = 'Dados da Venda'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGreen
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 118
    end
    object Label8: TLabel
      Left = 5
      Top = 1
      Width = 14
      Height = 16
      Caption = 'Id'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText1: TDBText
      Left = 23
      Top = 3
      Width = 65
      Height = 14
      DataField = 'VENDA_ID'
      DataSource = Dm.DSVendaTroca
    end
    object DBEdit2: TDBEdit
      Left = 56
      Top = 21
      Width = 90
      Height = 21
      DataField = 'DataVenda'
      DataSource = Dm.DSVendaTroca
      ReadOnly = True
      TabOrder = 0
      OnKeyDown = txtPesquisaKeyDown
    end
    object DBEdit3: TDBEdit
      Left = 57
      Top = 52
      Width = 289
      Height = 21
      DataField = 'Cliente'
      DataSource = Dm.DSVendaTroca
      ReadOnly = True
      TabOrder = 1
      OnKeyDown = txtPesquisaKeyDown
    end
    object DBEdit4: TDBEdit
      Left = 256
      Top = 23
      Width = 90
      Height = 21
      DataField = 'TotalVenda'
      DataSource = Dm.DSVendaTroca
      ReadOnly = True
      TabOrder = 2
      OnKeyDown = txtPesquisaKeyDown
    end
    object ToolBar1: TToolBar
      Left = 1
      Top = 82
      Width = 352
      Height = 22
      Align = alBottom
      AutoSize = True
      ButtonWidth = 149
      DrawingStyle = dsGradient
      GradientEndColor = clWindow
      GradientStartColor = clMoneyGreen
      Images = Dm.ImageList1
      List = True
      ShowCaptions = True
      TabOrder = 3
      ExplicitTop = 30
      object btnAddVenda: TToolButton
        Left = 0
        Top = 0
        Caption = 'Relacionar Venda a Troca'
        ImageIndex = 4
        OnClick = btnAddVendaClick
      end
      object ToolButton1: TToolButton
        Left = 149
        Top = 0
        Width = 8
        Caption = 'ToolButton1'
        ImageIndex = 6
        Style = tbsSeparator
      end
      object btnDelVenda: TToolButton
        Left = 157
        Top = 0
        Caption = 'Remover Rela'#231#227'o'
        ImageIndex = 5
        OnClick = btnDelVendaClick
      end
    end
  end
  inherited DataSource: TDataSource
    DataSet = Dm.CDSTroca
  end
  object DSItem: TDataSource
    DataSet = Dm.CDSItemTroca
    Left = 120
    Top = 96
  end
end
