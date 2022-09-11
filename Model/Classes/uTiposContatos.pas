unit uTiposContatos;

interface

uses uPai;

type TiposContatos = class( Pai )
  private
  protected
    tipoContato : string[80];
  public
    constructor crieObj;
    destructor destrua_se;
    procedure setTipoContato ( pTipoContato : string );
    function getTipoContato : string;
    function clone : TiposContatos;
end;

implementation

{ TiposContatos }

constructor TiposContatos.crieObj;
begin
  tipoContato:= '';
end;

destructor TiposContatos.destrua_se;
begin

end;

function TiposContatos.getTipoContato: string;
begin
  Result:= tipoContato;
end;

procedure TiposContatos.setTipoContato(pTipoContato: string);
begin
  tipoContato:= pTipoContato;
end;

function TiposContatos.clone: TiposContatos;
begin
  Result:= TiposContatos.crieObj;
  Result.setCodigo( codigo );
  Result.setTipoContato( tipoContato );
  Result.setDataCad( dataCad );
  Result.setUltAlt( ultAlt );
  Result.setCodUsu( codUsu );
end;

end.
