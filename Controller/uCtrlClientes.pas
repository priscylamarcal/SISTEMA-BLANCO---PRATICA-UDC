unit uCtrlClientes;

interface

uses uController, uFilterSearch, uDaoClientes, uCtrlCidades,
  uCtrlCondicoesPagamentos, uCtrlFuncionarios, uCtrlTiposContatos, uClientes,
  uFuncionarios;

type ctrlClientes = class( Ctrl )
  private
  protected
    aDaoClientes : daoClientes;

    aCtrlCidades : ctrlCidades;
    aCtrlTiposContatos : ctrlTiposContatos;
    aCtrlFuncionarios : ctrlFuncionarios;
    aCtrlCondicoes : ctrlCondicoesPagamentos;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;

    procedure setCtrlCidades ( pCtrl : ctrlCidades );
    procedure setCtrlTiposContatos ( pCtrl : ctrlTiposContatos );
    procedure setCtrlFuncionarios ( pCtrl : ctrlFuncionarios );
    procedure setCtrlCondicoes ( pCtrl : ctrlCondicoesPagamentos );

    function getCtrlCidades : ctrlCidades;
    function getCtrlTiposContatos : ctrlTiposContatos;
    function getCtrlFuncionarios : ctrlFuncionarios;
    function getCtrlCondicoes : ctrlCondicoesPagamentos;
end;

implementation

uses
  uCidades, uTiposContatos, uCondicoesPagamentos;

{ ctrlClientes }

function ctrlClientes.carregar(pObj: TObject): string;
var mCliente : Clientes; mCidade : Cidades; mContato : TiposContatos;
    mCondicao : CondicoesPagamentos; mFuncionario : Funcionarios;
    AFilter : TFilterSearch; pchave : string;
begin
  aDaoClientes.carregar( pObj );

  mCidade:= Clientes( pObj ).getaCidade;
  aCtrlCidades.pesquisar( AFilter, pchave );

  mContato:= Clientes( pObj ).getoContato;
  aCtrlTiposContatos.pesquisar( AFilter, pchave );

  mFuncionario:= Clientes( pObj ).getoFuncionario;
  aCtrlFuncionarios.pesquisar( AFilter, pchave );

  mCondicao:= Clientes( pObj ).getaCondicao;
  aCtrlCondicoes.pesquisar( AFilter, pchave );
end;

constructor ctrlClientes.crieObj;
begin
  aDaoClientes:= daoClientes.crieObj;
end;

destructor ctrlClientes.destrua_se;
begin
  aDaoClientes.destrua_se;
end;

function ctrlClientes.excluir(pObj: TObject): string;
begin

end;

function ctrlClientes.getCtrlCidades: ctrlCidades;
begin
  Result:= aCtrlCidades;
end;

function ctrlClientes.getCtrlCondicoes: ctrlCondicoesPagamentos;
begin
  Result:= aCtrlCondicoes;
end;

function ctrlClientes.getCtrlFuncionarios: ctrlFuncionarios;
begin
  Result:= aCtrlFuncionarios;
end;

function ctrlClientes.getCtrlTiposContatos: ctrlTiposContatos;
begin
  Result:= aCtrlTiposContatos;
end;

function ctrlClientes.getDS: TObject;
begin
  Result:= aDaoClientes.getDS;
end;

function ctrlClientes.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
 Result := aDaoClientes.Pesquisar( AFilter, pChave );
end;

function ctrlClientes.salvar(pObj: TObject): string;
begin
  aDaoClientes.salvar( pObj );
end;

procedure ctrlClientes.setCtrlCidades(pCtrl: ctrlCidades);
begin
  aCtrlCidades:= pCtrl;
end;

procedure ctrlClientes.setCtrlCondicoes(pCtrl: ctrlCondicoesPagamentos);
begin
  aCtrlCondicoes:= pCtrl;
end;

procedure ctrlClientes.setCtrlFuncionarios(pCtrl: ctrlFuncionarios);
begin
  aCtrlFuncionarios:= pCtrl;
end;

procedure ctrlClientes.setCtrlTiposContatos(pCtrl: ctrlTiposContatos);
begin
  aCtrlTiposContatos:= pCtrl;
end;

procedure ctrlClientes.setDM(pDM: TObject);
begin
  inherited;
  aDaoClientes.setDM( pDM );
end;

end.
