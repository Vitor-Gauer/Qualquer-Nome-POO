unit uClasse;

interface

type
  TPersonagem = class
    Nome:string;
    Vida:double;
    Genero:string;
    Nivel:integer;
    Dano:integer;
    Defesa:integer;
    DanoExcepcional:double;
    function getDano:double;
    function getDefesa:integer;
    function getDanoCalculado:double;
    procedure setDano(aDano:Integer);
    procedure setDefesa(aDefesa:Integer);
    function ReceberDano(aDanoRecebido: Double): Double;
    constructor Create(aDano, aDefesa:integer; aDanoExcepcional:double);
  end;

  TPlayer = class(TPersonagem)
    Experiencia:double;
    NickName:string;
  end;

  TBoss = class(TPersonagem)
  end;

implementation

uses System.SysUtils;

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: integer; aDanoExcepcional:double);
begin
  self.dano:= aDano;
  self.defesa:= aDefesa;
  self.DanoExcepcional:= aDanoExcepcional;
end;

function TPersonagem.getDano: double;
begin
  Result := self.Dano;
end;

function TPersonagem.getDanoCalculado: double;
begin
  Result := DanoExcepcional * (self.dano + self.nivel);
end;

procedure TPersonagem.setDano(aDano: Integer);
begin
  if aDano >= 0 then
  begin
    Self.Dano := aDano;
  end
  else
  begin
    raise Exception.Create('O Dano não pode ser negativo. TPersonagem.setDano');
  end;
end;

function TPersonagem.getDefesa: integer;
begin
  result := self.defesa + self.nivel;
end;

procedure TPersonagem.setDefesa(aDefesa: Integer);
begin
  if aDefesa >= 0 then
  begin
    Self.Defesa := aDefesa;
  end
  else
  begin
    raise Exception.Create('A Defesa não pode ser negativa. TPersonagem.setDefesa');
  end;
end;

function TPersonagem.ReceberDano(aDanoRecebido: Double): Double;
var
  DanoFinal: Double;
begin
  DanoFinal := aDanoRecebido - self.getDefesa;
  if DanoFinal < 0 then // Dano não pode ser negativo
    DanoFinal := 0;
  Self.Vida := Self.Vida - DanoFinal;
  if Self.Vida < 0 then // Vida não pode ser negativo
    Self.Vida := 0;

  Result := DanoFinal;
end;

end.
