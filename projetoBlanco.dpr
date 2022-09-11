program projetoBlanco;



uses
  Vcl.Forms,
  uGerente in 'View\uGerente.pas' {form_principal},
  uCadastroPai in 'View\Form Pai\uCadastroPai.pas' {form_cadastro_pai},
  uPai in 'Model\Classes\uPai.pas',
  uPaises in 'Model\Classes\uPaises.pas',
  uEstados in 'Model\Classes\uEstados.pas',
  uInter in 'Model\uInter.pas',
  uConsulta_Paises in 'View\Form Consultas\uConsulta_Paises.pas' {form_consulta_paises},
  uConsulta_Estados in 'View\Form Consultas\uConsulta_Estados.pas' {form_consulta_estados},
  uCadastroPaises in 'View\Form Cadastros\uCadastroPaises.pas' {form_cadastro_paises},
  uCadastroEstados in 'View\Form Cadastros\uCadastroEstados.pas' {form_cadastro_estados},
  uController in 'Controller\uController.pas',
  uDM in 'Model\DM\uDM.pas' {DM: TDataModule},
  uCtrlPaises in 'Controller\uCtrlPaises.pas',
  uCtrlEstados in 'Controller\uCtrlEstados.pas',
  uDAO in 'DAO\uDAO.pas',
  uDaoPaises in 'DAO\uDaoPaises.pas',
  uDaoEstados in 'DAO\uDaoEstados.pas',
  uFuncoes_Sistema in 'Model\uFuncoes_Sistema.pas',
  uConsulta_Cargos in 'View\Form Consultas\uConsulta_Cargos.pas' {form_consulta_cargos},
  uConsulta_Departamentos in 'View\Form Consultas\uConsulta_Departamentos.pas' {form_consulta_departamentos},
  uConsulta_FormasPagamentos in 'View\Form Consultas\uConsulta_FormasPagamentos.pas' {form_consulta_formas_pagamentos},
  uConsulta_CondicoesPagamentos in 'View\Form Consultas\uConsulta_CondicoesPagamentos.pas' {form_consulta_condicoes_pagamentos},
  uConsulta_Vendas in 'View\Form Consultas\uConsulta_Vendas.pas' {form_consulta_vendas},
  uConsulta_ContasReceber in 'View\Form Consultas\uConsulta_ContasReceber.pas' {form_consulta_contas_receber},
  uConsulta_ContasPagar in 'View\Form Consultas\uConsulta_ContasPagar.pas' {form_consulta_contas_pagar},
  uConsulta_Colecoes in 'View\Form Consultas\uConsulta_Colecoes.pas' {form_consulta_colecoes},
  uConsulta_Cores in 'View\Form Consultas\uConsulta_Cores.pas' {form_consulta_cores},
  uConsulta_GruposProdutos in 'View\Form Consultas\uConsulta_GruposProdutos.pas' {form_consulta_grupos_produtos},
  uConsulta_Marcas in 'View\Form Consultas\uConsulta_Marcas.pas' {form_consulta_marcas},
  uConsulta_Tamanhos in 'View\Form Consultas\uConsulta_Tamanhos.pas' {form_consulta_tamanhos},
  uConsulta_Roupas in 'View\Form Consultas\uConsulta_Roupas.pas' {form_consulta_roupas},
  uConsulta_Fornecedores in 'View\Form Consultas\uConsulta_Fornecedores.pas' {form_consulta_fornecedores},
  uConsulta_Clientes in 'View\Form Consultas\uConsulta_Clientes.pas' {form_consulta_clientes},
  uConsulta_TiposContatos in 'View\Form Consultas\uConsulta_TiposContatos.pas' {form_consulta_tipos_contatos},
  uConsulta_Estoques in 'View\Form Consultas\uConsulta_Estoques.pas' {form_consulta_estoques},
  uDepartamentos in 'Model\Classes\uDepartamentos.pas',
  uMarcas in 'Model\Classes\uMarcas.pas',
  uTamanhos in 'Model\Classes\uTamanhos.pas',
  uCores in 'Model\Classes\uCores.pas',
  uCadastroCargos in 'View\Form Cadastros\uCadastroCargos.pas' {form_cadastro_cargos},
  uCadastroDepartamentos in 'View\Form Cadastros\uCadastroDepartamentos.pas' {form_cadastro_departamento},
  uConsulta_Funcionarios in 'View\Form Consultas\uConsulta_Funcionarios.pas' {form_consulta_funcionarios},
  uCadastroFuncionarios in 'View\Form Cadastros\uCadastroFuncionarios.pas' {form_cadastro_funcionario},
  uConsultaPai in 'View\Form Pai\uConsultaPai.pas' {form_consulta_pai},
  uCadastroCondicoesPagamentos in 'View\Form Cadastros\uCadastroCondicoesPagamentos.pas' {form_cadastro_condicao_pagamento},
  uCadastroGruposProdutos in 'View\Form Cadastros\uCadastroGruposProdutos.pas' {form_cadastro_grupos_produtos},
  uCadastroMarcas in 'View\Form Cadastros\uCadastroMarcas.pas' {form_cadastro_marcas},
  uCadastroColecoes in 'View\Form Cadastros\uCadastroColecoes.pas' {form_cadastro_colecoes},
  uCadastroTamanhos in 'View\Form Cadastros\uCadastroTamanhos.pas' {form_cadastro_tamanhos},
  uCadastroCores in 'View\Form Cadastros\uCadastroCores.pas' {form_cadastro_cores},
  uCadastroProdutos in 'View\Form Cadastros\uCadastroProdutos.pas' {form_cadastro_produtos},
  uCadastroClientes in 'View\Form Cadastros\uCadastroClientes.pas' {form_cadastro_clientes},
  uCadastroFornecedores in 'View\Form Cadastros\uCadastroFornecedores.pas' {form_cadastro_fornecedores},
  uCadastroVendas in 'View\Form Cadastros\uCadastroVendas.pas' {form_cadastro_vendas},
  uCadastroContasReceber in 'View\Form Cadastros\uCadastroContasReceber.pas' {form_cadastro_contas_receber},
  uCadastroContasPagar in 'View\Form Cadastros\uCadastroContasPagar.pas' {form_cadastro_contas_pagar},
  uCadastroFormasPagamentos in 'View\Form Cadastros\uCadastroFormasPagamentos.pas' {form_cadastro_formas_pagamentos},
  uCadastroTiposContatos in 'View\Form Cadastros\uCadastroTiposContatos.pas' {form_cadastro_tipo_contato},
  uFilterSearch in 'Model\uFilterSearch.pas',
  uCtrlDepartamentos in 'Controller\uCtrlDepartamentos.pas',
  uDaoDepartamentos in 'DAO\uDaoDepartamentos.pas',
  uCtrlCores in 'Controller\uCtrlCores.pas',
  uDaoCores in 'DAO\uDaoCores.pas',
  uColecoes in 'Model\Classes\uColecoes.pas',
  uCtrlColecoes in 'Controller\uCtrlColecoes.pas',
  uDaoColecoes in 'DAO\uDaoColecoes.pas',
  uGruposRoupas in 'Model\Classes\uGruposRoupas.pas',
  uCtrlGruposRoupas in 'Controller\uCtrlGruposRoupas.pas',
  uDaoGruposRoupas in 'DAO\uDaoGruposRoupas.pas',
  uCtrlMarcas in 'Controller\uCtrlMarcas.pas',
  uDaoMarcas in 'DAO\uDaoMarcas.pas',
  uDaoTamanhos in 'DAO\uDaoTamanhos.pas',
  uCtrlTamanhos in 'Controller\uCtrlTamanhos.pas',
  uFormaPagamento in 'Model\Classes\uFormaPagamento.pas',
  uCtrlFormasPagamentos in 'Controller\uCtrlFormasPagamentos.pas',
  uDaoFormasPagamentos in 'DAO\uDaoFormasPagamentos.pas',
  uTiposContatos in 'Model\Classes\uTiposContatos.pas',
  uDaoTiposContatos in 'DAO\uDaoTiposContatos.pas',
  uCtrlTiposContatos in 'Controller\uCtrlTiposContatos.pas',
  uConsulta_Cidades in 'View\Form Consultas\uConsulta_Cidades.pas' {form_consulta_cidades},
  uCidades in 'Model\Classes\uCidades.pas',
  uCadastro_Cidades in 'View\Form Cadastros\uCadastro_Cidades.pas' {form_cadastro_cidades},
  uDaoCidades in 'DAO\uDaoCidades.pas',
  uCtrlCidades in 'Controller\uCtrlCidades.pas',
  uCargos in 'Model\Classes\uCargos.pas',
  uDaoCargos in 'DAO\uDaoCargos.pas',
  uCtrlCargos in 'Controller\uCtrlCargos.pas',
  uCondicoesPagamentos in 'Model\Classes\uCondicoesPagamentos.pas',
  uDaoCondicoesPagamentos in 'DAO\uDaoCondicoesPagamentos.pas',
  uCtrlCondicoesPagamentos in 'Controller\uCtrlCondicoesPagamentos.pas',
  uPessoas in 'Model\Classes\uPessoas.pas',
  uFornecedores in 'Model\Classes\uFornecedores.pas',
  uFuncionarios in 'Model\Classes\uFuncionarios.pas',
  uClientes in 'Model\Classes\uClientes.pas',
  uDaoFornecedores in 'DAO\uDaoFornecedores.pas',
  uCtrlFornecedores in 'Controller\uCtrlFornecedores.pas',
  uDaoFuncionarios in 'DAO\uDaoFuncionarios.pas',
  uCtrlFuncionarios in 'Controller\uCtrlFuncionarios.pas',
  uDaoClientes in 'DAO\uDaoClientes.pas',
  uCtrlClientes in 'Controller\uCtrlClientes.pas',
  uDaoRoupas in 'DAO\uDaoRoupas.pas',
  uCtrlRoupas in 'Controller\uCtrlRoupas.pas',
  uRoupas in 'Model\Classes\uRoupas.pas',
  uConsulta_Compras in 'View\Form Consultas\uConsulta_Compras.pas' {form_consulta_compras},
  uCadastro_Compras in 'View\Form Cadastros\uCadastro_Compras.pas' {form_cadastro_compras},
  uParcelas in 'Model\Classes\uParcelas.pas',
  uCtrlParcelas in 'Controller\uCtrlParcelas.pas',
  uDaoParcelas in 'DAO\uDaoParcelas.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tform_principal, form_principal);
  Application.CreateForm(Tform_consulta_funcionarios, form_consulta_funcionarios);
  Application.CreateForm(Tform_cadastro_pai, form_cadastro_pai);
  Application.CreateForm(Tform_consulta_paises, form_consulta_paises);
  Application.CreateForm(Tform_consulta_estados, form_consulta_estados);
  Application.CreateForm(Tform_cadastro_paises, form_cadastro_paises);
  Application.CreateForm(Tform_cadastro_estados, form_cadastro_estados);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(Tform_consulta_cargos, form_consulta_cargos);
  Application.CreateForm(Tform_consulta_departamentos, form_consulta_departamentos);
  Application.CreateForm(Tform_consulta_formas_pagamentos, form_consulta_formas_pagamentos);
  Application.CreateForm(Tform_consulta_condicoes_pagamentos, form_consulta_condicoes_pagamentos);
  Application.CreateForm(Tform_consulta_vendas, form_consulta_vendas);
  Application.CreateForm(Tform_consulta_contas_receber, form_consulta_contas_receber);
  Application.CreateForm(Tform_consulta_contas_pagar, form_consulta_contas_pagar);
  Application.CreateForm(Tform_consulta_colecoes, form_consulta_colecoes);
  Application.CreateForm(Tform_consulta_cores, form_consulta_cores);
  Application.CreateForm(Tform_consulta_grupos_produtos, form_consulta_grupos_produtos);
  Application.CreateForm(Tform_consulta_marcas, form_consulta_marcas);
  Application.CreateForm(Tform_consulta_tamanhos, form_consulta_tamanhos);
  Application.CreateForm(Tform_consulta_roupas, form_consulta_roupas);
  Application.CreateForm(Tform_consulta_fornecedores, form_consulta_fornecedores);
  Application.CreateForm(Tform_consulta_clientes, form_consulta_clientes);
  Application.CreateForm(Tform_consulta_tipos_contatos, form_consulta_tipos_contatos);
  Application.CreateForm(Tform_consulta_estoques, form_consulta_estoques);
  Application.CreateForm(Tform_cadastro_cargos, form_cadastro_cargos);
  Application.CreateForm(Tform_cadastro_departamento, form_cadastro_departamento);
  Application.CreateForm(Tform_cadastro_funcionario, form_cadastro_funcionario);
  Application.CreateForm(Tform_consulta_pai, form_consulta_pai);
  Application.CreateForm(Tform_cadastro_condicao_pagamento, form_cadastro_condicao_pagamento);
  Application.CreateForm(Tform_cadastro_grupos_produtos, form_cadastro_grupos_produtos);
  Application.CreateForm(Tform_cadastro_marcas, form_cadastro_marcas);
  Application.CreateForm(Tform_cadastro_colecoes, form_cadastro_colecoes);
  Application.CreateForm(Tform_cadastro_tamanhos, form_cadastro_tamanhos);
  Application.CreateForm(Tform_cadastro_cores, form_cadastro_cores);
  Application.CreateForm(Tform_cadastro_produtos, form_cadastro_produtos);
  Application.CreateForm(Tform_cadastro_clientes, form_cadastro_clientes);
  Application.CreateForm(Tform_cadastro_fornecedores, form_cadastro_fornecedores);
  Application.CreateForm(Tform_cadastro_vendas, form_cadastro_vendas);
  Application.CreateForm(Tform_cadastro_contas_receber, form_cadastro_contas_receber);
  Application.CreateForm(Tform_cadastro_contas_pagar, form_cadastro_contas_pagar);
  Application.CreateForm(Tform_cadastro_formas_pagamentos, form_cadastro_formas_pagamentos);
  Application.CreateForm(Tform_cadastro_tipo_contato, form_cadastro_tipo_contato);
  Application.CreateForm(Tform_consulta_cidades, form_consulta_cidades);
  Application.CreateForm(Tform_cadastro_cidades, form_cadastro_cidades);
  Application.CreateForm(Tform_consulta_compras, form_consulta_compras);
  Application.CreateForm(Tform_cadastro_compras, form_cadastro_compras);
  Application.Run;
end.
