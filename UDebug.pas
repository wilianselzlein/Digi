unit UDebug;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.ExtCtrls;

type
  TFDebug = class(TForm)
    GridPanel1: TGridPanel;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FDebug: TFDebug;

implementation

{$R *.dfm}

uses UDataMod;

end.
