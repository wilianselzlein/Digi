inherited FProduto: TFProduto
  Caption = 'Produtos'
  OnCreate = FormCreate
  ExplicitWidth = 642
  ExplicitHeight = 339
  PixelsPerInch = 96
  TextHeight = 13
  inherited DBGrid: TDBGrid
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'ID'
        Title.Alignment = taCenter
        Title.Caption = 'Id'
        Width = 54
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DESCRICAO'
        Title.Caption = 'Descri'#231#227'o'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Title.Caption = 'Nome'
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'BARRAS'
        Title.Caption = 'Barras'
        Width = 102
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRECO'
        Title.Alignment = taRightJustify
        Title.Caption = 'Pre'#231'o'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Title.Alignment = taRightJustify
        Title.Caption = 'Estoque'
        Width = 81
        Visible = True
      end>
  end
  inherited Panel1: TPanel
    object Label1: TLabel [1]
      Left = 55
      Top = 28
      Width = 72
      Height = 16
      Caption = 'Descri'#231#227'o'
      FocusControl = DBEdit1
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel [2]
      Left = 227
      Top = 28
      Width = 42
      Height = 16
      Caption = 'Nome'
      FocusControl = DBEdit2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel [3]
      Left = 399
      Top = 28
      Width = 47
      Height = 16
      Caption = 'Barras'
      FocusControl = DBEdit3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel [4]
      Left = 498
      Top = 28
      Width = 42
      Height = 16
      Caption = 'Pre'#231'o'
      FocusControl = DBEdit4
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel [5]
      Left = 568
      Top = 28
      Width = 58
      Height = 16
      Caption = 'Estoque'
      FocusControl = DBEdit5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEdit1: TDBEdit
      Left = 55
      Top = 44
      Width = 169
      Height = 21
      DataField = 'DESCRICAO'
      DataSource = DataSource
      TabOrder = 2
      OnKeyDown = txtPesquisaKeyDown
    end
    object DBEdit2: TDBEdit
      Left = 227
      Top = 44
      Width = 169
      Height = 21
      DataField = 'NOME'
      DataSource = DataSource
      TabOrder = 3
      OnKeyDown = txtPesquisaKeyDown
    end
    object DBEdit3: TDBEdit
      Left = 399
      Top = 44
      Width = 95
      Height = 21
      DataField = 'BARRAS'
      DataSource = DataSource
      TabOrder = 4
      OnKeyDown = txtPesquisaKeyDown
    end
    object DBEdit4: TDBEdit
      Left = 498
      Top = 44
      Width = 68
      Height = 21
      DataField = 'PRECO'
      DataSource = DataSource
      TabOrder = 5
      OnKeyDown = txtPesquisaKeyDown
    end
    object DBEdit5: TDBEdit
      Left = 568
      Top = 44
      Width = 61
      Height = 21
      DataField = 'ESTOQUE'
      DataSource = DataSource
      TabOrder = 6
      OnKeyDown = txtPesquisaKeyDown
    end
  end
  inherited DataSource: TDataSource
    DataSet = Dm.CDSProduto
  end
end
