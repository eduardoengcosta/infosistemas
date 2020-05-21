program Crud;



uses
  Vcl.Forms,
  uFrmPrincipal in 'view\uFrmPrincipal.pas' {FormPrincipal},
  uFrmCadClientes in 'view\uFrmCadClientes.pas' {FormCadClientes},
  uProcessos in 'uProcessos.pas',
  uEnviaEmail in 'uEnviaEmail.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormPrincipal, FormPrincipal);
  Application.Run;
end.
