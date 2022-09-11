unit uDaoColecoes;

interface

uses uDAO, uFilterSearch, uColecoes;

type daoColecoes = class( DAO )
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

{ daoColecoes }

function daoColecoes.carregar(pObj: TObject): string;
var mColecao : Colecoes;
begin
  mColecao:= Colecoes( pObj );

  mColecao.setCodigo( aDM.QColecoes.FieldByName('CODCOLECAO').Value );
  mColecao.setColecao( aDM.QColecoes.FieldByName('COLECAO').AsString );
  mColecao.setDataCad( aDM.QColecoes.FieldByName('DATACAD').AsDateTime );
end;

constructor daoColecoes.crieObj;
begin
  inherited;

end;

function daoColecoes.excluir(pObj: TObject): string;
begin

end;

function daoColecoes.getDS: TObject;
begin
  Result:= aDM.DSColecoes;
end;

function daoColecoes.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
    msql:= '';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM COLECOES WHERE CODCOLECAO =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM COLECOES WHERE COLECAO LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM COLECOES ORDER BY CODCOLECAO';
     end;

    end;

    aDM.QColecoes.Active:= false;
    aDM.QColecoes.SQL.Text:=msql;
    aDM.QColecoes.Open;
    result:= '';
end;

function daoColecoes.salvar(pObj: TObject): string;
var mColecao : Colecoes;
begin
  mColecao:= Colecoes( pObj );
  aDM.Transacao.StartTransaction;
  try
    if mColecao.getCodigo = 0 then
       aDM.QColecoes.Insert
    else
       aDM.QColecoes.Edit;

    aDM.QColecoes.FieldByName('CODCOLECAO').AsInteger:= mColecao.getCodigo;
    aDM.QColecoes.FieldByName('COLECAO').AsAnsiString:= mColecao.getColecao;
    aDM.QColecoes.FieldByName('DATACAD').AsDateTime:= mColecao.getDataCad;

    aDM.QColecoes.Post;

    aDM.Transacao.Commit;

  except
    aDM.Transacao.Rollback;
  end;
end;

end.
