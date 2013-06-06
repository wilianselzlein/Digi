program Digi;

uses
  MidasLib,
  Vcl.Forms,
  UMenu in 'UMenu.pas' {FMenu},
  UDataMod in 'UDataMod.pas' {Dm: TDataModule},
  UPadrao in 'UPadrao.pas' {FPadrao},
  UFuncoes in 'UFuncoes.pas',
  UProduto in 'UProduto.pas' {FProduto},
  UCliente in 'UCliente.pas' {FCliente},
  UVendaTroca in 'UVendaTroca.pas' {FVendaTroca},
  UTroca in 'UTroca.pas' {FTroca},
  UVenda in 'UVenda.pas' {FVenda},
  UThreadExecSql in 'UThreadExecSql.pas',
  UFiltroData in 'UFiltroData.pas' {FFiltroData};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'Digi';
  Application.CreateForm(TDm, Dm);
  Application.CreateForm(TFMenu, FMenu);
  Application.Run;
end.
