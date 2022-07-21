unit U_Cadastro;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs;

type
  TClientes = class(TForm)
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Clientes: TClientes;

implementation

{$R *.dfm}

uses U_Clientes;

procedure TClientes.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Clientes.Hide;
Principal := TPrincipal.Create(self);
Principal.ShowModal;
end;

end.