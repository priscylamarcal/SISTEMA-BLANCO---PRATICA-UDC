unit uCadastroProdutos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroPai, Vcl.Buttons, Vcl.StdCtrls,
  campoEdit, Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids, Vcl.Imaging.pngimage,
  Vcl.ComCtrls, uRoupas, uCtrlRoupas, uConsulta_Colecoes, uConsulta_Cores,
  uConsulta_Fornecedores, uConsulta_GruposProdutos, uConsulta_Marcas,
  uConsulta_Tamanhos;

type
  Tform_cadastro_produtos = class(Tform_cadastro_pai)
    edt_descricao_produto: PriTEdit;
    lbl_descricao_produto: TLabel;
    edt_referencia: PriTEdit;
    edt_cod_barra: PriTEdit;
    lbl_referencia: TLabel;
    lbl_cod_barra: TLabel;
    lbl_grupo_produtos: TLabel;
    lbl_marca: TLabel;
    edt_pesquisar_grupoProduto_produto: PriTEdit;
    pnl_btn_pesquisa_grupoProduto: TPanel;
    btn_pesquisa_grupoProduto: TSpeedButton;
    lbl_titulo_dados_produtos: TLabel;
    edt_pesquisar_marca_produto: PriTEdit;
    pnl_btn_pesquisa_marca: TPanel;
    btn_pesquisa_marca: TSpeedButton;
    lbl_titulo_valores: TLabel;
    edt_valor_custo: PriTEdit;
    edt_lucro: PriTEdit;
    edt_valor_venda: PriTEdit;
    lbl_valor_custo: TLabel;
    lbl_lucro: TLabel;
    lbl_valor_venda: TLabel;
    lbl_variacoes_produto: TLabel;
    edt_pesquisar_cor: PriTEdit;
    pnl_btn_pesquisa_cor: TPanel;
    btn_pesquisa_cor: TSpeedButton;
    edt_pesquisar_tamanho: PriTEdit;
    pnl_btn_pesquisa_tamanho: TPanel;
    btn_pesquisa_tamanho: TSpeedButton;
    lbl_cor: TLabel;
    lbl_tamanho: TLabel;
    edt_quant_total_produtos: PriTEdit;
    lbl_qtd_total_produtos: TLabel;
    edt_pesquisar_registro: PriTEdit;
    pnl_btn_pesquisa: TPanel;
    btn_pesquisa: TSpeedButton;
    edt_colecao: PriTEdit;
    Panel1: TPanel;
    SpeedButton1: TSpeedButton;
    lbl_fornecedor: TLabel;
    lbl_colecao: TLabel;
    lbl_observacoes: TLabel;
    memo_obs: TMemo;
    ListView1: TListView;
    pnl_img: TPanel;
    img_funcionario: TImage;
    pnl_btn_selecionar_foto: TPanel;
    btn_selecionar_foto: TSpeedButton;
    lbl_cod_grupo_produto: TLabel;
    edt_cod_grupo_produto: PriTEdit;
    lbl_cod_marca: TLabel;
    edt_cod_marca: PriTEdit;
    lbl_cod_cor: TLabel;
    edt_cod_cor: PriTEdit;
    lbl_cod_tamanho: TLabel;
    edt_cod_tamanho: PriTEdit;
    lbl_cod_fornecedor: TLabel;
    edt_cod_fornecedor: PriTEdit;
    lbl_cod_colecao: TLabel;
    edt_cod_colecao: PriTEdit;
    pbl_limpar_grid: TPanel;
    btn_limpar_grid: TSpeedButton;
    pnl_botao_excluir_item: TPanel;
    btn_botao_excluir_item: TSpeedButton;
    pnl_botao_alterar: TPanel;
    btn_botao_alterar_item: TSpeedButton;
    pnl_adicionar_contato: TPanel;
    btn_adicionar_contato: TSpeedButton;
    procedure btn_pesquisa_grupoProdutoClick(Sender: TObject);
    procedure btn_pesquisa_marcaClick(Sender: TObject);
    procedure btn_pesquisa_corClick(Sender: TObject);
    procedure btn_pesquisa_tamanhoClick(Sender: TObject);
    procedure btn_pesquisaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }

    aRoupa : Roupas;
    aCtrlRoupas : ctrlRoupas;

    aConsultaGruposProdutos : Tform_consulta_grupos_produtos;
    aConsultaMarcas : Tform_consulta_marcas;
    aConsultaCores : Tform_consulta_cores;
    aConsultaTamanhos : Tform_consulta_tamanhos;
    aConsultaFornecedores : Tform_consulta_fornecedores;
    aConsultaColecoes : Tform_consulta_colecoes;
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

    procedure setFrmConsultaGruposProdutos ( pConsulta : TObject );
    procedure setFrmConsultaMarcas ( pConsulta : TObject );
    procedure setFrmConsultaCores ( pConsulta : TObject );
    procedure setFrmConsultaTamanhos ( pConsulta : TObject );
    procedure setFrmConsultaFornecedores ( pConsulta : TObject );
    procedure setFrmConsultaColecoes ( pConsulta : TObject );

    procedure adicionarItens;
    procedure limparItens;
    function validaItens : Boolean;
  end;

var
  form_cadastro_produtos: Tform_cadastro_produtos;

implementation

{$R *.dfm}

{ Tform_cadastro_produtos }

procedure Tform_cadastro_produtos.adicionarItens;
begin

end;

procedure Tform_cadastro_produtos.bloqueiaEdt;
begin
  inherited;
  self.edt_descricao_produto.Enabled:= False;
  self.edt_cod_barra.Enabled:= False;
  self.edt_referencia.Enabled:= False;
  self.edt_cod_grupo_produto.Enabled:= False;
  self.edt_pesquisar_grupoProduto_produto.Enabled:= False;
  self.edt_cod_marca.Enabled:= False;
  self.edt_pesquisar_marca_produto.Enabled:= False;
  self.edt_valor_custo.Enabled:= False;
  self.edt_lucro.Enabled:= False;
  self.edt_valor_venda.Enabled:= False;
  self.edt_cod_cor.Enabled:= False;
  self.edt_pesquisar_cor.Enabled:= False;
  self.edt_cod_tamanho.Enabled:= False;
  self.edt_pesquisar_tamanho.Enabled:= False;
  self.edt_cod_fornecedor.Enabled:= False;
  self.edt_pesquisar_registro.Enabled:= False;
  self.edt_cod_colecao.Enabled:= False;
  self.edt_colecao.Enabled:= False;
  self.memo_obs.Enabled:= False;
end;

procedure Tform_cadastro_produtos.btn_pesquisaClick(Sender: TObject);
var aux : string;
begin
  aConsultaFornecedores.conhecaObj( aCtrlRoupas.getCtrlFornecedores, aRoupa.getoFornecedor );
  aux := aConsultaFornecedores.btn_botao_sair.Caption;
  aConsultaFornecedores.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaFornecedores.ShowModal;
  aConsultaFornecedores.btn_botao_sair.Caption:= aux;

  self.edt_cod_fornecedor.Text:= IntToStr( aRoupa.getoFornecedor.getCodigo );
  self.edt_pesquisar_registro.Text:= aRoupa.getoFornecedor.getNomeRazaoSocial;
end;

procedure Tform_cadastro_produtos.btn_pesquisa_corClick(Sender: TObject);
var aux : string;
begin
  aConsultaCores.conhecaObj( aCtrlRoupas.getCtrlCores, aRoupa.getaCor );
  aux := aConsultaCores.btn_botao_sair.Caption;
  aConsultaCores.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaCores.ShowModal;
  aConsultaCores.btn_botao_sair.Caption:= aux;

  self.edt_cod_cor.Text:= IntToStr( aRoupa.getaCor.getCodigo );
  self.edt_pesquisar_cor.Text:= aRoupa.getaCor.getCor;
end;

procedure Tform_cadastro_produtos.btn_pesquisa_grupoProdutoClick(
  Sender: TObject);
var aux : string;
begin
  aConsultaGruposProdutos.conhecaObj( aCtrlRoupas.getCtrlGruposProdutos, aRoupa.getoGrupoRoupa );
  aux := aConsultaGruposProdutos.btn_botao_sair.Caption;
  aConsultaGruposProdutos.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaGruposProdutos.ShowModal;
  aConsultaGruposProdutos.btn_botao_sair.Caption:= aux;

  self.edt_cod_grupo_produto.Text:= IntToStr( aRoupa.getoGrupoRoupa.getCodigo );
  self.edt_pesquisar_grupoProduto_produto.Text:= aRoupa.getoGrupoRoupa.getGrupoRoupa;

end;

procedure Tform_cadastro_produtos.btn_pesquisa_marcaClick(Sender: TObject);
var aux : string;
begin
  aConsultaMarcas.conhecaObj( aCtrlRoupas.getCtrlMarcas, aRoupa.getaMarca );
  aux := aConsultaMarcas.btn_botao_sair.Caption;
  aConsultaMarcas.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaMarcas.ShowModal;
  aConsultaMarcas.btn_botao_sair.Caption:= aux;

  self.edt_cod_marca.Text:= IntToStr( aRoupa.getaMarca.getCodigo );
  self.edt_pesquisar_marca_produto.Text:= aRoupa.getaMarca.getMarca;
end;

procedure Tform_cadastro_produtos.btn_pesquisa_tamanhoClick(Sender: TObject);
var aux : string;
begin
  aConsultaTamanhos.conhecaObj( aCtrlRoupas.getCtrlTamanhos, aRoupa.getoTamanho );
  aux := aConsultaTamanhos.btn_botao_sair.Caption;
  aConsultaTamanhos.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaTamanhos.ShowModal;
  aConsultaTamanhos.btn_botao_sair.Caption:= aux;

  self.edt_cod_tamanho.Text:= IntToStr( aRoupa.getoTamanho.getCodigo );
  self.edt_pesquisar_tamanho.Text:= aRoupa.getoTamanho.getSiglaTamanho;
end;

procedure Tform_cadastro_produtos.carregaEdt;
begin
  inherited;

  if aRoupa.getCodigo <> 0 then
     self.edt_codigo.Text:= IntToStr( aRoupa.getCodigo );

  self.edt_descricao_produto.Text:= aRoupa.getDescricao;
  self.edt_cod_barra.Text:= aRoupa.getCodBarra;
  self.edt_referencia.Text:= aRoupa.getReferencia;
  self.edt_cod_grupo_produto.Text:= IntToStr (aRoupa.getoGrupoRoupa.getCodigo);
  self.edt_pesquisar_grupoProduto_produto.Text:= aRoupa.getoGrupoRoupa.getGrupoRoupa;
  self.edt_cod_marca.Text:= IntToStr( aRoupa.getaMarca.getCodigo );
  self.edt_pesquisar_marca_produto.Text:= aRoupa.getaMarca.getMarca;
  self.edt_valor_custo.Text:= FloatToStr( aRoupa.getValorCusto );
  self.edt_lucro.Text:= FloatToStr( aRoupa.getLucro );
  self.edt_valor_venda.Text:= FloatToStr( aRoupa.getValorVenda );
  self.edt_cod_cor.Text:= IntToStr( aRoupa.getaCor.getCodigo );
  self.edt_pesquisar_cor.Text:= aRoupa.getaCor.getCor;
  self.edt_cod_tamanho.Text:= IntToStr( aRoupa.getoTamanho.getCodigo );
  self.edt_pesquisar_tamanho.Text:= aRoupa.getoTamanho.getSiglaTamanho;
  self.edt_cod_fornecedor.Text:= IntToStr( aRoupa.getoFornecedor.getCodigo );
  self.edt_pesquisar_registro.Text:= aRoupa.getoFornecedor.getNomeRazaoSocial;
  self.edt_cod_colecao.Text:= IntToStr( aRoupa.getaColecao.getCodigo );
  self.edt_colecao.Text:= aRoupa.getaColecao.getColecao;
  self.memo_obs.Text:= aRoupa.getObs;
  self.edt_data_cadastro.Text:= DateToStr( aRoupa.getDataCad);
  self.edt_data_ult_alt.Text:= DateToStr(aRoupa.getUltAlt);
end;

procedure Tform_cadastro_produtos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  aRoupa:= Roupas( pObj );
  aCtrlRoupas:= ctrlRoupas( pCtrl );

  self.limpaEdt;
  self.carregaEdt;
end;

procedure Tform_cadastro_produtos.desbloqueiaEdt;
begin
  inherited;
  self.edt_descricao_produto.Enabled:= True;
  self.edt_cod_barra.Enabled:= True;
  self.edt_referencia.Enabled:= True;
  self.edt_cod_grupo_produto.Enabled:= True;
  self.edt_pesquisar_grupoProduto_produto.Enabled:= True;
  self.edt_cod_marca.Enabled:= True;
  self.edt_pesquisar_marca_produto.Enabled:= True;
  self.edt_valor_custo.Enabled:= True;
  self.edt_lucro.Enabled:= True;
  self.edt_valor_venda.Enabled:= True;
  self.edt_cod_cor.Enabled:= True;
  self.edt_pesquisar_cor.Enabled:= True;
  self.edt_cod_tamanho.Enabled:= True;
  self.edt_pesquisar_tamanho.Enabled:= True;
  self.edt_cod_fornecedor.Enabled:= True;
  self.edt_pesquisar_registro.Enabled:= True;
  self.edt_cod_colecao.Enabled:= True;
  self.edt_colecao.Enabled:= True;
  self.memo_obs.Enabled:= True;
end;

procedure Tform_cadastro_produtos.limpaEdt;
begin
  inherited;
  self.edt_descricao_produto.Clear;
  self.edt_cod_barra.Clear;
  self.edt_referencia.Clear;
  self.edt_cod_grupo_produto.Clear;
  self.edt_pesquisar_grupoProduto_produto.Clear;
  self.edt_cod_marca.Clear;
  self.edt_pesquisar_marca_produto.Clear;
  self.edt_valor_custo.Clear;
  self.edt_lucro.Clear;
  self.edt_valor_venda.Clear;
  self.edt_cod_cor.Clear;
  self.edt_pesquisar_cor.Clear;
  self.edt_cod_tamanho.Clear;
  self.edt_pesquisar_tamanho.Clear;
  self.edt_cod_fornecedor.Clear;
  self.edt_pesquisar_registro.Clear;
  self.edt_cod_colecao.Clear;
  self.edt_colecao.Clear;
  self.memo_obs.Clear;
  Self.edt_data_cadastro.Clear;
  self.edt_data_ult_alt.Clear;
end;

procedure Tform_cadastro_produtos.limparItens;
begin

end;

procedure Tform_cadastro_produtos.sair;
begin
  inherited;

end;

procedure Tform_cadastro_produtos.salvar;
begin
  inherited;
  if validaFormulario then
  begin
      aRoupa.setCodigo( StrToInt ( self.edt_codigo.Text ) );

      aRoupa.setDescricao( self.edt_descricao_produto.Text );
      aRoupa.setCodBarra( self.edt_cod_barra.Text );
      aRoupa.setReferencia( self.edt_referencia.Text );

      aRoupa.getoGrupoRoupa.setCodigo( StrToInt ( self.edt_cod_grupo_produto.Text ) );
      aRoupa.getoGrupoRoupa.setGrupoRoupa( self.edt_pesquisar_grupoProduto_produto.Text );

      aRoupa.getaMarca.setCodigo( StrToInt ( self.edt_cod_marca.Text ) );
      aRoupa.getaMarca.setMarca( self.edt_pesquisar_marca_produto.Text );

      aRoupa.setValorCusto( StrToFloat ( self.edt_valor_custo.Text ) );
      aRoupa.setLucro( StrToFloat ( self.edt_lucro.Text ) );
      aRoupa.setValorVenda( StrToFloat ( self.edt_valor_venda.Text ) );

      aRoupa.getaCor.setCodigo( StrToInt ( self.edt_cod_cor.Text ) );
      aRoupa.getaCor.setCor( self.edt_pesquisar_cor.Text );

      aRoupa.getoTamanho.setCodigo( StrToInt ( self.edt_cod_tamanho.Text ) );
      aRoupa.getoTamanho.setSiglaTamanho( self.edt_pesquisar_tamanho.Text );

      aRoupa.getoFornecedor.setCodigo( StrToInt ( self.edt_cod_fornecedor.Text ) );

      aRoupa.getoFornecedor.setNomeRazaoSocial( self.edt_pesquisar_registro.Text );
      aRoupa.getaColecao.setCodigo( StrToInt ( self.edt_cod_colecao.Text ) );
      aRoupa.getaColecao.setColecao( self.edt_colecao.Text );

      aRoupa.setObs( self.memo_obs.Text );
      aRoupa.setDataCad( Date );
      aRoupa.setUltAlt( Date );
      aRoupa.setCodUsu( StrToInt ( Self.edt_cod_usuario.Text ) );

      if self.btn_botao_salvar.Caption = 'Salvar' then
         aCtrlRoupas.salvar( aRoupa.clone )
      else
         aCtrlRoupas.excluir( aRoupa.clone );

      self.sair;
  end;
end;

procedure Tform_cadastro_produtos.setFrmConsultaColecoes(pConsulta: TObject);
begin
  aConsultaColecoes:= Tform_consulta_colecoes( pConsulta );
end;

procedure Tform_cadastro_produtos.setFrmConsultaCores(pConsulta: TObject);
begin
  aConsultaCores:= Tform_consulta_cores( pConsulta );
end;

procedure Tform_cadastro_produtos.setFrmConsultaFornecedores(
  pConsulta: TObject);
begin
  aConsultaFornecedores:= Tform_consulta_fornecedores( pConsulta );
end;

procedure Tform_cadastro_produtos.setFrmConsultaGruposProdutos(
  pConsulta: TObject);
begin
  aConsultaGruposProdutos:= Tform_consulta_grupos_produtos( pConsulta );
end;

procedure Tform_cadastro_produtos.setFrmConsultaMarcas(pConsulta: TObject);
begin
  aConsultaMarcas:= Tform_consulta_marcas( pConsulta );
end;

procedure Tform_cadastro_produtos.setFrmConsultaTamanhos(pConsulta: TObject);
begin
  aConsultaTamanhos:= Tform_consulta_tamanhos( pConsulta );
end;

procedure Tform_cadastro_produtos.SpeedButton1Click(Sender: TObject);
var aux : string;
begin
  aConsultaColecoes.conhecaObj( aCtrlRoupas.getCtrlColecoes, aRoupa.getaColecao );
  aux := aConsultaColecoes.btn_botao_sair.Caption;
  aConsultaColecoes.btn_botao_sair.Caption:= 'Selecionar';
  aConsultaColecoes.ShowModal;
  aConsultaColecoes.btn_botao_sair.Caption:= aux;

  self.edt_cod_colecao.Text:= IntToStr( aRoupa.getaColecao.getCodigo );
  self.edt_colecao.Text:= aRoupa.getaColecao.getColecao;
end;

function Tform_cadastro_produtos.validaFormulario: Boolean;
begin
  Result:= False;

  if Self.edt_descricao_produto.Text = '' then
  begin
    MessageDlg( 'O campo Descrição da Roupa é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_descricao_produto.SetFocus;
    Exit;
  end;

  if Self.edt_pesquisar_marca_produto.Text = '' then
  begin
    MessageDlg( 'O campo Marca é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_pesquisar_marca_produto.SetFocus;
    Exit;
  end;

  if Self.edt_valor_venda.Text = '' then
  begin
    MessageDlg( 'O campo Valor de Venda é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_valor_venda.SetFocus;
    Exit;
  end;

  if StrToFloat (Self.edt_valor_venda.Text) = 0 then
  begin
    MessageDlg( 'O valor de venda não pode ser 0!', MtInformation, [ MbOK ], 0 );
    edt_valor_venda.SetFocus;
    Exit;
  end;

  if Self.edt_pesquisar_registro.Text = '' then
  begin
    MessageDlg( 'O campo Fornecedor é obrigatório!', MtInformation, [ MbOK ], 0 );
    edt_pesquisar_registro.SetFocus;
    Exit;
  end;

 Result:= true;
end;

function Tform_cadastro_produtos.validaItens: Boolean;
begin

end;

end.
