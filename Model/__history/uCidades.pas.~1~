unit uCidades;

interface

uses Classes, SysUtils,
     uPai, uEstados;

type Cidades = class(Pai)
  private
  protected
    cidade : string[50];
    sigla : string[3];
    DDD : string[3];
    oEstado : Estados;
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setCidade ( pCidade : string );
    procedure setSigla ( pSigla : string );
    procedure setDDD ( pDDD : string );
    procedure setoEstado ( poEstado : Estados );
    function getCidade : string;
    function getSigla : string;
    function getDDD : string;
    function getoEstado : Estados;
    function clone : Cidades;
end;

implementation

{ Cidades }

constructor Cidades.crieObj;
begin
  inherited;
  cidade:= '';
  sigla:= '';
  DDD:= '';
  oEstado:= Estados.crieObj;
end;

destructor Cidades.destrua_se;
begin
  oEstado.destrua_se;
end;

function Cidades.getCidade: string;
begin
  Result:= cidade;
end;

function Cidades.getDDD: string;
begin
  Result:= DDD;
end;

function Cidades.getoEstado: Estados;
begin
  Result:= oEstado;
end;

function Cidades.getSigla: string;
begin
  Result:= sigla;
end;

procedure Cidades.setCidade(pCidade: string);
begin
  cidade:= pCidade;
end;

procedure Cidades.setDDD(pDDD: string);
begin
  DDD:= pDDD;
end;

procedure Cidades.setoEstado(poEstado: Estados);
begin
  oEstado:= poEstado;
end;

procedure Cidades.setSigla(pSigla: string);
begin
  sigla:= pSigla;
end;

function Cidades.clone: Cidades;
begin
  Result:= Cidades.crieObj;
  Result.setCodigo(codigo);
  Result.setCidade(cidade);
  Result.setDDD(DDD);
  Result.setSigla(sigla);
  Result.setoEstado( oEstado.clone );
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
end;

end.
