unit uGerente;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  Vcl.ExtCtrls, Vcl.Buttons, Vcl.StdCtrls, Vcl.Imaging.pngimage,

  uPaises, uEstados, uDepartamentos, uCores, uColecoes, uGruposRoupas,
  uMarcas, uTamanhos, uFormaPagamento, uTiposContatos, uCidades, uCargos,
  uCondicoesPagamentos, uFornecedores, uFuncionarios, uClientes, uRoupas,

  uInter,

  uCtrlPaises, uCtrlEstados, uCtrlDepartamentos, uCtrlCores, uCtrlColecoes,
  uCtrlGruposRoupas, uCtrlMarcas, uCtrlTamanhos, uCtrlFormasPagamentos,
  uCtrlTiposContatos, uCtrlCidades, uCtrlCargos, uCtrlCondicoesPagamentos,
  uCtrlFornecedores, uCtrlFuncionarios, uCtrlClientes, uCtrlRoupas,

  uDM ;

type
  Tform_principal = class(TForm)
    pnl_principal: TPanel;
    pnl_topo: TPanel;
    img_logo2: TImage;
    img_logo1: TImage;
    pnl_central: TPanel;
    lbl_acesso_rapido: TLabel;
    pnl_vendas: TPanel;
    shp_rapido_vendas: TShape;
    spb_rapido_vendas: TSpeedButton;
    pnl_clientes: TPanel;
    shp_rapido_clientes: TShape;
    spb_rapido_clientes: TSpeedButton;
    pnl_produtos: TPanel;
    shp_rapido_produtos: TShape;
    spb_rapido_roupa: TSpeedButton;
    pnl_caixa: TPanel;
    shp_rapido_caixa: TShape;
    spb_rapido_caixa: TSpeedButton;
    pnl_contas_receber: TPanel;
    shp_rapido_contas_receber: TShape;
    spb_rapido_contas_receber: TSpeedButton;
    pnl_contas_pagar: TPanel;
    shp_rapido_contas_pagar: TShape;
    spb_rapido_contas_pagar: TSpeedButton;
    pnl_topo_menu: TPanel;
    pnl_menu: TPanel;
    spb_menu_financeiro: TSpeedButton;
    spb_menu_roupas: TSpeedButton;
    spb_menu_estoque: TSpeedButton;
    spb_menu_funcionarios: TSpeedButton;
    spb_menu_localidade: TSpeedButton;
    pnl_barra_topo_menu: TPanel;
    pnl_sair: TPanel;
    spb_sair: TSpeedButton;
    pnl_barra_botao: TPanel;
    pnl_menu_localidades: TPanel;
    spb_cidades: TSpeedButton;
    spb_estados: TSpeedButton;
    spb_paises: TSpeedButton;
    pnl_menu_produtos: TPanel;
    spb_tamanho: TSpeedButton;
    spb_cor: TSpeedButton;
    spb_colecao: TSpeedButton;
    spb_marca: TSpeedButton;
    spb_grupo_roupas: TSpeedButton;
    spb_menu_cadastros_basicos: TSpeedButton;
    pnl_funcionarios: TPanel;
    spb_departamentos: TSpeedButton;
    spb_cargos: TSpeedButton;
    pnl_financeiro: TPanel;
    spb_contas_pagar: TSpeedButton;
    spb_condicoes_pagamento: TSpeedButton;
    spb_formas_pagamento: TSpeedButton;
    spb_contas_receber: TSpeedButton;
    spb_vendas: TSpeedButton;
    pnl_cadastros_basicos: TPanel;
    spb_clientes: TSpeedButton;
    spb_fornecedores: TSpeedButton;
    spb_tipos_contato: TSpeedButton;
    spb_funcionários: TSpeedButton;
    spb_roupas: TSpeedButton;
    spb_compras: TSpeedButton;

    procedure Sair1Click(Sender: TObject);

    procedure spb_rapido_vendasMouseEnter(Sender: TObject);
    procedure spb_paisesMouseEnter(Sender: TObject);
    procedure spb_menu_localidadeMouseEnter(Sender: TObject);
    procedure pnl_topoMouseEnter(Sender: TObject);
    procedure pnl_principalMouseEnter(Sender: TObject);
    procedure img_logo1MouseEnter(Sender: TObject);

    procedure spb_rapido_vendasMouseLeave(Sender: TObject);
    procedure spb_menu_localidadeMouseLeave(Sender: TObject);
    procedure spb_paisesMouseLeave(Sender: TObject);

    procedure spb_sairClick(Sender: TObject);
    procedure spb_paisesClick(Sender: TObject);
    procedure spb_estadosClick(Sender: TObject);
    procedure spb_cargosClick(Sender: TObject);

    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormResize(Sender: TObject);

    procedure spb_departamentosClick(Sender: TObject);
    procedure spb_formas_pagamentoClick(Sender: TObject);
    procedure spb_condicoes_pagamentoClick(Sender: TObject);
    procedure spb_contas_receberClick(Sender: TObject);
    procedure spb_contas_pagarClick(Sender: TObject);
    procedure spb_colecaoClick(Sender: TObject);
    procedure spb_corClick(Sender: TObject);
    procedure spb_grupo_roupasClick(Sender: TObject);
    procedure spb_marcaClick(Sender: TObject);
    procedure spb_tamanhoClick(Sender: TObject);
    procedure spb_roupasClick(Sender: TObject);
    procedure spb_fornecedoresClick(Sender: TObject);
    procedure spb_clientesClick(Sender: TObject);
    procedure spb_tipos_contatoClick(Sender: TObject);
    procedure spb_menu_estoqueClick(Sender: TObject);
    procedure spb_rapido_vendasClick(Sender: TObject);
    procedure spb_rapido_contas_receberClick(Sender: TObject);
    procedure spb_rapido_contas_pagarClick(Sender: TObject);
    procedure spb_funcionáriosClick(Sender: TObject);
    procedure spb_rapido_clientesClick(Sender: TObject);
    procedure spb_rapido_roupaClick(Sender: TObject);
    procedure spb_cidadesClick(Sender: TObject);
    procedure spb_comprasClick(Sender: TObject);
  private
    { Private declarations }

    oPais               : Paises;
    oEstado             : Estados;
    oDepartamento       : Departamentos;
    aCor                : Cores;
    aColecao            : Colecoes;
    oGrupoRoupa         : GruposRoupas;
    aMarca              : Marcas;
    oTamanho            : Tamanhos;
    aFormaPagamento     : FormasPagamentos;
    oTipoContato        : TiposContatos;
    aCidade             : Cidades;
    oCargo              : Cargos;
    aCondicao           : CondicoesPagamentos;
    oFornecedor         : Fornecedores;
    oFuncionario        : Funcionarios;
    oCliente            : Clientes;
    aRoupa              : Roupas;

    aInter  : Inter;

    aCtrlPais           : ctrlPaises;
    aCtrlEstado         : ctrlEstados;
    aCtrlDepartamento   : ctrlDepartamentos;
    aCtrlCor            : ctrlCores;
    aCtrlColecao        : ctrlColecoes;
    aCtrlGrupoRoupa     : ctrlGruposRoupas;
    aCtrlMarca          : ctrlMarcas;
    aCtrlTamanho        : ctrlTamanhos;
    aCtrlFormaPagamento : ctrlFormasPagamentos;
    aCtrlTipoContato    : ctrlTiposContatos;
    aCtrlCidade         : ctrlCidades;
    aCtrlCargos         : ctrlCargos;
    aCtrlCondicoes      : ctrlCondicoesPagamentos;
    aCtrlFornecedores   : ctrlFornecedores;
    aCtrlFuncionarios   : ctrlFuncionarios;
    aCtrlClientes       : ctrlClientes;
    aCtrlRoupas         : ctrlRoupas;

    aDm : TDM;

    procedure focar_botao( barraPainel: Tpanel; botao: TspeedButton;
      focar: boolean; local: string );
    procedure controlar_menu ( botao : TSpeedButton; ativar : Boolean );
  protected
  public
    { Public declarations }
  end;

var
  form_principal: Tform_principal;

implementation

{$R *.dfm}


procedure Tform_principal.FormCreate(Sender: TObject);
begin
  aInter := Inter.crieObj;

  oPais                 := Paises.crieObj;
  oEstado               := Estados.crieObj;
  oDepartamento         := Departamentos.crieObj;
  aCor                  := Cores.crieObj;
  aColecao              := Colecoes.crieObj;
  oGrupoRoupa           := gruposRoupas.crieObj;
  aMarca                := Marcas.crieObj;
  oTamanho              := Tamanhos.crieObj;
  aFormaPagamento       := FormasPagamentos.crieObj;
  oTipoContato          := TiposContatos.crieObj;
  aCidade               := Cidades.crieObj;
  oCargo                := Cargos.crieObj;
  aCondicao             := CondicoesPagamentos.crieObj;
  oFornecedor           := Fornecedores.crieObj;
  oFuncionario          := Funcionarios.crieObj;
  oCliente              := Clientes.crieObj;
  aRoupa                := Roupas.crieObj;

  aCtrlPais             := ctrlPaises.crieObj;
  aCtrlEstado           := ctrlEstados.crieObj;
  aCtrlDepartamento     := ctrlDepartamentos.crieObj;
  aCtrlCor              := ctrlCores.crieObj;
  aCtrlColecao          := ctrlColecoes.crieObj;
  aCtrlGrupoRoupa       := ctrlGruposRoupas.crieObj;
  aCtrlMarca            := ctrlMarcas.crieObj;
  aCtrlTamanho          := ctrlTamanhos.crieObj;
  aCtrlFormaPagamento   := ctrlFormasPagamentos.crieObj;
  aCtrlTipoContato      := ctrlTiposContatos.crieObj;
  aCtrlCidade           := ctrlCidades.crieObj;
  aCtrlCargos           := ctrlCargos.crieObj;
  aCtrlCondicoes        := ctrlCondicoesPagamentos.crieObj;
  aCtrlFornecedores     := ctrlFornecedores.crieObj;
  aCtrlFuncionarios     := ctrlFuncionarios.crieObj;
  aCtrlClientes         := ctrlClientes.crieObj;
  aCtrlRoupas           := ctrlRoupas.crieObj;

  aDm:= TDM.Create(nil);

  aCtrlPais.setDM( aDm );
  aCtrlEstado.setDM( aDm );
  aCtrlDepartamento.setDM( aDm );
  aCtrlCor.setDM( aDm );
  aCtrlColecao.setDM( aDm );
  aCtrlGrupoRoupa.setDM( aDm );
  aCtrlMarca.setDM( aDm );
  aCtrlTamanho.setDM( aDm );
  aCtrlFormaPagamento.setDM( aDm );
  aCtrlTipoContato.setDM( aDm );
  aCtrlCidade.setDM( aDm );
  aCtrlCargos.setDM( aDm );
  aCtrlCondicoes.setDM( aDm );
  aCtrlFornecedores.setDM( aDm );
  aCtrlFuncionarios.setDM( aDm );
  aCtrlClientes.setDM( aDm );
  aCtrlRoupas.setDM( aDm );

  aCtrlEstado.setCtrlPaises( aCtrlPais );

  aCtrlCidade.setCtrlEstados( aCtrlEstado );

  aCtrlCargos.setCtrlDepartamentos( aCtrlDepartamento );

  aCtrlCondicoes.setCtrlFormas( aCtrlFormaPagamento );

  aCtrlFornecedores.setCtrlCidades( aCtrlCidade );
  aCtrlFornecedores.setCtrlTiposContatos( aCtrlTipoContato );
  aCtrlFornecedores.setCtrlCondicoes( aCtrlCondicoes );

  aCtrlFuncionarios.setCtrlCidades( aCtrlCidade );
  aCtrlFuncionarios.setCtrlTiposContatos( aCtrlTipoContato );
  aCtrlFuncionarios.setCtrlCargos( aCtrlCargos );

  aCtrlClientes.setCtrlCidades( aCtrlCidade );
  aCtrlClientes.setCtrlTiposContatos( aCtrlTipoContato );
  aCtrlClientes.setCtrlFuncionarios( aCtrlFuncionarios );
  aCtrlClientes.setCtrlCondicoes( aCtrlCondicoes );

  aCtrlRoupas.setCtrlGruposProdutos( aCtrlGrupoRoupa );
  aCtrlRoupas.setCtrlMarcas( aCtrlMarca );
  aCtrlRoupas.setCtrlCores( aCtrlCor );
  aCtrlRoupas.setCtrlTamanhos( aCtrlTamanho );
  aCtrlRoupas.setCtrlFornecedores( aCtrlFornecedores );
  aCtrlRoupas.setCtrlColecoes( aCtrlColecao );
end;

procedure Tform_principal.FormDestroy(Sender: TObject);
begin
  aInter.destrua_se;

  oPais.destrua_se;
  oEstado.destrua_se;
  oDepartamento.destrua_se;
  aCor.destrua_se;
  aColecao.destrua_se;
  oGrupoRoupa.destrua_se;
  aMarca.destrua_se;
  oTamanho.destrua_se;
  aFormaPagamento.destrua_se;
  oTipoContato.destrua_se;
  aCidade.destrua_se;
  oCargo.destrua_se;
  aCondicao.destrua_se;
  oFornecedor.destrua_se;
  oFuncionario.destrua_se;
  oCliente.destrua_se;
  aRoupa.destrua_se;

  aCtrlPais.destrua_se;
  aCtrlDepartamento.destrua_se;
  aCtrlCor.destrua_se;
  aCtrlColecao.destrua_se;
  aCtrlGrupoRoupa.destrua_se;
  aCtrlMarca.destrua_se;
  aCtrlTamanho.destrua_se;
  aCtrlFormaPagamento.destrua_se;
  aCtrlTipoContato.destrua_se;
  aCtrlEstado.destrua_se;
  aCtrlCidade.destrua_se;
  aCtrlCargos.destrua_se;
  aCtrlCondicoes.destrua_se;
  aCtrlFornecedores.destrua_se;
  aCtrlFuncionarios.destrua_se;
  aCtrlClientes.destrua_se;
  aCtrlRoupas.destrua_se;

  aDm.DisposeOf;
end;

procedure Tform_principal.img_logo1MouseEnter(Sender: TObject);
begin
  controlar_menu( nil, false );
end;

procedure Tform_principal.pnl_principalMouseEnter(Sender: TObject);
begin
  controlar_menu( nil, false );
end;

procedure Tform_principal.pnl_topoMouseEnter(Sender: TObject);
begin
  controlar_menu( nil, false );
end;

procedure Tform_principal.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure Tform_principal.spb_cargosClick(Sender: TObject);
begin
  aInter.PDCargos( aCtrlCargos, oCargo );
end;

procedure Tform_principal.spb_cidadesClick(Sender: TObject);
begin
  aInter.PDCidades( aCtrlCidade, aCidade );
end;

procedure Tform_principal.spb_clientesClick(Sender: TObject);
begin
  aInter.PDClientes( aCtrlClientes, oCliente );
end;

procedure Tform_principal.spb_colecaoClick(Sender: TObject);
begin
  aInter.PDColecoes(aCtrlColecao, aColecao);
end;

procedure Tform_principal.spb_comprasClick(Sender: TObject);
begin
  aInter.PDCompras(nil, nil);
end;

procedure Tform_principal.spb_condicoes_pagamentoClick(Sender: TObject);
begin
  aInter.PDCondicoesPagamentos(aCtrlCondicoes, aCondicao);
end;

procedure Tform_principal.spb_contas_pagarClick(Sender: TObject);
begin
  aInter.PDContasPagar(nil, nil);
end;

procedure Tform_principal.spb_contas_receberClick(Sender: TObject);
begin
  aInter.PDContasReceber(nil, nil);
end;

procedure Tform_principal.spb_corClick(Sender: TObject);
begin
  aInter.PDCores(aCtrlCor, aCor);
end;

procedure Tform_principal.spb_departamentosClick(Sender: TObject);
begin
  aInter.PDDepartamentos(aCtrlDepartamento, oDepartamento);
end;

procedure Tform_principal.spb_estadosClick(Sender: TObject);
begin
  aInter.PDEstados( aCtrlEstado, oEstado );
end;

procedure Tform_principal.spb_formas_pagamentoClick(Sender: TObject);
begin
  aInter.PDFormasPagamentos(aCtrlFormaPagamento, aFormaPagamento);
end;

procedure Tform_principal.spb_fornecedoresClick(Sender: TObject);
begin
  aInter.PDFornecedores(aCtrlFornecedores, oFornecedor);
end;

procedure Tform_principal.spb_funcionáriosClick(Sender: TObject);
begin
  aInter.PDFuncionarios(aCtrlFuncionarios, oFuncionario);
end;

procedure Tform_principal.spb_grupo_roupasClick(Sender: TObject);
begin
  aInter.PDGruposProdutos( aCtrlGrupoRoupa, oGrupoRoupa );
end;

procedure Tform_principal.spb_paisesClick(Sender: TObject);
begin
  aInter.PDPaises( aCtrlPais, oPais );
end;

procedure Tform_principal.spb_sairClick(Sender: TObject);
begin
  close;
end;

procedure Tform_principal.spb_tamanhoClick(Sender: TObject);
begin
  aInter.PDTamanhos( aCtrlTamanho, oTamanho );
end;

procedure Tform_principal.spb_tipos_contatoClick(Sender: TObject);
begin
  aInter.PDTiposContatos( aCtrlTipoContato , oTipoContato );
end;

procedure Tform_principal.spb_marcaClick(Sender: TObject);
begin
  aInter.PDMarcas( aCtrlMarca, aMarca );
end;

procedure Tform_principal.spb_menu_estoqueClick(Sender: TObject);
begin
//  aInter.PDEstoques(nil, nil);
end;

procedure Tform_principal.spb_roupasClick(Sender: TObject);
begin
  aInter.PDRoupas( aCtrlRoupas , aRoupa );
end;

procedure Tform_principal.spb_rapido_clientesClick(Sender: TObject);
begin
//  aInter.PDClientes(nil, nil);
end;

procedure Tform_principal.spb_rapido_contas_pagarClick(Sender: TObject);
begin
//  aInter.PDContasPagar(nil, nil);
end;

procedure Tform_principal.spb_rapido_contas_receberClick(Sender: TObject);
begin
//  aInter.PDContasReceber(nil, nil);
end;

procedure Tform_principal.spb_rapido_roupaClick(Sender: TObject);
begin
//  aInter.PDRoupas(nil, nil);
end;

procedure Tform_principal.spb_rapido_vendasClick(Sender: TObject);
begin
//  aInter.PDVendas(nil, nil);
end;

//---------------------FUNÇÕES---------------------//

procedure Tform_principal.spb_paisesMouseEnter(Sender: TObject);
begin
  focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TSpeedButton ), True, 'SUBMENU' );
end;

procedure Tform_principal.spb_paisesMouseLeave(Sender: TObject);
begin
  focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TSpeedButton ), False, 'SUBMENU' );
end;

procedure Tform_principal.spb_rapido_vendasMouseEnter(Sender: TObject);
begin
  //MOSTRAR A BARRA ABAIXO DO BOTAO QUE O MOUSE ESTA FOCANDO
   focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TSpeedButton ), True, 'RAPIDO' );
end;

procedure Tform_principal.spb_rapido_vendasMouseLeave(Sender: TObject);
begin
  //QUANDO O BOTAO NAO ESTIVER FOCADO NAO EXIBIRA A BARRA
  focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TSpeedButton ), False, 'RAPIDO' );
end;

procedure Tform_principal.focar_botao(barraPainel: Tpanel; botao: TspeedButton;
  focar: boolean; local: string);
begin
  if focar then //se focar = true a barra aparece
  begin
    if local = 'MENU' then
      botao.Font.Style := [fsBold];
    if local = 'SUBMENU' then
      botao.Font.Style := [fsBold]
    else
    if local = 'RAPIDO' then
      botao.Font.Style := [fsBold];

      barraPainel.Parent := botao.Parent;
      barraPainel.BringToFront;

      barraPainel.Left    := botao.Left;
      barraPainel.Top     := botao.Top + ( botao.Height - 2 );
      barraPainel.Width   := botao.Width;
      barraPainel.Visible := True;
  end else //se focar = false a barra desaparece
  begin
    if local = 'MENU' then
      botao.Font.Style := [];
    if local = 'SUBMENU' then
      botao.Font.Style := []
    else
    if local = 'RAPIDO' then
      botao.Font.Style := [];

      barraPainel.Visible := False;
  end;
end;

procedure Tform_principal.controlar_menu(botao: TSpeedButton; ativar: Boolean);
var k : integer;
begin
  if ativar then
  begin
    //percorre todos os componentes do form
    for k := 0 to form_principal.ComponentCount - 1 do
    begin
      //verifica se o componente é painel e se tag for <> 0 então é um painel de menu
      if ( form_principal.Components[k] is TPanel ) and ( ( form_principal.Components[k] as TPanel ).Tag <> 0 ) then
      begin
        //verifica se o painel é o associado ao botão que foi passado por parâmetro
        if ( form_principal.Components[k] as TPanel ).Tag = botao.Tag then
        begin
          //exibe o painel associado ao botão
          ( form_principal.Components[k] as TPanel ).Visible:= true;
          ( form_principal.Components[k] as TPanel ).Left:= botao.Left;
        end
        else
        // se nao for o painel associado ao botão que o mouse esta, então o painel é escondido
        ( form_principal.Components[k] as TPanel ).Visible:= false;
      end;
    end; //fim do for
  end
  else  //fim do ativar = true
  begin
    //percorre todos os componentes do form
    for k := 0 to form_principal.ComponentCount - 1 do
    begin
      //verifica se o componente é painel e se tag for <> 0 então é um painel de menu
      if ( form_principal.Components[k] is TPanel ) and ( ( form_principal.Components[k] as TPanel ).Tag <> 0 ) then
        ( form_principal.Components[k] as TPanel ).Visible:= false;
    end;
  end;
end;

procedure Tform_principal.spb_menu_localidadeMouseEnter(Sender: TObject);
begin
  controlar_menu( TComponent( Sender ) as TSpeedButton, true );
  focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TSpeedButton ), True, 'MENU' );
end;

procedure Tform_principal.spb_menu_localidadeMouseLeave(Sender: TObject);
begin
  focar_botao( pnl_barra_botao, ( TComponent ( Sender ) as TSpeedButton ), False, 'MENU' );
end;

procedure Tform_principal.FormResize(Sender: TObject);
begin
//PAINEL CENTRAL SERÁ REDIMENSIONADO DE ACORDO COM O TAMANHO DA TELA, SEMPRE SERÁ ABERTO NO CENTRO DA TELA

  pnl_central.Top  := Round( form_principal.Height / 2 - pnl_central.Height / 2 );
  pnl_central.Left := Round( form_principal.Width / 2 - pnl_central.Width / 2 );
end;

end.
