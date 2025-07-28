unit uMainPOO;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}
uses uClasse; //significa que eu posso usar como tipo de variavel

procedure TForm1.Button1Click(Sender: TObject);
var personagem:TPersonagem;
    player:TPlayer;
begin
  personagem:=TPersonagem.Create(10,5); // crie na memória um endereço com os argumentos aDano e aDefesa, com os valores 10 e 5
  personagem.nome:='Beatboxer';
  player:=TPlayer.Create(15,15);
  player.nome:='Melhor Beatboxer';
end;

end.
