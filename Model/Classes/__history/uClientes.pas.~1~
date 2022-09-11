unit uClientes;

interface

uses uPessoas, uFuncionarios, uCondicoesPagamentos;

type Clientes = class ( Pessoas )
  private
  protected
     umFuncionario : Funcionarios;
     umaCondicao : CondicoesPagamentos;
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setoFuncionario ( pFuncionario : Funcionarios );
    procedure setaCondicao ( pCondicao : CondicoesPagamentos );
    function getaCondicao : CondicoesPagamentos;
    function getoFuncionario : Funcionarios;
    function clone : Clientes;
end;

implementation

{ Clientes }

constructor Clientes.crieObj;
begin
  inherited;
  umFuncionario:= Funcionarios.crieObj;
  umaCondicao:= CondicoesPagamentos.crieObj;
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

function Clientes.getoFuncionario: Funcionarios;
begin
  Result:= umFuncionario;
end;

procedure Clientes.setaCondicao(pCondicao: CondicoesPagamentos);
begin
  umaCondicao:= pCondicao;
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
end;

end.
