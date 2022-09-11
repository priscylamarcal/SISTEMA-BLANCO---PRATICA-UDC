unit uFornecedores;

interface

uses uPessoas, uCondicoesPagamentos;

type Fornecedores = class ( Pessoas )
  private
  protected
    umaCondicao: CondicoesPagamentos;
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setaCondicao ( pCondicao : CondicoesPagamentos );
    function getaCondicao : CondicoesPagamentos;
    function clone : Fornecedores;
end;

implementation

{ Fornecedores }

constructor Fornecedores.crieObj;
begin
  inherited;
  umaCondicao:= CondicoesPagamentos.crieObj;
end;

destructor Fornecedores.destrua_se;
begin
  umaCondicao.destrua_se;
end;

function Fornecedores.getaCondicao: CondicoesPagamentos;
begin
  Result:= umaCondicao;
end;

procedure Fornecedores.setaCondicao(pCondicao: CondicoesPagamentos);
begin
  umaCondicao:= pCondicao;
end;

function Fornecedores.clone: Fornecedores;
begin
  Result:= Fornecedores.crieObj;
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
end;

end.
