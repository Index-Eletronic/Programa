program Projetos;

uses
  Vcl.Forms,
  U_Clientes in 'U_Clientes.pas' {Principal},
  U_Cadastro in 'U_Cadastro.pas' {Clientes},
  U_Orcamento in 'U_Orcamento.pas',
  U_Projetos in 'U_Projetos.pas' {Projetista};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TPrincipal, Principal);
  Application.Run;
end.
