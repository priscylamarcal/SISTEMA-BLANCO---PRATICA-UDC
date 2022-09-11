unit uPai;

interface

type Pai = class
  private
  protected
    codigo  : integer;
    dataCad : TDateTime;
    ultAlt  : TDateTime;
    codUsu  : integer;
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setCodigo ( pCodigo : integer );
    procedure setDataCad ( pDataCad : TDateTime );
    procedure setUltAlt ( pUltAlt : TDateTime );
    procedure setCodUsu ( pCodUsu : integer );
    function getCodigo : integer;
    function getDataCad : TDateTime;
    function getUltAlt : TDateTime;
    function getCodUsu : integer;
end;

implementation

{ pai }

constructor Pai.crieObj;
begin
  codigo:= 0;
  dataCad:= 0;
  ultAlt:= 0;
  codUsu:= 1;
end;

destructor Pai.destrua_se;
begin

end;

function Pai.getCodigo: integer;
begin
  Result:= codigo;
end;

function Pai.getCodUsu: integer;
begin
  Result:= codUsu;
end;

function Pai.getDataCad: TDateTime;
begin
  Result:= dataCad;
end;

function Pai.getUltAlt: TDateTime;
begin
  Result:= ultAlt;
end;

procedure Pai.setCodigo(pCodigo: integer);
begin
  codigo:= pCodigo;
end;

procedure Pai.setCodUsu(pCodUsu: integer);
begin
  codUsu:= pCodUsu;
end;

procedure Pai.setDataCad(pDataCad: TDateTime);
begin
  dataCad:= pDataCad;
end;

procedure Pai.setUltAlt(pUltAlt: TDateTime);
begin
  ultAlt:= pUltAlt;
end;

end.
