unit uEstados;

interface

uses Classes, SysUtils,
     uPai, uPaises;

type Estados = class(Pai)
  private
  protected
    estado : string[50];
    UF     : string[2];
    umPais : Paises;
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setEstado ( pEstado : string );
    procedure setUF ( pUF : string );
    procedure setoPais ( poPais : Paises );
    function getEstado : string;
    function getUF : string;
    function getoPais : Paises;
    function clone : Estados;
end;

implementation

{ Estados }

constructor Estados.crieObj;
begin
  inherited;
  estado:= '';
  UF:= '';
  umPais:= Paises.crieObj;
end;

destructor Estados.destrua_se;
begin
  umPais.destrua_se;
end;

function Estados.getEstado: string;
begin
  Result:= estado;
end;

function Estados.getoPais: Paises;
begin
  Result:= umPais;
end;

function Estados.getUF: string;
begin
  Result:= UF;
end;

procedure Estados.setEstado(pEstado: string);
begin
  estado:= pEstado;
end;

procedure Estados.setoPais(poPais: Paises);
begin
  umPais:= poPais;
end;

procedure Estados.setUF(pUF: string);
begin
  UF:= pUF;
end;

function Estados.clone: Estados;
begin
  Result:= Estados.crieObj;
  Result.setCodigo(codigo);
  Result.setEstado(estado);
  Result.setUF(UF);
  Result.setoPais( umPais.clone );
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
end;

end.
