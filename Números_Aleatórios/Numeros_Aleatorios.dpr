program Numeros_Aleatorios;

uses
  Vcl.Forms,
  untNumeros in 'untNumeros.pas' {frmNumeros},
  untFuncao in 'untFuncao.pas',
  Vcl.Themes,
  Vcl.Styles;

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmNumeros, frmNumeros);
  Application.Run;
end.
