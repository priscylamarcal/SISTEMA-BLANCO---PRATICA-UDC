unit uGruposRoupas;

interface

uses uPai;

type GruposRoupas = class( Pai )
  private

  protected
    grupoRoupa : string[80];
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setGrupoRoupa ( pGrupoRoupa : string );
    function getGrupoRoupa : string;
    function clone : GruposRoupas;
end;

implementation

{ gruposRoupas }

constructor GruposRoupas.crieObj;
begin
  inherited;
  grupoRoupa:= '';
end;

destructor GruposRoupas.destrua_se;
begin

end;

function GruposRoupas.getGrupoRoupa: string;
begin
  Result:= grupoRoupa;
end;

procedure GruposRoupas.setGrupoRoupa(pGrupoRoupa: string);
begin
  grupoRoupa:= pGrupoRoupa;
end;

function GruposRoupas.clone: GruposRoupas;
begin
  Result:= GruposRoupas.crieObj;
  Result.setCodigo( codigo );
  Result.setGrupoRoupa( grupoRoupa );
  Result.setDataCad( dataCad );
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
end;

end.
