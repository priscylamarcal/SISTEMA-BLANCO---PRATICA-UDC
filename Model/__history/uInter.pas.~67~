unit uInter;

interface

uses uConsulta_Paises, uConsulta_Estados, uConsulta_Cargos, uConsulta_Clientes,
     uConsulta_Colecoes, uConsulta_CondicoesPagamentos, uConsulta_ContasPagar,
     uConsulta_ContasReceber, uConsulta_Cores, uConsulta_Departamentos,
     uConsulta_FormasPagamentos, uConsulta_Fornecedores, uConsulta_Funcionarios,
     uConsulta_GruposProdutos, uConsulta_Marcas, uConsulta_Roupas, uConsulta_Tamanhos,
     uConsulta_TiposContatos, uConsulta_Vendas, uConsulta_Estoques, uConsulta_Cidades,

     uCadastroPaises, uCadastroEstados, uCadastroFuncionarios,
     uCadastroCargos, uCadastroDepartamentos, uCadastroFormasPagamentos,
     uCadastroCondicoesPagamentos, uCadastroVendas, uCadastroContasReceber,
     uCadastroContasPagar, uCadastroColecoes, uCadastroCores,
     uCadastroGruposProdutos, uCadastroMarcas, uCadastroTamanhos,
     uCadastroProdutos, uCadastroFornecedores, uCadastroClientes, uCadastroTiposContatos,
     uCadastro_Cidades, uCondicoesPagamentos, uFuncionarios,

     uPaises, uEstados, uCores, uColecoes, uGruposRoupas, uMarcas,
     uTamanhos, uFormaPagamento, uTiposContatos, uCidades, uCargos, uFornecedores,
     uClientes, uRoupas,

     uCtrlPaises, uCtrlEstados, uDepartamentos, uCtrlCores, uCtrlColecoes,
     uCtrlGruposRoupas, uCtrlMarcas, uCtrlTamanhos, uCtrlFormasPagamentos,
     uCtrlTiposContatos, uCtrlCidades,uCtrlCargos, uCtrlCondicoesPagamentos,
     uCtrlFornecedores, uCtrlFuncionarios, uCtrlClientes, uCtrlRoupas;

type Inter = class
  private
  protected
    aConsultaPaises              : Tform_consulta_paises;
    aConsultaEstados             : Tform_consulta_estados;
    aConsultaCargos              : Tform_consulta_cargos;
    aConsultaDepartamentos       : Tform_consulta_departamentos;
    aConsultaFormasPagamentos    : Tform_consulta_formas_pagamentos;
    aConsultaCondicoesPagamentos : Tform_consulta_condicoes_pagamentos;
    aConsultaVendas              : Tform_consulta_vendas;
    aConsultaContasReceber       : Tform_consulta_contas_receber;
    aConsultaContasPagar         : Tform_consulta_contas_pagar;
    aConsultaColecoes            : Tform_consulta_colecoes;
    aConsultaCores               : Tform_consulta_cores;
    aConsultaGruposRoupas        : Tform_consulta_grupos_produtos;
    aConsultaMarcas              : Tform_consulta_marcas;
    aConsultaTamanhos            : Tform_consulta_tamanhos;
    aConsultaRoupas              : Tform_consulta_roupas;
    aConsultaFornecedores        : Tform_consulta_fornecedores;
    aConsultaClientes            : Tform_consulta_clientes;
    aConsultaTiposContatos       : Tform_consulta_tipos_contatos;
    aConsultaEstoques            : Tform_consulta_estoques;
    aConsultaFuncionarios        : Tform_consulta_funcionarios;
    aConsultaCidades             : Tform_consulta_cidades;

    oCadastroPaises             : Tform_cadastro_paises;
    oCadastroEstados            : Tform_cadastro_estados;
    oCadastroFuncionarios       : Tform_cadastro_funcionario;
    oCadastroCargos             : Tform_cadastro_cargos;
    oCadastroDepartamentos      : Tform_cadastro_departamento;
    oCadastroFormasPagamentos   : Tform_cadastro_formas_pagamentos;
    oCadastroVendas             : Tform_cadastro_vendas;
    oCadastroContasReceber      : Tform_cadastro_contas_receber;
    oCadastroContasPagar        : Tform_cadastro_contas_pagar;
    oCadastroColecoes           : Tform_cadastro_colecoes;
    oCadastroCores              : Tform_cadastro_cores;
    oCadastroGruposRoupas       : Tform_cadastro_grupos_produtos;
    oCadastroMarcas             : Tform_cadastro_marcas;
    oCadastroTamanhos           : Tform_cadastro_tamanhos;
    oCadastroProdutos           : Tform_cadastro_produtos;
    oCadastroFornecedores       : Tform_cadastro_fornecedores;
    oCadastroClientes           : Tform_cadastro_clientes;
    oCadastroTiposContatos      : Tform_cadastro_tipo_contato;
    oCadastroCondicaoPagamento  : Tform_cadastro_condicao_pagamento;
    oCadastroCidade             : Tform_cadastro_cidades;
  public
    constructor crieObj;
    destructor destrua_se;

    procedure PDPaises ( pCtrl : TObject; pObj : Paises );
    procedure PDEstados ( pCtrl : TObject; pObj : Estados );
    procedure PDCargos ( pCtrl : TObject; pObj : Cargos);
    procedure PDDepartamentos ( pCtrl : TObject; pObj : Departamentos );
    procedure PDFuncionarios ( pCtrl : TObject; pObj : Funcionarios );
    procedure PDFormasPagamentos ( pCtrl : TObject; pObj : FormasPagamentos );
    procedure PDCondicoesPagamentos ( pCtrl : TObject; pObj : CondicoesPagamentos );
    procedure PDVendas ( pCtrl : TObject; pObj : TObject );
    procedure PDContasReceber ( pCtrl : TObject; pObj : TObject );
    procedure PDContasPagar ( pCtrl : TObject; pObj : TObject );
    procedure PDColecoes ( pCtrl : TObject; pObj : Colecoes );
    procedure PDCores ( pCtrl : TObject; pObj : Cores );
    procedure PDGruposProdutos ( pCtrl : TObject; pObj : GruposRoupas );
    procedure PDMarcas ( pCtrl : TObject; pObj : Marcas );
    procedure PDTamanhos ( pCtrl : TObject; pObj : Tamanhos );
    procedure PDRoupas ( pCtrl : TObject; pObj : Roupas );
    procedure PDFornecedores ( pCtrl : TObject; pObj : Fornecedores );
    procedure PDClientes ( pCtrl : TObject; pObj : Clientes );
    procedure PDTiposContatos ( pCtrl : TObject; pObj : TiposContatos );
    procedure PDEstoques ( pCtrl : TObject; pObj : TObject );
    procedure PDCidades ( pCtrl : TObject; pObj : Cidades );
end;

implementation

{ inter }

constructor Inter.crieObj;
begin
  aConsultaPaises              := Tform_consulta_paises.Create(nil);
  aConsultaEstados             := Tform_consulta_estados.Create(nil);
  aConsultaCargos              := Tform_consulta_cargos.Create(nil);
  aConsultaDepartamentos       := Tform_consulta_departamentos.Create(nil);
  aConsultaFormasPagamentos    := Tform_consulta_formas_pagamentos.Create(nil);
  aConsultaCondicoesPagamentos := Tform_consulta_condicoes_pagamentos.Create(nil);
  aConsultaVendas              := Tform_consulta_vendas.Create(nil);
  aConsultaContasReceber       := Tform_consulta_contas_receber.Create(nil);
  aConsultaContasPagar         := Tform_consulta_contas_pagar.Create(nil);
  aConsultaColecoes            := Tform_consulta_colecoes.Create(nil);
  aConsultaCores               := Tform_consulta_cores.Create(nil);
  aConsultaGruposRoupas        := Tform_consulta_grupos_produtos.Create(nil);
  aConsultaMarcas              := Tform_consulta_marcas.Create(nil);
  aConsultaTamanhos            := Tform_consulta_tamanhos.Create(nil);
  aConsultaRoupas              := Tform_consulta_roupas.Create(nil);
  aConsultaFornecedores        := Tform_consulta_fornecedores.Create(nil);
  aConsultaClientes            := Tform_consulta_clientes.Create(nil);
  aConsultaTiposContatos       := Tform_consulta_tipos_contatos.Create(nil);
  aConsultaEstoques            := Tform_consulta_estoques.Create(nil);
  aConsultaFuncionarios        := Tform_consulta_funcionarios.Create(nil);
  aConsultaCidades             := Tform_consulta_cidades.Create(nil);

  oCadastroPaises               := Tform_cadastro_paises.Create(nil);
  oCadastroEstados              := Tform_cadastro_estados.Create(nil);
  oCadastroFuncionarios         := Tform_cadastro_funcionario.Create(nil);
  oCadastroCargos               := Tform_cadastro_cargos.Create(nil);
  oCadastroDepartamentos        := Tform_cadastro_departamento.Create(nil);
  oCadastroFormasPagamentos     := Tform_cadastro_formas_pagamentos.Create(nil);
  oCadastroVendas               := Tform_cadastro_vendas.Create(nil);
  oCadastroContasReceber        := Tform_cadastro_contas_receber.Create(nil);
  oCadastroContasPagar          := Tform_cadastro_contas_pagar.Create(nil);
  oCadastroColecoes             := Tform_cadastro_colecoes.Create(nil);
  oCadastroCores                := Tform_cadastro_cores.Create(nil);
  oCadastroGruposRoupas         := Tform_cadastro_grupos_produtos.Create(nil);
  oCadastroMarcas               := Tform_cadastro_marcas.Create(nil);
  oCadastroTamanhos             := Tform_cadastro_tamanhos.Create(nil);
  oCadastroProdutos             := Tform_cadastro_produtos.Create(nil);
  oCadastroFornecedores         := Tform_cadastro_fornecedores.Create(nil);
  oCadastroClientes             := Tform_cadastro_clientes.Create(nil);
  oCadastroTiposContatos        := Tform_cadastro_tipo_contato.Create(nil);
  oCadastroCondicaoPagamento    := Tform_cadastro_condicao_pagamento.Create(nil);
  oCadastroCidade               := Tform_cadastro_cidades.Create(nil);

  aConsultaPaises.setFrmCadastro( oCadastroPaises );
  aConsultaEstados.setFrmCadastro( oCadastroEstados );
  aConsultaFuncionarios.setFrmCadastro( oCadastroFuncionarios );
  aConsultaCargos.setFrmCadastro( oCadastroCargos );
  aConsultaDepartamentos.setFrmCadastro( oCadastroDepartamentos );
  aConsultaFormasPagamentos.setFrmCadastro( oCadastroFormasPagamentos );
  aConsultaVendas.setFrmCadastro( oCadastroVendas );
  aConsultaContasReceber.setFrmCadastro( oCadastroContasReceber );
  aConsultaContasPagar.setFrmCadastro( oCadastroContasPagar );
  aConsultaColecoes.setFrmCadastro( oCadastroColecoes );
  aConsultaCores.setFrmCadastro( oCadastroCores );
  aConsultaGruposRoupas.setFrmCadastro( oCadastroGruposRoupas );
  aConsultaMarcas.setFrmCadastro( oCadastroMarcas );
  aConsultaTamanhos.setFrmCadastro( oCadastroTamanhos );
  aConsultaRoupas.setFrmCadastro( oCadastroProdutos );
  aConsultaFornecedores.setFrmCadastro( oCadastroFornecedores );
  aConsultaClientes.setFrmCadastro( oCadastroClientes );
  aConsultaTiposContatos.setFrmCadastro( oCadastroTiposContatos );
  aConsultaCondicoesPagamentos.setFrmCadastro( oCadastroCondicaoPagamento );
  aConsultaCidades.setFrmCadastro( oCadastroCidade );

  oCadastroEstados.setFrmConsultaPaises( aConsultaPaises );
  oCadastroCidade.setFrmConsultaEstados( aConsultaEstados );
  oCadastroCargos.setFrmConsultaDepartamentos( aConsultaDepartamentos );
  oCadastroCondicaoPagamento.setFrmConsultaFormas( aConsultaFormasPagamentos );
  oCadastroFornecedores.setFrmConsultaCidade( aConsultaCidades );
  oCadastroFornecedores.setFrmConsultaContatos( aConsultaTiposContatos );
  oCadastroFornecedores.setFrmConsultaCondicaoPagamento( aConsultaCondicoesPagamentos );
  oCadastroFuncionarios.setFrmConsultaCidades( aConsultaCidades );
  oCadastroFuncionarios.setFrmConsultaContatos( aConsultaTiposContatos );
  oCadastroFuncionarios.setFrmConsultaCargos( aConsultaCargos );
end;

destructor Inter.destrua_se;
begin
  aConsultaPaises.FreeInstance;
  aConsultaEstados.FreeInstance;
  aConsultaCargos.FreeInstance;
  aConsultaDepartamentos.FreeInstance;
  aConsultaFormasPagamentos.FreeInstance;
  aConsultaCondicoesPagamentos.FreeInstance;
  aConsultaVendas.FreeInstance;
  aConsultaContasReceber.FreeInstance;
  aConsultaContasPagar.FreeInstance;
  aConsultaColecoes.FreeInstance;
  aConsultaCores.FreeInstance;
  aConsultaGruposRoupas.FreeInstance;
  aConsultaMarcas.FreeInstance;
  aConsultaTamanhos.FreeInstance;
  aConsultaRoupas.FreeInstance;
  aConsultaFornecedores.FreeInstance;
  aConsultaClientes.FreeInstance;
  aConsultaTiposContatos.FreeInstance;
  aConsultaEstoques.FreeInstance;
  aConsultaFuncionarios.FreeInstance;
  aConsultaCidades.FreeInstance;

  oCadastroPaises.FreeInstance;
  oCadastroEstados.FreeInstance;
  oCadastroFuncionarios.FreeInstance;
  oCadastroCargos.FreeInstance;
  oCadastroDepartamentos.FreeInstance;
  oCadastroFormasPagamentos.FreeInstance;
  oCadastroVendas.FreeInstance;
  oCadastroContasReceber.FreeInstance;
  oCadastroContasPagar.FreeInstance;
  oCadastroColecoes.FreeInstance;
  oCadastroCores.FreeInstance;
  oCadastroGruposRoupas.FreeInstance;
  oCadastroMarcas.FreeInstance;
  oCadastroTamanhos.FreeInstance;
  oCadastroProdutos.FreeInstance;
  oCadastroFornecedores.FreeInstance;
  oCadastroClientes.FreeInstance;
  oCadastroTiposContatos.FreeInstance;
  oCadastroCondicaoPagamento.FreeInstance;
  oCadastroCidade.FreeInstance;
end;

procedure Inter.PDCargos(pCtrl: TObject; pObj: Cargos);
begin
  aConsultaCargos.conhecaObj( pCtrl, pObj );
  aConsultaCargos.ShowModal;
end;

procedure Inter.PDCidades(pCtrl: TObject; pObj: Cidades);
begin
  aConsultaCidades.conhecaObj( pCtrl, pObj );
  aConsultaCidades.ShowModal;
end;

procedure Inter.PDClientes(pCtrl : TObject; pObj : Clientes);
begin
  aConsultaClientes.conhecaObj( pCtrl, pObj );
  aConsultaClientes.ShowModal;
end;

procedure Inter.PDColecoes(pCtrl: TObject; pObj: Colecoes);
begin
  aConsultaColecoes.conhecaObj( pCtrl, pObj );
  aConsultaColecoes.ShowModal;
end;

procedure Inter.PDCondicoesPagamentos(pCtrl : TObject; pObj : CondicoesPagamentos);
begin
  aConsultaCondicoesPagamentos.conhecaObj( pCtrl, pObj );
  aConsultaCondicoesPagamentos.ShowModal;
end;

procedure Inter.PDContasPagar(pCtrl, pObj: TObject);
begin
  aConsultaContasPagar.ShowModal;
end;

procedure Inter.PDContasReceber(pCtrl, pObj: TObject);
begin
  aConsultaContasReceber.ShowModal;
end;

procedure Inter.PDCores(pCtrl: TObject; pObj: Cores);
begin
  aConsultaCores.conhecaObj( pCtrl, pObj );
  aConsultaCores.ShowModal;
end;

procedure Inter.PDDepartamentos(pCtrl : TObject; pObj: Departamentos);
begin
  aConsultaDepartamentos.conhecaObj( pCtrl, pObj );
  aConsultaDepartamentos.ShowModal;
end;

procedure Inter.PDEstados ( pCtrl : TObject; pObj : Estados );
begin
  aConsultaEstados.conhecaObj( pCtrl, pObj );
  aConsultaEstados.ShowModal;
end;

procedure Inter.PDEstoques(pCtrl, pObj: TObject);
begin
  aConsultaEstoques.ShowModal;
end;

procedure Inter.PDFormasPagamentos(pCtrl : TObject; pObj : FormasPagamentos);
begin
  aConsultaFormasPagamentos.conhecaObj( pCtrl, pObj );
  aConsultaFormasPagamentos.ShowModal;
end;

procedure Inter.PDFornecedores(pCtrl : TObject; pObj : Fornecedores);
begin
  aConsultaFornecedores.conhecaObj( pCtrl, pObj );
  aConsultaFornecedores.ShowModal;
end;

procedure Inter.PDFuncionarios(pCtrl : TObject; pObj : Funcionarios);
begin
  aConsultaFuncionarios.conhecaObj( pCtrl, pObj );
  aConsultaFuncionarios.ShowModal;
end;

procedure Inter.PDGruposProdutos(pCtrl : TObject; pObj : GruposRoupas);
begin
  aConsultaGruposRoupas.conhecaObj( pCtrl, pObj );
  aConsultaGruposRoupas.ShowModal;
end;

procedure Inter.PDMarcas(pCtrl: TObject; pObj : Marcas);
begin
  aConsultaMarcas.conhecaObj( pCtrl, pObj );
  aConsultaMarcas.ShowModal;
end;

procedure Inter.PDPaises(pCtrl: TObject; pObj: Paises);
begin
  aConsultaPaises.conhecaObj( pCtrl, pObj );
  aConsultaPaises.ShowModal;
end;

procedure Inter.PDRoupas(pCtrl : TObject; pObj : Roupas);
begin
  aConsultaRoupas.conhecaObj( pCtrl, pObj );
  aConsultaRoupas.ShowModal;
end;

procedure Inter.PDTamanhos(pCtrl : TObject; pObj : Tamanhos);
begin
  aConsultaTamanhos.conhecaObj( pCtrl, pObj );
  aConsultaTamanhos.ShowModal;
end;

procedure Inter.PDTiposContatos(pCtrl : TObject; pObj : TiposContatos);
begin
  aConsultaTiposContatos.conhecaObj( pCtrl, pObj );
  aConsultaTiposContatos.ShowModal;
end;

procedure Inter.PDVendas(pCtrl, pObj: TObject);
begin
  aConsultaVendas.ShowModal;
end;

end.
