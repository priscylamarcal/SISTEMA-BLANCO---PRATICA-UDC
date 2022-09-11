unit uCadastroContasReceber;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls;

type
  Tform_cadastro_contas_receber = class(Tform_cadastro_pai)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  form_cadastro_contas_receber: Tform_cadastro_contas_receber;

implementation

{$R *.dfm}

end.
