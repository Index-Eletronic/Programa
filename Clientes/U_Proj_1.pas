unit U_Proj_1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, cefvcl;

type
  Tfrm_Proj = class(TForm)
    Label8: TLabel;
    btn_QR: TButton;
    btn_Cancelar: TButton;
    btn_Salvar: TButton;
    Label9: TLabel;
    Label10: TLabel;
    Panel1: TPanel;
    Label1: TLabel;
    Panel2: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    txt_data: TEdit;
    txt_n: TEdit;
    txt_qr: TEdit;
    txt_qtde: TEdit;
    txt_nome: TEdit;
    txt_descr: TEdit;
    CB_executar: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_Proj: Tfrm_Proj;

implementation

{$R *.dfm}

uses U_Clientes;

procedure Tfrm_Proj.FormClose(Sender: TObject; var Action: TCloseAction);
begin
frm_Proj.Hide;
Principal := TPrincipal.Create(self);
Principal.ShowModal;
end;

end.
