unit uCadastroFormasPagamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, uFormaPagamento, uCtrlFormasPagamentos;

type
  Tform_cadastro_formas_pagamentos = class(Tform_cadastro_pai)
    edt_forma_pagamento: PriTEdit;
    lbl_forma_pagamento: TLabel;
  private
    { Private declarations }
    aFormaPagamento : FormasPagamentos;
    aCtrlFormasPagamentos : ctrlFormasPagamentos;
  public
    { Public declarations }
    procedure conhecaObj ( pCtrl, pObj : TObject );  override;
    procedure salvar;         override;
    procedure sair;           override;
    procedure limpaEdt;       override;
    procedure carregaEdt;     override;
    procedure bloqueiaEdt;    override;
    procedure desbloqueiaEdt; override;
    function validaFormulario : Boolean; override;
  end;

var
  form_cadastro_formas_pagamentos: Tform_cadastro_formas_pagamentos;

implementation

{$R *.dfm}

{ Tform_cadastro_formas_pagamentos }

procedure Tform_cadastro_formas_pagamentos.bloqueiaEdt;
begin
  inherited;
  self.edt_forma_pagamento.Enabled:= False;
end;

procedure Tform_cadastro_formas_pagamentos.carregaEdt;
begin
  inherited;

  if aFormaPagamento.getCodigo <> 0 then
     self.edt_codigo.Text:= IntToStr(aFormaPagamento.getCodigo);

  self.edt_forma_pagamento.Text:= aFormaPagamento.getFormaPagamento;
  Self.edt_data_cadastro.Text:= DateToStr( aFormaPagamento.getDataCad);
  self.edt_data_ult_alt.Text:= DateToStr(aFormaPagamento.getUltAlt);
end;

procedure Tform_cadastro_formas_pagamentos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aFormaPagamento:= FormasPagamentos( pObj );
  aCtrlFormasPagamentos:= ctrlFormasPagamentos( pCtrl );

  self.limpaEdt;
  self.carregaEdt;
end;

procedure Tform_cadastro_formas_pagamentos.desbloqueiaEdt;
begin
  inherited;
  self.edt_forma_pagamento.Enabled:= False;
end;

procedure Tform_cadastro_formas_pagamentos.limpaEdt;
begin
  inherited;
  self.edt_forma_pagamento.Clear;
  self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_formas_pagamentos.sair;
begin
  inherited;

end;

procedure Tform_cadastro_formas_pagamentos.salvar;
begin
  inherited;
  if validaFormulario then
  begin
    aFormaPagamento.setCodigo(StrToInt( self.edt_codigo.Text ));
    aFormaPagamento.setFormaPagamento( self.edt_forma_pagamento.Text );
    aFormaPagamento.setDataCad( Date );
    aFormaPagamento.setUltAlt( Date );
    aFormaPagamento.setCodUsu( StrToInt ( Self.edt_cod_usuario.Text ) );

    if Self.btn_botao_salvar.Caption = 'Salvar' then // INCLUIR-ALTERAR
       aCtrlFormasPagamentos.salvar( aFormaPagamento.clone )
    else //EXCLUIR
       aCtrlFormasPagamentos.excluir( aFormaPagamento.clone );

    self.sair;
  end;
end;

function Tform_cadastro_formas_pagamentos.validaFormulario: Boolean;
begin
  Result:= False;

  if Self.edt_forma_pagamento.Text = '' then
  begin
    MessageDlg( 'O campo Forma de Pagamento é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_forma_pagamento.SetFocus;
    Exit;
  end;

 Result:= true;
end;

end.
