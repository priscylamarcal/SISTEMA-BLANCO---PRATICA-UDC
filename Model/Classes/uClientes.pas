unit uClientes;

interface

uses uPessoas, uFuncionarios, uCondicoesPagamentos;

type Clientes = class ( Pessoas )
  private
  protected
     umFuncionario : Funcionarios;
     umaCondicao : CondicoesPagamentos;
     limite_credito : real;
     obs : string[250];
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setoFuncionario ( pFuncionario : Funcionarios );
    procedure setaCondicao ( pCondicao : CondicoesPagamentos );
    procedure setLimiteCredito ( pLimite : Real );
    procedure setObs ( pObs : string );

    function getaCondicao : CondicoesPagamentos;
    function getoFuncionario : Funcionarios;
    function getLimite : Real;
    function getObs : string;

    function clone : Clientes;
end;

implementation

{ Clientes }

constructor Clientes.crieObj;
begin
  inherited;
  umFuncionario:= Funcionarios.crieObj;
  umaCondicao:= CondicoesPagamentos.crieObj;
  limite_credito:= 0;
  obs:= '';
end;

destructor Clientes.destrua_se;
begin
  umFuncionario.destrua_se;
  umaCondicao.destrua_se;
end;

function Clientes.getaCondicao: CondicoesPagamentos;
begin
  Result:= umaCondicao;
end;

function Clientes.getLimite: Real;
begin
  Result:= limite_credito;
end;

function Clientes.getObs: string;
begin
  Result:= obs;
end;

function Clientes.getoFuncionario: Funcionarios;
begin
  Result:= umFuncionario;
end;

procedure Clientes.setaCondicao(pCondicao: CondicoesPagamentos);
begin
  umaCondicao:= pCondicao;
end;

procedure Clientes.setLimiteCredito(pLimite: Real);
begin
  limite_credito:= pLimite;
end;

procedure Clientes.setObs(pObs: string);
begin
  obs:= pObs;
end;

procedure Clientes.setoFuncionario(pFuncionario: Funcionarios);
begin
  umFuncionario:= pFuncionario;
end;

function Clientes.clone: Clientes;
begin
  Result:= Clientes.crieObj;
  Result.setCodigo( codigo );
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
  Result.setNomeRazaoSocial( nome_razao_social );
  Result.setApelidoFantasia( apelido_fantasia );
  Result.setEndereco( endereco );
  Result.setNumero( numero );
  Result.setComplemento( complemento );
  Result.setBairro( bairro );
  Result.setCep( cep );
  Result.setaCidade( umaCidade.clone  );
  Result.setoContato( umContato.clone );
  Result.setContatoAux1( contato_aux1 );
  Result.setContatoAux2( contato_aux2 );
  Result.setCnpjCpf( cnpj_cpf );
  Result.setIeRg( ie_rg );
  Result.setaCondicao( umaCondicao.clone );
  Result.setoFuncionario( umFuncionario.clone );
  Result.setaCondicao( umaCondicao.clone );
  Result.setLimiteCredito( limite_credito );
  Result.setObs( obs );
end;

end.
