unit uCadastroContasPagar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls;

type
  Tform_cadastro_contas_pagar = class(Tform_cadastro_pai)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadastro_contas_pagar: Tform_cadastro_contas_pagar;

implementation

{$R *.dfm}

end.
