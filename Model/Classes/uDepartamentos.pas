unit uDepartamentos;

interface

uses uPai;

type Departamentos = class(Pai)
  private
  protected
    departamento : string[80];
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setDepartamento ( pDepartamento : string );
    function getDepartamento : string;
    function clone : Departamentos;
end;

implementation

{ Departamentos }

constructor Departamentos.crieObj;
begin
  inherited;
  departamento:= '';
end;

destructor Departamentos.destrua_se;
begin

end;

function Departamentos.getDepartamento: string;
begin
  Result:= departamento;
end;

procedure Departamentos.setDepartamento(pDepartamento: string);
begin
  departamento:= pDepartamento;
end;

function Departamentos.clone: Departamentos;
begin
  Result:= Departamentos.crieObj;
  Result.setDepartamento( departamento );
  Result.setCodigo( codigo );
  Result.setDataCad( dataCad );
  Result.setUltAlt( ultAlt );
  Result.setCodUsu( codUsu );
end;

end.
