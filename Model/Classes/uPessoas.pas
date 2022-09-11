unit uPessoas;

interface

uses uCidades, uTiposContatos;

type
  Pessoas = class
  private
  protected
    codigo              : integer;
    dataCad             : TDateTime;
    ultAlt              : TDateTime;
    codUsu              : integer;
    nome_razao_social   : string[80];
    apelido_fantasia    : string[80];
    endereco            : string[60];
    numero              : string[8];
    complemento         : string[60];
    bairro              : string[60];
    cep                 : string[10];
    umaCidade           : Cidades;
    umContato           : TiposContatos;
    contato_aux1        : string[50];
    contato_aux2        : string[50];
    cnpj_cpf            : string[18];
    ie_rg               : string[14];
  public
    constructor crieObj;
    destructor destrua_se;

    procedure setCodigo(pCodigo: integer);
    procedure setDataCad(pDataCad: TDateTime);
    procedure setUltAlt(pUltAlt: TDateTime);
    procedure setCodUsu(pCodUsu: integer);
    procedure setNomeRazaoSocial ( pNomeRazaoSocial : string );
    procedure setApelidoFantasia ( pApelidoFantasia : string );
    procedure setEndereco ( pEndereco : string );
    procedure setNumero ( pNumero : string );
    procedure setComplemento ( pComplemento : string );
    procedure setBairro ( pBairro : string );
    procedure setCep ( pCep : string );
    procedure setaCidade ( pCidade : Cidades );
    procedure setoContato ( pContato : TiposContatos );
    procedure setContatoAux1 ( pContatoAux1 : string );
    procedure setContatoAux2 ( pContatoAux2 : string );
    procedure setCnpjCpf ( pCnpjCpf : string );
    procedure setIeRg ( pIeRg : string );

    function getCodigo: integer;
    function getDataCad: TDateTime;
    function getUltAlt: TDateTime;
    function getCodUsu: integer;
    function getNomeRazaoSocial : string;
    function getApelidoFantasia : string;
    function getEndereco  : string;
    function getNumero : string;
    function getComplemento : string;
    function getBairro : string;
    function getCep : string;
    function getaCidade : Cidades;
    function getoContato : TiposContatos;
    function getContatoAux1 : string;
    function getContatoAux2  : string;
    function getCnpjCpf : string;
    function getIeRg : string;
//    function clone: Pessoas;
  end;

implementation

{ Pessoa }

constructor Pessoas.crieObj;
begin
  codigo              := 0;
  dataCad             := 0;
  ultAlt              := 0;
  codUsu              := 1;

  nome_razao_social   := '';
  apelido_fantasia    := '';
  endereco            := '';
  numero              := '';
  complemento         := '';
  bairro              := '';
  cep                 := '';
  umaCidade           := Cidades.crieObj;
  umContato           := TiposContatos.crieObj;
  contato_aux1        := '';
  contato_aux2        := '';
  cnpj_cpf            := '';
  ie_rg               := '';
end;

destructor Pessoas.destrua_se;
begin
  umaCidade.destrua_se;
  umContato.destrua_se;
end;

function Pessoas.getaCidade: Cidades;
begin
  Result:= umaCidade;
end;

function Pessoas.getApelidoFantasia: string;
begin
  Result:= apelido_fantasia;
end;

function Pessoas.getBairro: string;
begin
  Result:= bairro;
end;

function Pessoas.getCep: string;
begin
  Result:= cep;
end;

function Pessoas.getCnpjCpf: string;
begin
  Result:= cnpj_cpf;
end;

function Pessoas.getCodigo: integer;
begin
  Result:= codigo;
end;

function Pessoas.getCodUsu: integer;
begin
  Result:= codUsu;
end;

function Pessoas.getComplemento: string;
begin
  Result:= complemento;
end;

function Pessoas.getContatoAux1: string;
begin
  Result:= contato_aux1;
end;

function Pessoas.getContatoAux2: string;
begin
  Result:= contato_aux2;
end;

function Pessoas.getDataCad: TDateTime;
begin
  Result:= dataCad;
end;

function Pessoas.getEndereco: string;
begin
  Result:= endereco;
end;

function Pessoas.getIeRg: string;
begin
  Result:= ie_rg;
end;

function Pessoas.getNomeRazaoSocial: string;
begin
  Result:= nome_razao_social;
end;

function Pessoas.getNumero: string;
begin
  Result:= numero;
end;

function Pessoas.getoContato: TiposContatos;
begin
  Result:= umContato;
end;

function Pessoas.getUltAlt: TDateTime;
begin
  Result:= ultAlt;
end;

procedure Pessoas.setaCidade(pCidade: Cidades);
begin
  umaCidade:= pCidade;
end;

procedure Pessoas.setApelidoFantasia(pApelidoFantasia: string);
begin
  apelido_fantasia:= pApelidoFantasia;
end;

procedure Pessoas.setBairro(pBairro: string);
begin
  bairro:= pBairro;
end;

procedure Pessoas.setCep(pCep: string);
begin
  cep:= pCep;
end;

procedure Pessoas.setCnpjCpf(pCnpjCpf: string);
begin
  cnpj_cpf:= pCnpjCpf;
end;

procedure Pessoas.setCodigo(pCodigo: integer);
begin
  codigo:= pCodigo;
end;

procedure Pessoas.setCodUsu(pCodUsu: integer);
begin
  codUsu:= pCodUsu;
end;

procedure Pessoas.setComplemento(pComplemento: string);
begin
  complemento:= pComplemento;
end;

procedure Pessoas.setContatoAux1(pContatoAux1: string);
begin
  contato_aux1:= pContatoAux1;
end;

procedure Pessoas.setContatoAux2(pContatoAux2: string);
begin
  contato_aux2:= pContatoAux2;
end;

procedure Pessoas.setDataCad(pDataCad: TDateTime);
begin
  dataCad:= pDataCad;
end;

procedure Pessoas.setEndereco(pEndereco: string);
begin
  endereco:= pEndereco;
end;

procedure Pessoas.setIeRg(pIeRg: string);
begin
  ie_rg:= pIeRg;
end;

procedure Pessoas.setNomeRazaoSocial(pNomeRazaoSocial: string);
begin
  nome_razao_social:= pNomeRazaoSocial;
end;

procedure Pessoas.setNumero(pNumero: string);
begin
  numero:= pNumero;
end;

procedure Pessoas.setoContato(pContato: TiposContatos);
begin
  umContato:= pContato;
end;

procedure Pessoas.setUltAlt(pUltAlt: TDateTime);
begin
  ultAlt:= pUltAlt;
end;

//function Pessoas.clone: Pessoas;
//begin
//  Result:= Pessoas.crieObj;
//  Result.setCodigo( codigo );
//  Result.setDataCad(dataCad);
//  Result.setUltAlt(ultAlt);
//  Result.setCodUsu(codUsu);
//  Result.setNomeRazaoSocial( nome_razao_social );
//  Result.setApelidoFantasia( apelido_fantasia );
//  Result.setEndereco( endereco );
//  Result.setNumero( numero );
//  Result.setComplemento( complemento );
//  Result.setBairro( bairro );
//  Result.setCep( cep );
//  Result.setaCidade( umaCidade.clone  );
//  Result.setoContato( umContato.clone );
//  Result.setContatoAux1( contato_aux1 );
//  Result.setContatoAux2( contato_aux2 );
//  Result.setCnpjCpf( cnpj_cpf );
//  Result.setIeRg( ie_rg );
//end;

end.
