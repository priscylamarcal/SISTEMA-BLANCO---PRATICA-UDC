unit uDaoTiposContatos;

interface

uses uFilterSearch, uTiposContatos, uDAO;

type daoTiposContatos = class( DAO )
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

{ daoTiposContatos }

function daoTiposContatos.carregar(pObj: TObject): string;
var mTipoContato : TiposContatos;
begin
  mTipoContato:= TiposContatos( pObj );

  mTipoContato.setCodigo( aDM.QTiposContatos.FieldByName('CODTIPO').Value );
  mTipoContato.setTipoContato( aDM.QTiposContatos.FieldByName('TIPOCONTATO').AsString );
  mTipoContato.setDataCad( aDM.QTiposContatos.FieldByName('DATACAD').AsDateTime );
end;

constructor daoTiposContatos.crieObj;
begin
  inherited;

end;

function daoTiposContatos.excluir(pObj: TObject): string;
begin

end;

function daoTiposContatos.getDS: TObject;
begin
  Result:= aDM.DSTiposContatos;
end;

function daoTiposContatos.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
var msql : string;
begin
    msql:= '';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM TIPOS_CONTATOS WHERE CODTIPO =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM TIPOS_CONTATOS WHERE TIPOCONTATO LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM TIPOS_CONTATOS ORDER BY CODTIPO';
     end;

    end;

    aDM.QTiposContatos.Active:= false;
    aDM.QTiposContatos.SQL.Text:=msql;
    aDM.QTiposContatos.Open;
    result:= '';
end;

function daoTiposContatos.salvar(pObj: TObject): string;
var mTipoContato : TiposContatos;
begin
  mTipoContato:= TiposContatos( pObj );
  aDM.Transacao.StartTransaction;
  try
    if mTipoContato.getCodigo = 0 then
       aDM.QTiposContatos.Insert
    else
       aDM.QTiposContatos.Edit;

    aDM.QTiposContatos.FieldByName('CODTIPO').AsInteger:= mTipoContato.getCodigo;
    aDM.QTiposContatos.FieldByName('TIPOCONTATO').AsAnsiString:= mTipoContato.getTipoContato;
    aDM.QTiposContatos.FieldByName('DATACAD').AsDateTime:= mTipoContato.getDataCad;

    aDM.QTiposContatos.Post;

    aDM.Transacao.Commit;

  except
    aDM.Transacao.Rollback;
  end;
end;

end.
