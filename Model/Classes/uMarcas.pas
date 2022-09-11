unit uMarcas;

interface

uses uPai;

type Marcas = class(Pai)
  private
  protected
    marca : string[80];
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setMarca ( pMarca : string );
    function getMarca : string;
    function clone : Marcas;
end;

implementation

{ Marcas }

constructor Marcas.crieObj;
begin
  inherited;
  marca:= '';
end;

destructor Marcas.destrua_se;
begin

end;

function Marcas.getMarca: string;
begin
  Result:= marca;
end;

procedure Marcas.setMarca(pMarca: string);
begin
  marca:= pMarca;
end;

function Marcas.clone: Marcas;
begin
  Result:= Marcas.crieObj;
  Result.setMarca( marca );
  Result.setCodigo( codigo );
  Result.setDataCad( dataCad );
  Result.setUltAlt( ultAlt );
  Result.setCodUsu( codUsu );
end;

end.
