unit uCidades;

interface

uses uEstados, uPai;

type Cidades = class( Pai )
  private
  protected
    cidade : string[80];
    sigla  : string[3];
    ddd    : string[5];
    umEstado : Estados;
  public
    constructor crieObj;
    constructor crieInit ( pCodigo : integer; pCidade : string; pSigla : string; pDDD : string; pDataCad : TDateTime; pUltAlt : TDateTime; pCodUsu : integer; poEstado : Estados );
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

constructor Cidades.crieInit(pCodigo: integer; pCidade, pSigla, pDDD: string;
  pDataCad, pUltAlt: TDateTime; pCodUsu: integer; poEstado : Estados);
begin
  codigo:= pCodigo;
  cidade:= pCidade;
  sigla:= pSigla;
  ddd:= pDDD;
  dataCad := pDataCad;
  ultAlt  := pUltAlt;
  codUsu  := pCodUsu;
  umEstado:= poEstado;
end;

constructor Cidades.crieObj;
begin
  inherited;
  cidade:= '';
  sigla:= '';
  ddd:= '';
  umEstado:= Estados.crieObj;
end;

destructor Cidades.destrua_se;
begin
  umEstado.destrua_se;
end;

function Cidades.getCidade: string;
begin
  Result:= cidade;
end;

function Cidades.getDDD: string;
begin
  Result:= ddd;
end;

function Cidades.getoEstado: Estados;
begin
  Result:= umEstado;
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
  ddd:= pDDD;
end;

procedure Cidades.setoEstado(poEstado: Estados);
begin
  umEstado:= poEstado;
end;

procedure Cidades.setSigla(pSigla: string);
begin
  sigla:= pSigla;
end;

function Cidades.clone: Cidades;
begin
  Result:= Cidades.crieObj;
  Result.setCodigo( codigo );
  Result.setCidade( cidade );
  Result.setSigla( sigla );
  Result.setDDD( ddd );
  Result.setoEstado( umEstado.clone );
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
end;

end.
