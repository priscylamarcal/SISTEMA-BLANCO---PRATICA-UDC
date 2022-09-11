unit uCadastroFuncionarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask, MaskEdit1, Data.DB,
  Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage, uFuncionarios, uCtrlFuncionarios,
  uConsulta_Cidades, uConsulta_TiposContatos, uConsulta_Cargos;

type
  Tform_cadastro_funcionario = class(Tform_cadastro_pai)
    lbl_titulo_dados_gerais: TLabel;
    edt_nome: PriTEdit;
    lbl_funcionario: TLabel;
    lbl_sexo: TLabel;
    lbl_titulo_endereco: TLabel;
    edt_endereco: PriTEdit;
    edt_numero: PriTEdit;
    edt_bairro: PriTEdit;
    edt_uf: PriTEdit;
    edt_cep: PriTMaskEdit;
    edt_pesquisar_cidade: PriTEdit;
    pnl_adicionar_cidade: TPanel;
    btn_adicionar_cidade: TSpeedButton;
    lbl_endereco: TLabel;
    lbl_numero: TLabel;
    lbl_bairro: TLabel;
    lbl_cep: TLabel;
    lbl_codigo_cidade: TLabel;
    lbl_cidade: TLabel;
    lbl_uf: TLabel;
    lbl_contatos: TLabel;
    edt_nome_tipo_selecionado: PriTEdit;
    edt_algo: PriTEdit;
    edt_tipo_contato: PriTEdit;
    pnl_pesquisa_tipo_contato: TPanel;
    btn_pesquisa_tipo_contato: TSpeedButton;
    lbl_tipo_contato: TLabel;
    lbl_nome_tipo: TLabel;
    lbl_algo_contato: TLabel;
    lbl_obs: TLabel;
    memo_obs: TMemo;
    rb_mas: TRadioButton;
    rb_fem: TRadioButton;
    img_funcionario: TImage;
    edt_cod_cidade: PriTEdit;
    pnl_btn_selecionar_foto: TPanel;
    btn_selecionar_foto: TSpeedButton;
    pnl_img: TPanel;
    lbl_cod_contato: TLabel;
    edt_cod_contato: PriTEdit;
    ListView1: TListView;
    lbl_titulo_trabalho: TLabel;
    lbl_cod_cargo: TLabel;
    edt_cod_cargo: PriTEdit;
    lbl_salario: TLabel;
    edt_salario: PriTEdit;
    edt_comissao: PriTEdit;
    lbl_cargo: TLabel;
    edt_cargo: PriTEdit;
    lbl_data_admissao: TLabel;
    date_data_admissao: TDateTimePicker;
    date_data_demissao: TDateTimePicker;
    lbl_data_demissao: TLabel;
    lbl_comissao: TLabel;
    pnl_btn_pesquisa: TPanel;
    btn_pesquisa: TSpeedButton;
    lbl_cpf: TLabel;
    edt_mask_cpf: PriTMaskEdit;
    edt_rg: PriTEdit;
    lbl_rg: TLabel;
    date_data_nasc: TDateTimePicker;
    lbl_data_nascimento: TLabel;
    edt_complemento: PriTEdit;
    lbl_complemento: TLabel;
    pnl_adicionar_contato: TPanel;
    btn_adicionar_contato: TSpeedButton;
    pnl_botao_alterar_item: TPanel;
    btn_botao_alterar_item: TSpeedButton;
    pnl_remover_item: TPanel;
    btn_remover_item: TSpeedButton;
    pbl_limpar_grid: TPanel;
    btn_limpar_grid: TSpeedButton;
    procedure btn_adicionar_contatoMouseEnter(Sender: TObject);
    procedure btn_adicionar_contatoMouseLeave(Sender: TObject);

    procedure btn_selecionar_fotoMouseEnter(
  Sender: TObject);
    procedure btn_selecionar_fotoMouseLeave(
  Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ListView1SelectItem(Sender: TObject; Item: TListItem;
      Selected: Boolean);
    procedure btn_adicionar_contatoClick(Sender: TObject);
    procedure btn_botao_alterar_itemClick(Sender: TObject);
    procedure btn_remover_itemClick(Sender: TObject);
    procedure btn_adicionar_cidadeClick(Sender: TObject);
    procedure btn_pesquisa_tipo_contatoClick(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
    procedure btn_limpar_gridClick(Sender: TObject);

  private
    { Private declarations }

    oFuncionario : Funcionarios;
    aCtrlFuncionarios : ctrlFuncionarios;

    aConsultaCidades : Tform_consulta_cidades;
    aConsultaContatos : Tform_consulta_tipos_contatos;
    aConsultaCargos : Tform_consulta_cargos;
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

    procedure setFrmConsultaCidades ( pConsulta : TObject );
    procedure setFrmConsultaContatos ( pConsulta : TObject );
    procedure setFrmConsultaCargos ( pConsulta : TObject );

    procedure adicionarItens;
    procedure limparItens;
    function validaItens : Boolean;
  end;

var
  form_cadastro_funcionario: Tform_cadastro_funcionario;

implementation

{$R *.dfm}


procedure Tform_cadastro_funcionario.adicionarItens;
var item : TListItem;
begin
  item:= ListView1.Items.Add;

  item.Caption:= edt_tipo_contato.Text;
  item.SubItems.Add( edt_nome_tipo_selecionado.Text );
  item.SubItems.Add( edt_algo.Text );
end;

procedure Tform_cadastro_funcionario.bloqueiaEdt;
begin
  inherited;
  self.edt_nome.Enabled:= False;
  self.rb_mas.Enabled:= False;
  self.rb_fem.Enabled:= False;
  self.edt_endereco.Enabled:= False;
  self.edt_complemento.Enabled:= False;
  self.edt_numero.Enabled:= False;
  self.edt_bairro.Enabled:= False;
  self.edt_cep.Enabled:= False;
  self.edt_cod_cidade.Enabled:= False;
  self.edt_pesquisar_cidade.Enabled:= False;
  self.edt_uf.Enabled:= False;
  self.edt_cod_contato.Enabled:= False;
  self.edt_tipo_contato.Enabled:= False;
  self.edt_nome_tipo_selecionado.Enabled:= False;
  self.edt_algo.Enabled:= False;
  self.edt_mask_cpf.Enabled:= False;
  self.edt_rg.Enabled:= False;
  self.date_data_nasc.Enabled:= False;
  self.edt_cod_cargo.Enabled:= False;
  self.edt_cargo.Enabled:= False;
  self.date_data_admissao.Enabled:= False;
  self.date_data_demissao.Enabled:= False;
  self.edt_salario.Enabled:= False;
  self.edt_comissao.Enabled:= False;
  self.memo_obs.Enabled:= False;
end;



procedure Tform_cadastro_funcionario.carregaEdt;
begin
  //inherited;

  if oFuncionario.getCodigo <> 0 then
     self.edt_codigo.Text:= IntToStr( oFuncionario.getCodigo );

  self.edt_nome.Text:= oFuncionario.getNomeRazaoSocial;
  self.edt_endereco.Text:= oFuncionario.getEndereco;
  self.edt_complemento.Text:= oFuncionario.getComplemento;
  self.edt_numero.Text:= oFuncionario.getNumero;
  self.edt_bairro.Text:= oFuncionario.getBairro;
  self.edt_cep.Text:= oFuncionario.getCep;
  self.edt_cod_cidade.Text:= IntToStr ( oFuncionario.getaCidade.getCodigo );
  self.edt_pesquisar_cidade.Text:= oFuncionario.getaCidade.getCidade;
  self.edt_uf.Text:= oFuncionario.getaCidade.getoEstado.getUF;
  self.edt_cod_contato.Text:= IntToStr ( oFuncionario.getoContato.getCodigo );
  self.edt_tipo_contato.Text:= oFuncionario.getoContato.getTipoContato;
  self.edt_nome_tipo_selecionado.Text:= oFuncionario.getContatoAux1;
  self.edt_algo.Text:= oFuncionario.getContatoAux2;
  self.edt_mask_cpf.Text:= oFuncionario.getCnpjCpf;
  self.edt_rg.Text:= oFuncionario.getIeRg;
  self.date_data_nasc.Date:= oFuncionario.getDataNasc;
  self.edt_cod_cargo.Text:= IntToStr ( oFuncionario.getoCargo.getCodigo );
  self.edt_cargo.Text:= oFuncionario.getoCargo.getCargo;
  self.date_data_admissao.Date:= oFuncionario.getDataAdmissao;
  self.date_data_demissao.Date:= oFuncionario.getDataDemis;
  self.edt_salario.Text:= FloatToStr ( oFuncionario.getSalario );
  self.edt_comissao.Text:= FloatToStr ( oFuncionario.getComissao );
  self.memo_obs.Text:= oFuncionario.getObs;

  self.edt_data_cadastro.Text:= DateToStr( oFuncionario.getDataCad);
  self.edt_data_ult_alt.Text:= DateToStr(oFuncionario.getUltAlt);
end;

procedure Tform_cadastro_funcionario.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oFuncionario:= Funcionarios( pObj );
  aCtrlFuncionarios:= ctrlFuncionarios( pCtrl );

  self.limpaEdt;
  self.limparItens;
  self.carregaEdt;
end;

procedure Tform_cadastro_funcionario.desbloqueiaEdt;
begin
  inherited;
  self.edt_nome.Enabled:= True;
  self.rb_mas.Enabled:= True;
  self.rb_fem.Enabled:= True;
  self.edt_endereco.Enabled:= True;
  self.edt_complemento.Enabled:= True;
  self.edt_numero.Enabled:= True;
  self.edt_bairro.Enabled:= True;
  self.edt_cep.Enabled:= True;
  self.edt_cod_cidade.Enabled:= True;
  self.edt_pesquisar_cidade.Enabled:= True;
  self.edt_uf.Enabled:= True;
  self.edt_cod_contato.Enabled:= True;
  self.edt_tipo_contato.Enabled:= True;
  self.edt_nome_tipo_selecionado.Enabled:= True;
  self.edt_algo.Enabled:= True;
  self.edt_mask_cpf.Enabled:= True;
  self.edt_rg.Enabled:= True;
  self.date_data_nasc.Enabled:= True;
  self.edt_cod_cargo.Enabled:= True;
  self.edt_cargo.Enabled:= True;
  self.date_data_admissao.Enabled:= True;
  self.date_data_demissao.Enabled:= True;
  self.edt_salario.Enabled:= True;
  self.edt_comissao.Enabled:= True;
  self.memo_obs.Enabled:= True;
end;

procedure Tform_cadastro_funcionario.FormShow(Sender: TObject);
begin
  inherited;

  if Self.btn_botao_salvar.Caption='Salvar' then
        edt_nome.SetFocus;

  date_data_admissao.Date:= Date;
end;

procedure Tform_cadastro_funcionario.limpaEdt;
begin
  inherited;
  self.edt_nome.clear;
  self.edt_endereco.clear;
  self.edt_complemento.clear;
  self.edt_numero.clear;
  self.edt_bairro.clear;
  self.edt_cep.clear;
  self.edt_cod_cidade.clear;
  self.edt_pesquisar_cidade.clear;
  self.edt_uf.clear;
  self.edt_cod_contato.clear;
  self.edt_tipo_contato.clear;
  self.edt_nome_tipo_selecionado.clear;
  self.edt_algo.clear;
  self.edt_mask_cpf.clear;
  self.edt_rg.clear;
  self.edt_cod_cargo.clear;
  self.edt_cargo.clear;
  self.edt_salario.clear;
  self.edt_comissao.clear;
  self.memo_obs.clear;
  Self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_funcionario.limparItens;
begin
  self.edt_cod_contato.Clear;
  self.edt_tipo_contato.Clear;
  self.edt_nome_tipo_selecionado.Clear;
  self.edt_algo.Clear;
end;

procedure Tform_cadastro_funcionario.ListView1SelectItem(Sender: TObject;
  Item: TListItem; Selected: Boolean);
begin
  inherited;
  if Selected then
  begin
    btn_remover_item.Enabled:= True;
    btn_botao_alterar_item.Enabled:= True;
  end
  else
  begin
    btn_remover_item.Enabled:= False;
    btn_botao_alterar_item.Enabled:= False;
  end;
end;

procedure Tform_cadastro_funcionario.sair;
begin
  inherited;

end;

procedure Tform_cadastro_funcionario.salvar;
begin
  inherited;
  if validaFormulario then
  begin
    oFuncionario.setCodigo( StrToInt ( self.edt_codigo.Text ) );
    oFuncionario.setNomeRazaoSocial( self.edt_nome.Text );
    oFuncionario.setEndereco( self.edt_endereco.Text );
    oFuncionario.setNumero( self.edt_numero.Text );
    oFuncionario.setComplemento( self.edt_complemento.Text );
    oFuncionario.setBairro( self.edt_bairro.Text );
    oFuncionario.setCep( self.edt_cep.Text );
    oFuncionario.getaCidade.setCodigo( StrToInt ( self.edt_cod_cidade.Text ) );
    oFuncionario.getaCidade.setCidade( self.edt_pesquisar_cidade.Text );
    oFuncionario.getaCidade.getoEstado.setUF( self.edt_uf.Text );
    oFuncionario.getoContato.setCodigo( StrToInt ( self.edt_cod_contato.Text ) );
    oFuncionario.getoContato.setTipoContato( self.edt_tipo_contato.Text );
    oFuncionario.setContatoAux1( self.edt_nome_tipo_selecionado.Text );
    oFuncionario.setContatoAux2( self.edt_algo.Text );
    oFuncionario.setCnpjCpf( self.edt_mask_cpf.Text );
    oFuncionario.setIeRg( self.edt_rg.Text );
    oFuncionario.getoCargo.setCodigo( StrToInt ( self.edt_cod_cargo.Text ) );
    oFuncionario.getoCargo.setCargo( self.edt_cargo.Text );
    oFuncionario.setDataCad( Date );
    //oFuncionario.setUltAlt( Date );
    oFuncionario.setCodUsu( StrToInt ( Self.edt_cod_usuario.Text ) );
    oFuncionario.setDataNasc( Date );
    oFuncionario.setDataAdmissao( Date );
    oFuncionario.setDataDemis( Date );
    oFuncionario.setSalario( StrToFloat (self.edt_salario.Text ));
    oFuncionario.setComissao( StrToFloat (self.edt_comissao.Text ));
    oFuncionario.setObs( self.memo_obs.Text );

    if Self.btn_botao_salvar.Caption = 'Salvar' then // INCLUIR-ALTERAR
       aCtrlFuncionarios.salvar( oFuncionario.clone )
    else //EXCLUIR
       aCtrlFuncionarios.excluir( oFuncionario.clone );

    self.sair;
  end;
end;

procedure Tform_cadastro_funcionario.setFrmConsultaCargos(pConsulta: TObject);
begin
  aConsultaCargos:= Tform_consulta_cargos( pConsulta );
end;

procedure Tform_cadastro_funcionario.setFrmConsultaCidades(pConsulta: TObject);
begin
  aConsultacidades:= Tform_consulta_cidades( pConsulta );
end;

procedure Tform_cadastro_funcionario.setFrmConsultaContatos(pConsulta: TObject);
begin
  aConsultaContatos:= Tform_consulta_tipos_contatos( pConsulta );
end;

function Tform_cadastro_funcionario.validaFormulario: Boolean;
begin
  Result:= False;

  if Self.edt_nome.Text = '' then
  begin
    MessageDlg( 'O campo Funcionário é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_nome.SetFocus;
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

  if Self.edt_pesquisar_cidade.Text = '' then
  begin
    MessageDlg( 'O campo Cidade é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_pesquisar_cidade.SetFocus;
    Exit;
  end;

//  if Self.edt_cpf_cnpj.Text = '' then
//  begin
//    MessageDlg( 'O campo CPF/CNPJ é obrigatório!', MtInformation, [ MbOK ], 0 );
//    edt_cpf_cnpj.SetFocus;
//    Exit;
//  end;

  if Self.edt_rg.Text = '' then
  begin
    MessageDlg( 'O campo RG é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_rg.SetFocus;
    Exit;
  end;

//  if Self.date_data_nasc.Date = StrToDate (FormatDateTime('dd/mm/yyyy', Date) ) then
//  begin
//    MessageDlg( 'O campo RG/IE é obrigatório!', MtInformation, [ MbOK ], 0 );
//    date_data_nasc.SetFocus;
//    Exit;
//  end;

  if Self.edt_cargo.Text = '' then
  begin
    MessageDlg( 'O campo Cargo é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_cargo.SetFocus;
    Exit;
  end;

  if Self.edt_salario.Text = '' then
  begin
    MessageDlg( 'O campo Salário é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_salario.SetFocus;
    Exit;
  end;

  if Self.edt_comissao.Text = '' then
  begin
    MessageDlg( 'O campo Comissão é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_comissao.SetFocus;
    Exit;
  end;

 Result:= true;
end;

function Tform_cadastro_funcionario.validaItens: Boolean;
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

procedure Tform_cadastro_funcionario.btn_adicionar_cidadeClick(Sender: TObject);
var aux : string;
begin
  //inherited;
  aConsultacidades.conhecaObj( aCtrlFuncionarios.getCtrlCidades, oFuncionario.getaCidade );
  aux:= aConsultacidades.btn_botao_sair.Caption;
  aConsultacidades.btn_botao_sair.Caption:= 'Selecionar';
  aConsultacidades.ShowModal;
  aConsultacidades.btn_botao_sair.Caption:= aux;

  self.edt_cod_cidade.Text:= IntToStr( oFuncionario.getaCidade.getCodigo );
  self.edt_pesquisar_cidade.Text:= oFuncionario.getaCidade.getCidade;
  self.edt_uf.Text:= oFuncionario.getaCidade.getoEstado.getUF;
end;

procedure Tform_cadastro_funcionario.btn_adicionar_contatoClick(
  Sender: TObject);
begin
  inherited;
  if validaItens then
  begin
    adicionarItens;
    limparItens;
    edt_cod_contato.SetFocus;
  end;
end;

procedure Tform_cadastro_funcionario.btn_botao_alterar_itemClick(
  Sender: TObject);
begin
  inherited;
  edt_tipo_contato.Text:= ListView1.Selected.Caption;
  edt_nome_tipo_selecionado.Text:= ListView1.Selected.SubItems[0];
  edt_algo.Text:= ListView1.Selected.SubItems[1];
end;

procedure Tform_cadastro_funcionario.btn_limpar_gridClick(Sender: TObject);
begin
  inherited;
  ListView1.Clear;
end;

procedure Tform_cadastro_funcionario.btn_pesquisaClick(Sender: TObject);
var aux : string;
begin
  //inherited;
  aConsultaCargos.conhecaObj( aCtrlFuncionarios.getCtrlCargos, oFuncionario.getoCargo );
  aux:= aConsultaCargos.btn_botao_sair.Caption;
  aConsultaCargos.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaCargos.ShowModal;
  aConsultaCargos.btn_botao_sair.Caption:= aux;

  self.edt_cod_cargo.Text:= IntToStr( oFuncionario.getoCargo.getCodigo );
  self.edt_cargo.Text:= oFuncionario.getoCargo.getCargo;
end;

procedure Tform_cadastro_funcionario.btn_pesquisa_tipo_contatoClick(
  Sender: TObject);
  var aux : string;
begin
//  inherited;
  aConsultaContatos.conhecaObj( aCtrlFuncionarios.getCtrlTiposContatos, oFuncionario.getoContato );
  aux:= aConsultaContatos.btn_botao_sair.Caption;
  aConsultaContatos.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaContatos.ShowModal;
  aConsultaContatos.btn_botao_sair.Caption:= aux;

  self.edt_cod_contato.Text:= IntToStr( oFuncionario.getoContato.getCodigo );
  self.edt_tipo_contato.Text:= oFuncionario.getoContato.getTipoContato;

  lbl_nome_tipo.Caption:= edt_tipo_contato.Text;
end;

procedure Tform_cadastro_funcionario.btn_remover_itemClick(Sender: TObject);
begin
  inherited;
  if ListView1.ItemFocused.Index = ListView1.Items.Count - 1 then
     ListView1.DeleteSelected
  else
    MessageDlg( 'Primeiro deve excluir o último contato!', MtInformation, [ MbOK ], 0 );
end;

//---------------------ESTILOS BOTÕES---------------------//

procedure Tform_cadastro_funcionario.btn_adicionar_contatoMouseEnter(
  Sender: TObject);
begin
  btn_adicionar_contato.Font.Style:= [fsBold];
end;

procedure Tform_cadastro_funcionario.btn_adicionar_contatoMouseLeave(
  Sender: TObject);
begin
  btn_adicionar_contato.Font.Style:= [];
end;

procedure Tform_cadastro_funcionario.btn_selecionar_fotoMouseEnter(
  Sender: TObject);
begin
  btn_selecionar_foto.Font.Style:= [fsBold];
end;

procedure Tform_cadastro_funcionario.btn_selecionar_fotoMouseLeave(
  Sender: TObject);
begin
  btn_selecionar_foto.Font.Style:= [];
end;



end.
