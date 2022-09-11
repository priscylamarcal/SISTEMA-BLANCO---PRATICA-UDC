unit uColecoes;

interface

uses uPai;

type Colecoes = class( Pai )
  private
  protected
     colecao : string[80];
  public
     constructor crieObj;
     destructor destrua_se;
     procedure setColecao ( pColecao : string );
     function getColecao : string;
     function clone : Colecoes;
end;

implementation

{ colecoes }

constructor Colecoes.crieObj;
begin
  inherited;
  colecao:= '';
end;

destructor Colecoes.destrua_se;
begin

end;

function Colecoes.getColecao: string;
begin
  Result:= colecao;
end;

procedure Colecoes.setColecao(pColecao: string);
begin
  colecao:= pColecao;
end;

function Colecoes.clone: Colecoes;
begin
  Result:= Colecoes.crieObj;
  Result.setCodigo( codigo );
  Result.setColecao( colecao );
  Result.setDataCad( dataCad );
  Result.setUltAlt( ultAlt );
  Result.setCodUsu( codUsu );
end;

end.
