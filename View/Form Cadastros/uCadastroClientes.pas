unit uCadastroClientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, ComboBox, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Mask,
  MaskEdit1, Vcl.ComCtrls, uClientes, uConsulta_Cidades, uConsulta_TiposContatos,
  uConsulta_CondicoesPagamentos, uCtrlClientes, uConsulta_Funcionarios;

type
  Tform_cadastro_clientes = class(Tform_cadastro_pai)
    lbl_titulo_dados_gerais: TLabel;
    ComboBox_tipo_cliente: TComboBox1;
    edt_razao_social: PriTEdit;
    edt_nome_fantasia: PriTEdit;
    lbl_tipo_cliente: TLabel;
    lbl_razao_social: TLabel;
    lbl_nome_fantasia: TLabel;
    lbl_titulo_endereco: TLabel;
    lbl_endereco: TLabel;
    lbl_numero: TLabel;
    lbl_complemento: TLabel;
    lbl_bairro: TLabel;
    lbl_cep: TLabel;
    edt_bairro: PriTEdit;
    edt_cep: PriTMaskEdit;
    lbl_codigo_cidade: TLabel;
    edt_cod_cidade: PriTEdit;
    lbl_cidade: TLabel;
    edt_cidade: PriTEdit;
    lbl_uf: TLabel;
    edt_uf: PriTEdit;
    edt_endereco: PriTEdit;
    edt_numero: PriTEdit;
    edt_complemento: PriTEdit;
    pnl_adicionar_cidade: TPanel;
    btn_adicionar_cidade: TSpeedButton;
    lbl_contatos: TLabel;
    lbl_tipo_contato: TLabel;
    edt_tipo_contato: PriTEdit;
    lbl_nome_tipo: TLabel;
    edt_nome_tipo_selecionado: PriTEdit;
    edt_algo: PriTEdit;
    lbl_algo_contato: TLabel;
    pnl_pesquisa_tipo_contato: TPanel;
    btn_pesquisa_tipo_contato: TSpeedButton;
    edt_pesquisar_registro: PriTEdit;
    pnl_btn_pesquisa: TPanel;
    btn_pesquisa: TSpeedButton;
    lbl_vendedor_responsavel: TLabel;
    edt_cnpj: PriTMaskEdit;
    edt_ie: PriTEdit;
    lbl_cnpj: TLabel;
    lbl_ie: TLabel;
    lbl_titulo_financeiro: TLabel;
    edt_limite_credito: PriTEdit;
    edt_cod_condicao_pagamento: PriTEdit;
    edt_pesquisa_condicao_pagamento: PriTEdit;
    pnl_pesquisa_condicao_pagamento: TPanel;
    btn_pesquisa_condicao_pagamento: TSpeedButton;
    lbl_limite_credito: TLabel;
    lbl_cod_condicao_pagamento: TLabel;
    lbl_condicao_pagamento: TLabel;
    lbl_obs: TLabel;
    memo_obs: TMemo;
    lbl_cod_contato: TLabel;
    edt_cod_contato: PriTEdit;
    lbl_cod_vendedor_responsavel: TLabel;
    edt_cod_vendedor_responsavel: PriTEdit;
    ListView1: TListView;
    pbl_limpar_grid: TPanel;
    btn_limpar_grid: TSpeedButton;
    pnl_botao_excluir_item: TPanel;
    btn_botao_excluir_item: TSpeedButton;
    pnl_botao_alterar: TPanel;
    btn_botao_alterar_item: TSpeedButton;
    pnl_adicionar_contato: TPanel;
    btn_adicionar_contato: TSpeedButton;
    procedure btn_adicionar_cidadeClick(Sender: TObject);
    procedure btn_pesquisa_tipo_contatoClick(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
    procedure btn_pesquisa_condicao_pagamentoClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure btn_adicionar_contatoClick(Sender: TObject);
    procedure btn_botao_alterar_itemClick(Sender: TObject);
    procedure btn_botao_excluir_itemClick(Sender: TObject);
    procedure btn_limpar_gridClick(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
  private
    { Private declarations }

    oCliente : Clientes;
    aCtrlClientes : ctrlClientes;

    aConsultacidades : Tform_consulta_cidades;
    aConsultaContatos : Tform_consulta_tipos_contatos;
    aConsultaFuncionarios : Tform_consulta_funcionarios;
    aConsultacondicao : Tform_consulta_condicoes_pagamentos;
  public
    { Public declarations }
    procedure conhecaObj ( pCtrl, pObj : TObject );  override;
    procedure salvar;         override;
    procedure sair;           override;
    procedure limpaEdt;       override;
    procedure carregaEdt;     override;
    procedure bloqueiaEdt;    override;
    procedure desbloqueiaEdt; override;
    procedure bloqueaiaBtnPesquisa;
    procedure desbloqueiaBtnPesquisa;

    function validaFormulario : Boolean; override;

    procedure setFrmConsultaCidade ( pConsulta : TObject );
    procedure setFrmConsultaContatos ( pConsulta : TObject );
    procedure setFrmConsultaFuncionarios ( pConsulta : TObject );
    procedure setFrmConsultaCondicaoPagamento ( pConsulta : TObject );

    procedure adicionarItens;
    procedure limparItens;
    function validaItens : Boolean;
  end;

var
  form_cadastro_clientes: Tform_cadastro_clientes;

implementation

{$R *.dfm}



{ Tform_cadastro_clientes }

procedure Tform_cadastro_clientes.adicionarItens;
var item : TListItem;
begin
  item:= ListView1.Items.Add;

  item.Caption:= edt_tipo_contato.Text;
  item.SubItems.Add( edt_nome_tipo_selecionado.Text );
  item.SubItems.Add( edt_algo.Text );
end;

procedure Tform_cadastro_clientes.bloqueaiaBtnPesquisa;
begin
  self.btn_adicionar_cidade.Visible:= False;
  self.btn_pesquisa_tipo_contato.Visible:= False;
  self.btn_pesquisa.Visible:= False;
  self.btn_pesquisa_condicao_pagamento.Visible:= False;

  self.btn_adicionar_contato.Enabled:= False;
  self.btn_botao_alterar_item.Enabled:= False;
  self.btn_botao_excluir_item.Enabled:= False;
  self.btn_limpar_grid.Enabled:= False;
end;

procedure Tform_cadastro_clientes.bloqueiaEdt;
begin
  inherited;
  self.edt_razao_social.Enabled:= False;
  self.edt_nome_fantasia.Enabled:= False;
  self.edt_endereco.Enabled:= False;
  self.edt_numero.Enabled:= False;
  self.edt_complemento.Enabled:= False;
  self.edt_bairro.Enabled:= False;
  self.edt_cep.Enabled:= False;
  self.edt_cod_cidade.Enabled:= False;
  self.edt_cidade.Enabled:= False;
  self.edt_uf.Enabled:= False;
  self.edt_cod_contato.Enabled:= False;
  self.edt_tipo_contato.Enabled:= False;
  self.edt_nome_tipo_selecionado.Enabled:= False;
  self.edt_algo.Enabled:= False;
  self.edt_cod_vendedor_responsavel.Enabled:= False;
  self.edt_pesquisar_registro.Enabled:= False;
  self.edt_cnpj.Enabled:= False;
  self.edt_ie.Enabled:= False;
  self.edt_limite_credito.Enabled:= False;
  self.edt_cod_condicao_pagamento.Enabled:= False;
  self.edt_pesquisa_condicao_pagamento.Enabled:= False;
  self.memo_obs.Enabled:= False;
end;

procedure Tform_cadastro_clientes.btn_adicionar_cidadeClick(Sender: TObject);
var aux: string;
begin
 // inherited;
  aConsultacidades.conhecaObj( aCtrlClientes.getCtrlCidades, oCliente.getaCidade );
  aux:= aConsultacidades.btn_botao_sair.Caption;
  aConsultacidades.btn_botao_sair.Caption:= 'Selecionar';
  aConsultacidades.ShowModal;
  aConsultacidades.btn_botao_sair.Caption:= aux;

  self.edt_cod_cidade.Text:= IntToStr( oCliente.getaCidade.getCodigo );
  self.edt_cidade.Text:= oCliente.getaCidade.getCidade;
  self.edt_uf.Text:= oCliente.getaCidade.getoEstado.getUF;
end;

procedure Tform_cadastro_clientes.btn_adicionar_contatoClick(Sender: TObject);
var item : TListItem;
begin
  if validaItens then
  begin
    adicionarItens;
    limparItens;
    edt_cod_contato.SetFocus;
  end;
end;

procedure Tform_cadastro_clientes.btn_botao_alterar_itemClick(Sender: TObject);
var item : TListItem;
begin
  inherited;

  edt_tipo_contato.Text:= ListView1.Selected.Caption;
  edt_nome_tipo_selecionado.Text:= ListView1.Selected.SubItems[0];
  edt_algo.Text:= ListView1.Selected.SubItems[1];
end;

procedure Tform_cadastro_clientes.btn_botao_excluir_itemClick(Sender: TObject);
begin
  inherited;
  if ListView1.ItemFocused.Index = ListView1.Items.Count - 1 then
     ListView1.DeleteSelected
  else
    MessageDlg( 'Primeiro deve excluir o último contato!', MtInformation, [ MbOK ], 0 );
end;

procedure Tform_cadastro_clientes.btn_limpar_gridClick(Sender: TObject);
begin
  inherited;
  ListView1.Clear;
end;

procedure Tform_cadastro_clientes.btn_pesquisaClick(Sender: TObject);
var aux: string;
begin
 // inherited;
  aConsultaFuncionarios.conhecaObj( aCtrlClientes.getCtrlFuncionarios, oCliente.getoFuncionario );
  aux:= aConsultaFuncionarios.btn_botao_sair.Caption;
  aConsultaFuncionarios.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaFuncionarios.ShowModal;
  aConsultaFuncionarios.btn_botao_sair.Caption:= aux;

  self.edt_cod_vendedor_responsavel.Text:= IntToStr( oCliente.getoFuncionario.getCodigo );
  self.edt_pesquisar_registro.Text:= oCliente.getoFuncionario.getNomeRazaoSocial;
end;

procedure Tform_cadastro_clientes.btn_pesquisa_condicao_pagamentoClick(
  Sender: TObject);
  var aux : string;
begin
  //inherited;
  aConsultacondicao.conhecaObj( aCtrlClientes.getCtrlCondicoes, oCliente.getaCondicao );
  aux:= aConsultacondicao.btn_botao_sair.Caption;
  aConsultacondicao.btn_botao_sair.Caption:= 'Selecionar';
  aConsultacondicao.ShowModal;
  aConsultacondicao.btn_botao_sair.Caption:= aux;

  self.edt_cod_condicao_pagamento.Text:= IntToStr( oCliente.getaCondicao.getCodigo );
  self.edt_pesquisa_condicao_pagamento.Text:= oCliente.getaCondicao.getCondicao;
end;

procedure Tform_cadastro_clientes.btn_pesquisa_tipo_contatoClick(
  Sender: TObject);
  var aux : string;
begin
//  inherited;
  aConsultaContatos.conhecaObj( aCtrlClientes.getCtrlTiposContatos, oCliente.getoContato );
  aux:= aConsultaContatos.btn_botao_sair.Caption;
  aConsultaContatos.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaContatos.ShowModal;
  aConsultaContatos.btn_botao_sair.Caption:= aux;

  self.edt_cod_contato.Text:= IntToStr( oCliente.getoContato.getCodigo );
  self.edt_tipo_contato.Text:= oCliente.getoContato.getTipoContato;

  lbl_nome_tipo.Caption:= edt_tipo_contato.Text;
end;

procedure Tform_cadastro_clientes.carregaEdt;
begin
  inherited;

  if oCliente.getCodigo <> 0 then
     self.edt_codigo.Text:= IntToStr( oCliente.getCodigo );

  self.edt_razao_social.Text:= oCliente.getNomeRazaoSocial;
  self.edt_nome_fantasia.Text:= oCliente.getApelidoFantasia;
  self.edt_endereco.Text:= oCliente.getEndereco;
  self.edt_numero.Text:= oCliente.getNumero;
  self.edt_complemento.Text:= oCliente.getComplemento;
  self.edt_bairro.Text:= oCliente.getBairro;
  self.edt_cep.Text:= oCliente.getCep;
  self.edt_cod_cidade.Text:= IntToStr( oCliente.getaCidade.getCodigo );
  self.edt_cidade.Text:= oCliente.getaCidade.getCidade;
  self.edt_uf.Text:= oCliente.getaCidade.getoEstado.getUF;
  self.edt_cod_contato.Text:= IntToStr( oCliente.getoContato.getCodigo );
  self.edt_tipo_contato.Text:= oCliente.getoContato.getTipoContato;
  self.edt_nome_tipo_selecionado.Text:= oCliente.getContatoAux1;
  self.edt_algo.Text:= oCliente.getContatoAux2;
  self.edt_cod_vendedor_responsavel.Text:= IntToStr( oCliente.getoFuncionario.getCodigo );
  self.edt_pesquisar_registro.Text:= oCliente.getoFuncionario.getNomeRazaoSocial;
  self.edt_cnpj.Text:= oCliente.getCnpjCpf;
  self.edt_ie.Text:= oCliente.getIeRg;
  self.edt_limite_credito.Text:= FloatToStr( oCliente.getLimite );
  self.edt_cod_condicao_pagamento.Text:= IntToStr( oCliente.getaCondicao.getCodigo );
  self.edt_pesquisa_condicao_pagamento.Text:= oCliente.getaCondicao.getCondicao;
  self.edt_data_cadastro.Text:= DateToStr( oCliente.getDataCad);
  self.edt_data_ult_alt.Text:= DateToStr(oCliente.getUltAlt);
end;

procedure Tform_cadastro_clientes.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oCliente:= Clientes ( pObj );
  aCtrlClientes:= ctrlClientes( pCtrl );

  self.limpaEdt;
  self.limparItens;
  self.carregaEdt;
end;

procedure Tform_cadastro_clientes.desbloqueiaBtnPesquisa;
begin
  self.btn_adicionar_cidade.Visible:= True;
  self.btn_pesquisa_tipo_contato.Visible:= True;
  self.btn_pesquisa.Visible:= True;
  self.btn_pesquisa_condicao_pagamento.Visible:= True;

  self.btn_adicionar_contato.Enabled:= True;
  self.btn_botao_alterar_item.Enabled:= True;
  self.btn_botao_excluir_item.Enabled:= True;
  self.btn_limpar_grid.Enabled:= True;
end;

procedure Tform_cadastro_clientes.desbloqueiaEdt;
begin
  inherited;
  self.edt_razao_social.Enabled:= True;
  self.edt_nome_fantasia.Enabled:= True;
  self.edt_endereco.Enabled:= True;
  self.edt_numero.Enabled:= True;
  self.edt_complemento.Enabled:= True;
  self.edt_bairro.Enabled:= True;
  self.edt_cep.Enabled:= True;
  self.edt_cod_cidade.Enabled:= True;
  self.edt_cidade.Enabled:= True;
  self.edt_uf.Enabled:= True;
  self.edt_cod_contato.Enabled:= True;
  self.edt_tipo_contato.Enabled:= True;
  self.edt_nome_tipo_selecionado.Enabled:= True;
  self.edt_algo.Enabled:= True;
  self.edt_cod_vendedor_responsavel.Enabled:= True;
  self.edt_pesquisar_registro.Enabled:= True;
  self.edt_cnpj.Enabled:= True;
  self.edt_ie.Enabled:= True;
  self.edt_limite_credito.Enabled:= True;
  self.edt_cod_condicao_pagamento.Enabled:= True;
  self.edt_pesquisa_condicao_pagamento.Enabled:= True;
  self.memo_obs.Enabled:= True;
end;

procedure Tform_cadastro_clientes.FormActivate(Sender: TObject);
begin
  inherited;

  if Self.btn_botao_salvar.Caption='Salvar' then
        edt_razao_social.SetFocus;
end;

procedure Tform_cadastro_clientes.limpaEdt;
begin
  inherited;
  self.edt_razao_social.Clear;
  self.edt_nome_fantasia.Clear;
  self.edt_endereco.Clear;
  self.edt_numero.Clear;
  self.edt_complemento.Clear;
  self.edt_bairro.Clear;
  self.edt_cep.Clear;
  self.edt_cod_cidade.Clear;
  self.edt_cidade.Clear;
  self.edt_uf.Clear;
  self.edt_cod_contato.Clear;
  self.edt_tipo_contato.Clear;
  self.edt_nome_tipo_selecionado.Clear;
  self.edt_algo.Clear;
  self.edt_cod_vendedor_responsavel.Clear;
  self.edt_pesquisar_registro.Clear;
  self.edt_cnpj.Clear;
  self.edt_ie.Clear;
  self.edt_limite_credito.Clear;
  self.edt_cod_condicao_pagamento.Clear;
  self.edt_pesquisa_condicao_pagamento.Clear;
  self.memo_obs.Clear;
  Self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_clientes.limparItens;
begin
  self.edt_cod_contato.Clear;
  self.edt_tipo_contato.Clear;
  self.edt_nome_tipo_selecionado.Clear;
  self.edt_algo.Clear;
end;

procedure Tform_cadastro_clientes.ListView1SelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  inherited;
  if Selected then
  begin
    btn_botao_excluir_item.Enabled:= True;
    btn_botao_alterar_item.Enabled:= True;
  end
  else
  begin
    btn_botao_excluir_item.Enabled:= False;
    btn_botao_alterar_item.Enabled:= False;
  end;
end;

procedure Tform_cadastro_clientes.sair;
begin
  inherited;

end;

procedure Tform_cadastro_clientes.salvar;
begin
  inherited;
  if validaFormulario then
  begin
      oCliente.setCodigo( StrToInt ( self.edt_codigo.Text ) );
      oCliente.setNomeRazaoSocial( self.edt_razao_social.Text );
      oCliente.setApelidoFantasia( self.edt_nome_fantasia.Text );
      oCliente.setEndereco( self.edt_endereco.Text );
      oCliente.setNumero( self.edt_numero.Text );
      oCliente.setComplemento( self.edt_complemento.Text );
      oCliente.setBairro( self.edt_bairro.Text );
      oCliente.setCep( self.edt_cep.Text );
      oCliente.getaCidade.setCodigo( StrToInt ( self.edt_cod_cidade.Text ) );
      oCliente.getaCidade.setCidade( self.edt_cidade.Text );
      oCliente.getaCidade.getoEstado.setUF( self.edt_uf.Text );
      oCliente.getoContato.setCodigo( StrToInt ( self.edt_cod_contato.Text ) );
      oCliente.getoContato.setTipoContato( self.edt_tipo_contato.Text );
      oCliente.setContatoAux1( self.edt_nome_tipo_selecionado.Text );
      oCliente.setContatoAux2( self.edt_algo.Text );
      oCliente.getoFuncionario.setCodigo( StrToInt ( self.edt_cod_vendedor_responsavel.Text ) );
      oCliente.getoFuncionario.setNomeRazaoSocial( self.edt_pesquisar_registro.Text );
      oCliente.setCnpjCpf( self.edt_cnpj.Text );
      oCliente.setIeRg( self.edt_ie.Text );
      oCliente.setLimiteCredito( StrToFloat ( self.edt_limite_credito.Text ));
      oCliente.getaCondicao.setCodigo( StrToInt ( self.edt_cod_condicao_pagamento.Text ) );
      oCliente.getaCondicao.setCondicao( self.edt_pesquisa_condicao_pagamento.Text );
      oCliente.setObs( self.memo_obs.Text );
      oCliente.setDataCad( Date );
      oCliente.setUltAlt( Date );

      if btn_botao_salvar.Caption='Salvar' then
         aCtrlClientes.salvar( oCliente.clone )
      else
         aCtrlClientes.excluir( oCliente.clone );

      self.sair;

  end;

end;

procedure Tform_cadastro_clientes.setFrmConsultaCidade(pConsulta: TObject);
begin
  aConsultacidades:= Tform_consulta_cidades( pConsulta );
end;

procedure Tform_cadastro_clientes.setFrmConsultaCondicaoPagamento(
  pConsulta: TObject);
begin
  aConsultacondicao:= Tform_consulta_condicoes_pagamentos( pConsulta );
end;

procedure Tform_cadastro_clientes.setFrmConsultaContatos(pConsulta: TObject);
begin
  aConsultaContatos:= Tform_consulta_tipos_contatos( pConsulta );
end;

procedure Tform_cadastro_clientes.setFrmConsultaFuncionarios(
  pConsulta: TObject);
begin
  aConsultaFuncionarios:= Tform_consulta_funcionarios( pConsulta );
end;

function Tform_cadastro_clientes.validaFormulario: Boolean;
begin
  Result:= False;

  if Self.edt_razao_social.Text = '' then
  begin
    MessageDlg( 'O campo Razão Social é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_razao_social.SetFocus;
    Exit;
  end;

  if Self.edt_nome_fantasia.Text = '' then
  begin
    MessageDlg( 'O campo Nome Fantasia é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_nome_fantasia.SetFocus;
    Exit;
  end;

  if Self.edt_endereco.Text = '' then
  begin
    MessageDlg( 'O campo Endereço é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_endereco.SetFocus;
    Exit;
  end;

  if Self.edt_numero.Text = '' then
  begin
    MessageDlg( 'O campo Número é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_numero.SetFocus;
    Exit;
  end;

  if Self.edt_bairro.Text = '' then
  begin
    MessageDlg( 'O campo Bairro é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_bairro.SetFocus;
    Exit;
  end;

  if Self.edt_cidade.Text = '' then
  begin
    MessageDlg( 'O campo Cidade é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_cidade.SetFocus;
    Exit;
  end;

//  if Self.edt_cpf_cnpj.Text = '' then
//  begin
//    MessageDlg( 'O campo CPF/CNPJ é obrigatório!', MtInformation, [ MbOK ], 0 );
//    edt_cpf_cnpj.SetFocus;
//    Exit;
//  end;

  if Self.edt_ie.Text = '' then
  begin
    MessageDlg( 'O campo IE é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_ie.SetFocus;
    Exit;
  end;

  if Self.edt_pesquisar_registro.Text = '' then
  begin
    MessageDlg( 'O campo Vendedor/Responsável é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_pesquisar_registro.SetFocus;
    Exit;
  end;

  if Self.edt_pesquisa_condicao_pagamento.Text = '' then
  begin
    MessageDlg( 'O campo Condição de Pagamento é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_pesquisa_condicao_pagamento.SetFocus;
    Exit;
  end;

  if Self.edt_limite_credito.Text = '' then
  begin
    MessageDlg( 'O campo Limite de Crédito é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_limite_credito.SetFocus;
    Exit;
  end;

 Result:= true;
end;

function Tform_cadastro_clientes.validaItens: Boolean;
begin
  Result:= False;

  if Self.edt_tipo_contato.Text = '' then
  begin
    MessageDlg( 'O campo Tipo de Contato é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_tipo_contato.SetFocus;
    Exit;
  end;

  if Self.edt_nome_tipo_selecionado.Text = '' then
  begin
    MessageDlg( 'O campo é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_nome_tipo_selecionado.SetFocus;
    Exit;
  end;

 Result:= true;
end;

end.
