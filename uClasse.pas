unit uClasse;

interface
                                                              // Abstra��o: Como trazer as informa��es para uma classe
                                                              // Encapsulamento: Deixando informa��es relevantes dentro de cada contexto
  type
    TPersonagem = class
      Nome:string;
      Vida:integer;
      Genero:string;
      Nivel:integer;
      Dano:integer;
      Defesa:integer;

      constructor Create(aDano,aDefesa:integer);
   end;
                                                              // Heran�a: adquirir caracteristicas da classe Pai para classe Filha
    TPlayer = class(TPersonagem)
      Experiencia:double;
      NickName:string;

  end;


implementation

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: integer);      // Constructor � uma function que busca na mem�ria
begin
 self.dano:=aDano;
end;

end.
