unit uFuncionarios;

interface

uses uPessoas, uCargos;

type Funcionarios = class ( Pessoas )
  private
  protected
    umCargo : Cargos;
    sexo : Char;
    dataNascimento : TDateTime;
    dataAdmissao : TDateTime;
    dataDemissao : TDateTime;
    salario : Real;
    comissao : Real;
    obs : string [250];
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setoCargo ( pCargo : Cargos );
    procedure setSexo ( pSexo : Char );
    procedure setDataNasc ( pDataNasc : TDateTime );
    procedure setDataAdmissao ( pDataAdmissao : TDateTime );
    procedure setDataDemis ( pDataDemis : TDateTime );
    procedure setSalario ( pSalario : Real );
    procedure setComissao ( pComissao : Real );
    procedure setObs ( pObs : string );

    function getCargo : Cargos;
    function getSexo : Char;
    function getDataNasc : TDateTime;
    function getDataAdmissao : TDateTime;
    function getDataDemis : TDateTime;
    function getSalario : Real;
    function getComissao : Real;
    function getObs : string;
    function clone : Funcionarios;
end;

implementation

{ Funcionarios }

constructor Funcionarios.crieObj;
begin
  inherited;
  umCargo:= Cargos.crieObj;
  sexo:= ' ';
  dataNascimento:= 0;
  dataDemissao:= 0;
  salario:= 0;
  comissao:= 0;
  obs:= '';
end;

destructor Funcionarios.destrua_se;
begin
  umCargo.destrua_se;
end;

function Funcionarios.getCargo: Cargos;
begin
  Result:= umCargo;
end;

function Funcionarios.getComissao: Real;
begin
  Result:= comissao;
end;

function Funcionarios.getDataAdmissao: TDateTime;
begin
  Result:= dataAdmissao;
end;

function Funcionarios.getDataDemis: TDateTime;
begin
  Result:= dataDemissao;
end;

function Funcionarios.getDataNasc: TDateTime;
begin
  Result:= dataNascimento;
end;

function Funcionarios.getObs: string;
begin
  Result:= obs;
end;

function Funcionarios.getSalario: Real;
begin
  Result:= salario;
end;

function Funcionarios.getSexo: Char;
begin
  Result:= sexo;
end;

procedure Funcionarios.setComissao(pComissao: Real);
begin
  comissao:= pComissao;
end;

procedure Funcionarios.setDataAdmissao(pDataAdmissao: TDateTime);
begin
  dataAdmissao:= pDataAdmissao;
end;

procedure Funcionarios.setDataDemis(pDataDemis: TDateTime);
begin
  dataDemissao:= pDataDemis;
end;

procedure Funcionarios.setDataNasc(pDataNasc: TDateTime);
begin
  dataNascimento:= pDataNasc;
end;

procedure Funcionarios.setObs(pObs: string);
begin
  obs:= pObs;
end;

procedure Funcionarios.setoCargo(pCargo: Cargos);
begin
  umCargo:= pCargo;
end;

procedure Funcionarios.setSalario(pSalario: Real);
begin
  salario:= pSalario;
end;

procedure Funcionarios.setSexo(pSexo: Char);
begin
  sexo:= pSexo;
end;

function Funcionarios.clone: Funcionarios;
begin
  Result:= Funcionarios.crieObj;
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
  Result.setSexo( sexo );
  Result.setDataNasc( dataNascimento );
  Result.setoCargo( umCargo.clone );
  Result.setDataAdmissao( dataAdmissao );
  Result.setDataDemis( dataDemissao );
  Result.setSalario( salario );
  Result.setComissao( comissao );
  Result.setObs( obs );
end;

end.
