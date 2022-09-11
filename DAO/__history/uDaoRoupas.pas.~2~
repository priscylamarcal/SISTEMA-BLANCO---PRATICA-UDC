unit uDaoRoupas;

interface

uses uDAO, uFilterSearch;

type daoRoupas = class( DAO )
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

{ daoRoupas }

function daoRoupas.carregar(pObj: TObject): string;
begin

end;

constructor daoRoupas.crieObj;
begin
  inherited;

end;

function daoRoupas.excluir(pObj: TObject): string;
begin

end;

function daoRoupas.getDS: TObject;
begin
  Result:= aDM.DSRoupas;
end;

function daoRoupas.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM ROUPAS';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM ROUPAS WHERE COD_ROUPA =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM ROUPAS WHERE DESCRICAO_ROUPA LIKE  ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM ROUPAS ORDER BY COD_ROUPA';
     end;

    end;

    aDM.QRoupas.Active:= false;
    aDM.QRoupas.SQL.Text:=msql;
    aDM.QRoupas.Open;
    result:= '';
end;

function daoRoupas.salvar(pObj: TObject): string;
begin

end;

end.
