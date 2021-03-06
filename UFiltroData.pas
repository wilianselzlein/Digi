unit UFiltroData;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.ToolWin, Vcl.StdCtrls,
  Vcl.ExtCtrls;

type
  TFFiltroData = class(TForm)
    Panel2: TPanel;
    Label4: TLabel;
    txtPesquisa: TEdit;
    ToolBar1: TToolBar;
    btnImp: TToolButton;
    txtDataIni: TDateTimePicker;
    txtDataFim: TDateTimePicker;
    Label1: TLabel;
    procedure btnImpClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure txtDataFimKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FFiltroData: TFFiltroData;

implementation

{$R *.dfm}

procedure TFFiltroData.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := CaFree;
end;

procedure TFFiltroData.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (key = 13) or (key = 40) then
    Perform(WM_nextDlgCtl, 0, 0);
  if key = 38 then
    Perform(WM_nextDlgCtl, 1, 0);
  if key = 27 then
    Close;
end;

procedure TFFiltroData.FormShow(Sender: TObject);
begin
  txtDataIni.Date := Date;
  txtDataFim.Date := Date;
end;

procedure TFFiltroData.txtDataFimKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    btnImp.Click;
end;

procedure TFFiltroData.btnImpClick(Sender: TObject);
begin
    Close;
end;

end.
