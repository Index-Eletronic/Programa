program Programa_AcessBD;

uses
  Vcl.Forms,
  U_prog_AcessBD in 'U_prog_AcessBD.pas' {frm_inicial};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tfrm_inicial, frm_inicial);
  Application.Run;
end.
