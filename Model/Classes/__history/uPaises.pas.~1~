unit uPaises;

interface

uses Classes, SysUtils,
     uPai;

type Paises = class(Pai)
  private

  protected
    pais  : string[50];
    sigla : string[3];
    DDI   : string[3];
    moeda : string[2];
  public
    constructor crieObj;
    constructor crieInit ( pCodigo : integer; pPais : string; pSigla : string; pDDI : string; pMoeda : string; pDataCad : string; pUltAlt : string; pCodUsu : integer );
    destructor destrua_se;
    procedure setPais ( pPais : string );
    procedure setSigla ( pSigla : string );
    procedure setDDI ( pDDI : string );
    procedure setMoeda ( pMoeda : string );
    function getPais : string;
    function getSigla : string;
    function getDDI : string;
    function getMoeda : string;
    function clone : Paises;
end;

implementation

{ Paises }

constructor Paises.crieInit(pCodigo: integer; pPais, pSigla, pDDI, pMoeda,
  pDataCad, pUltAlt: string; pCodUsu: integer);
begin
  codigo  := pCodigo;
  pais    := pPais;
  sigla   := pSigla;
  DDI     := pDDI;
  moeda   := pMoeda;
  dataCad := pDataCad;
  ultAlt  := pUltAlt;
  codUsu  := pCodUsu;
end;

constructor Paises.crieObj;
begin
  inherited;
  pais:= '';
  sigla:= '';
  DDI:= '';
  moeda:= '';
end;

destructor Paises.destrua_se;
begin

end;

function Paises.getDDI: string;
begin
  Result:= DDI;
end;

function Paises.getMoeda: string;
begin
  Result:= moeda;
end;

function Paises.getPais: string;
begin
  Result:= pais;
end;

function Paises.getSigla: string;
begin
  Result:= sigla;
end;

procedure Paises.setDDI(pDDI: string);
begin
  DDI:= pDDI;
end;

procedure Paises.setMoeda(pMoeda: string);
begin
  moeda:= pMoeda;
end;

procedure Paises.setPais(pPais: string);
begin
  pais:= pPais;
end;

procedure Paises.setSigla(pSigla: string);
begin
  sigla:= pSigla;
end;

function Paises.clone: Paises;
begin
  Result:= Paises.crieObj;
  Result.setCodigo(codigo);
  Result.setPais(pais);
  Result.setDDI(DDI);
  Result.setSigla(sigla);
  Result.setMoeda(moeda);
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
end;

end.
