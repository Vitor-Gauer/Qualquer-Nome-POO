program pProjetoPOO;

uses
  Vcl.Forms,
  uMainPOO in 'uMainPOO.pas' {Form1},
  uClasse in 'uClasse.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
