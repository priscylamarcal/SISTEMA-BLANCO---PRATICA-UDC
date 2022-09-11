unit uCargos;

interface

uses uPai,
     uDepartamentos;

type
  Cargos = class(Pai)
  private
  protected
    cargo: string[80];
    umDepartamento: Departamentos;
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setCargo(pCargo: string);
    procedure setoDepartamento(pDepartamento: Departamentos);
    function getCargo: string;
    function getoDepartamento: Departamentos;
    function clone: Cargos;
  end;

implementation

{ Cargos }

constructor Cargos.crieObj;
begin
  cargo := '';
  umDepartamento := Departamentos.crieObj;
end;

destructor Cargos.destrua_se;
begin
  umDepartamento.destrua_se;
end;

function Cargos.getCargo: string;
begin
  Result := cargo;
end;

function Cargos.getoDepartamento: Departamentos;
begin
  Result := umDepartamento;
end;

procedure Cargos.setCargo(pCargo: string);
begin
  cargo := pCargo;
end;

procedure Cargos.setoDepartamento(pDepartamento: Departamentos);
begin
  umDepartamento := pDepartamento;
end;

function Cargos.clone: Cargos;
begin
  Result := Cargos.crieObj;
  Result.setCodigo(codigo);
  Result.setCargo(cargo);
  Result.setoDepartamento(umDepartamento.clone);
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
end;

end.
