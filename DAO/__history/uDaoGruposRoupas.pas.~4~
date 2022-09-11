unit uDaoGruposRoupas;

interface

uses uDAO, uFilterSearch, uGruposRoupas;

type daoGruposRoupas = class( DAO )
  private
  protected
  public
    constructor crieObj;                              override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
end;

implementation

uses
  System.SysUtils;

{ daoGruposRoupas }

function daoGruposRoupas.carregar(pObj: TObject): string;
var mGrupoRoupa : GruposRoupas;
begin
  mGrupoRoupa:= GruposRoupas( pObj );

  mGrupoRoupa.setCodigo( aDM.QGruposRoupas.FieldByName('CODGRUPO').Value );
  mGrupoRoupa.setGrupoRoupa( aDM.QGruposRoupas.FieldByName('GRUPOROUPA').AsString );
  mGrupoRoupa.setDataCad( aDM.QGruposRoupas.FieldByName('DATACAD').AsDateTime);
end;

constructor daoGruposRoupas.crieObj;
begin
  inherited;

end;

function daoGruposRoupas.excluir(pObj: TObject): string;
begin

end;

function daoGruposRoupas.getDS: TObject;
begin
  Result:= aDM.DSGruposRoupas;
end;

function daoGruposRoupas.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
var msql : string;
begin
    msql:= '';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM GRUPOS_ROUPAS WHERE CODGRUPO =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM GRUPOS_ROUPAS WHERE GRUPOROUPA LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM GRUPOS_ROUPAS ORDER BY CODGRUPO';
     end;

    end;

    aDM.QGruposRoupas.Active:= false;
    aDM.QGruposRoupas.SQL.Text:=msql;
    aDM.QGruposRoupas.Open;
    result:= '';
end;

function daoGruposRoupas.salvar(pObj: TObject): string;
var mGrupoRoupa : GruposRoupas;
begin
  mGrupoRoupa:= GruposRoupas( pObj );
  aDM.Transacao.StartTransaction;
  try
    if mGrupoRoupa.getCodigo = 0 then
       aDM.QGruposRoupas.Insert
    else
       aDM.QGruposRoupas.Edit;

    aDM.QGruposRoupas.FieldByName('CODGRUPO').AsInteger:= mGrupoRoupa.getCodigo;
    aDM.QGruposRoupas.FieldByName('GRUPOROUPA').AsAnsiString:= mGrupoRoupa.getGrupoRoupa;
    aDM.QGruposRoupas.FieldByName('DATACAD').AsDateTime:= mGrupoRoupa.getDataCad;

    aDM.QGruposRoupas.Post;

    aDM.Transacao.Commit;

  except
    aDM.Transacao.Rollback;
  end;
end;

end.
