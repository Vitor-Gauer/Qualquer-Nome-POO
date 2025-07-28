unit uClasse;

interface
                                                              // Abstração: Como trazer as informações para uma classe
                                                              // Encapsulamento: Deixando informações relevantes dentro de cada contexto
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
                                                              // Herança: adquirir caracteristicas da classe Pai para classe Filha
    TPlayer = class(TPersonagem)
      Experiencia:double;
      NickName:string;

  end;


implementation

{ TPersonagem }

constructor TPersonagem.Create(aDano, aDefesa: integer);      // Constructor é uma function que busca na memória
begin
 self.dano:=aDano;
end;

end.
