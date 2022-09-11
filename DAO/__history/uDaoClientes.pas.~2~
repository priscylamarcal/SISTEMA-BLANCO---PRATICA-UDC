unit uDaoClientes;

interface

uses uDAO, uFilterSearch;

type daoClientes = class( DAO )
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

{ daoClientes }

function daoClientes.carregar(pObj: TObject): string;
begin

end;

constructor daoClientes.crieObj;
begin
  inherited;

end;

function daoClientes.excluir(pObj: TObject): string;
begin

end;

function daoClientes.getDS: TObject;
begin
  Result:= aDM.DSClientes;
end;

function daoClientes.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM CLIENTES';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM CLIENTES WHERE CODCLIENTE =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM CLIENTES WHERE RAZAO_SOCIAL LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM CLIENTES ORDER BY CODCLIENTE';
     end;

    end;

    aDM.QClientes.Active:= false;
    aDM.QClientes.SQL.Text:=msql;
    aDM.QClientes.Open;
    result:= '';
end;

function daoClientes.salvar(pObj: TObject): string;
begin

end;

end.
