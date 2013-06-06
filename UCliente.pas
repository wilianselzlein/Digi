unit UCliente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, UPadrao, Data.DB, Vcl.Mask, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, DBClient, Generics.Collections;

type
  TCliente = class
  private
    FTelefone: String;
    FNome: String;
    FCidade: String;
    FCodigo: String;
  public
    property Telefone: String read FTelefone write FTelefone;
    property Nome: String read FNome write FNome;
    property Cidade: String read FCidade write FCidade;
    property Codigo: String read FCodigo write FCodigo;
  end;
  TFCliente = class(TFPadrao)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    DBEdit2: TDBEdit;
    Label2: TLabel;
    DBEdit3: TDBEdit;
    Label3: TLabel;
    procedure Importar; override;
    procedure Imprimir; override;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FCliente: TFCliente;

implementation

{$R *.dfm}

uses UDataMod;

procedure TFCliente.Importar;
var
  Lista: TList<TCliente>;
  I : Integer;
  Cli: TCliente;
begin
  if not dm.OpenDialog.Execute then
    Exit;
  dm.XMLDoc.LoadFromFile(dm.OpenDialog.FileName);
  try
    Lista := TList<TCliente>.Create;
    for I := 0 to dm.XMLDoc.DocumentElement.ChildNodes.Count - 1 do
    begin
      Cli := TCliente.Create;
      with Cli, dm.XMLDoc, dm.XMLDoc.DocumentElement.ChildNodes[I] do
      begin
        Telefone := ChildNodes['TELEFONE'].Text;
        Nome := ChildNodes['NOME'].Text;
        Cidade := ChildNodes['CIDADE'].Text;
        Codigo := ChildNodes['CODIGO'].Text;
      end;
      Lista.Add(Cli);
    end;
    dm.CDSCliente.IndexFieldNames := 'ID';
    for I := 0 to dm.XMLDoc.DocumentElement.ChildNodes.Count - 1 do
    begin
      with Lista.Items[i] do
      begin
        Codigo := IntToStr(StrToIntDef(Codigo, 0));
        if dm.CDSCliente.Locate('ID', Codigo, [loCaseInsensitive, loPartialKey]) then
          dm.CDSCliente.Edit
        else
        begin
          dm.CDSCliente.Append;
          dm.CDSClienteID.AsInteger := StrToInt(Codigo);
        end;
        dm.CDSClienteTELEFONE.AsString := Telefone;
        dm.CDSClienteNOME.AsString := Nome;
        dm.CDSClienteCIDADE.AsString := Cidade;
        dm.CDSCliente.Post;
      end;
    end;
  finally
    dm.XMLDoc.XML.Clear;
    Lista.Destroy;
  end;
end;

procedure TFCliente.Imprimir;
begin
  dm.frxCliente.ShowReport(True);
end;

end.
