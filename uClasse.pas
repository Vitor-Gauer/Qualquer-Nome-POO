unit uClasse;

interface
                                                              // Abstração: Como trazer as informações para uma classe
                                                              // Encapsulamento: Deixando informações relevantes dentro de cada contexto
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
      function getLotsOfDamage:double;
      procedure setDano(aDano:Integer);
      procedure setDefesa(aDefesa:Integer);
      procedure setLotsOfDamage(aLotsOfDamage:double);
      constructor Create(aDano, aDefesa:integer; aDanoExcepcional, aLotsOfDamage:double);
   end;
                                                              // Herança: adquirir caracteristicas da classe Pai para classe Filha
    TPlayer = class(TPersonagem)
      Experiencia:double;
      NickName:string;
      function getDano:double;
      procedure setDano(aDano:Integer);
  end;
    TBoss = class(TPersonagem)
      function getDano:double;
      procedure setDano(aDano:Integer);
  end;

implementation

uses System.SysUtils;
{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: integer; aDanoExcepcional:double);      // Boss e a Player vão ter danos maiores, o TTK é menor.
begin
 self.dano:= aDano;
 self.defesa:= aDefesa;
 self.DanoExcepcional:= aDanoExcepcional;
end;
                                                               //Personagem Dano
function TPersonagem.getDano: double;
begin
 result:=DanoExcepcional*(self.dano+(self.nivel{+self.ferramenta}));
end;
procedure TPersonagem.setDano(aDano: Integer);
begin
  danoexcepcional:=1;
  try
     begin
       if aDano<1 then
         begin
          Self.Dano := aDano;
         end;
     end;
  except
    raise Exception.Create('O Dano tem que ser maior que zero. TPersonagem.setDano');
  end;
end;
                                                                  // Player Dano
function TPlayer.getDano: double;
begin
 result:=DanoExcepcional*(self.dano+(self.nivel{+self.ferramenta}));
end;
procedure TPlayer.setDano(aDano: Integer);
begin
  danoexcepcional:=1.3;
  try
     begin
       if aDano<1 then
         begin
          Self.Dano := aDano;
         end;
     end;
  except
    raise Exception.Create('O Dano tem que ser maior que zero. TPersonagem.setDano');
  end;
end;

function TBoss.getDano: double;
begin
 result := DanoExcepcional*(self.dano+(self.nivel{+self.ferramenta}));
end;
                                                                    // Boss Dano
procedure TBoss.setDano(aDano: Integer);
begin
  danoexcepcional:=1.3;
  try
     begin
       if aDano<1 then
         begin
          Self.Dano := aDano;
         end;
     end;
  except
    raise Exception.Create('O Dano tem que ser maior que zero. TPersonagem.setDano');
  end;
end;
                                                 //Personagem/Boss/Player Defesa
function TPersonagem.getDefesa: integer;
begin
 result := self.defesa+(self.nivel{+self.ferramenta/armadura});
end;
function TPersonagem.getLotsOfDamage: double;
begin
  result := vida - Self.Dano;
end;
procedure TPersonagem.setLotsOfDamage(aLotsOfDamage:double);
begin
    try
     begin
       if aDano<1 then
         begin
          Self.Dano := aDano;
         end;
     end;
  except
    raise Exception.Create('O Dano tem que ser maior que zero. TPersonagem.setDano');
  end;
end;

procedure TPersonagem.setDefesa(aDefesa: Integer);
begin
  try
    if aDefesa<1 then
      begin
       Self.Defesa:=aDefesa;
      end;
  except
    raise Exception.Create('A Defesa tem que ser maior que zero. TPersonagem.setDano');
  end;
end;

procedure TPersonagem.setLotsOfDamage(aLotsOfDamage: double);
begin

end;

end.
