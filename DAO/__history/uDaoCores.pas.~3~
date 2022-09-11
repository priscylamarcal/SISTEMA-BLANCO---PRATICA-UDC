unit uDaoCores;

interface

uses uFilterSearch,
     uDAO,
     uCores;

type daoCores = class( DAO )
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

{ daoCores }

function daoCores.carregar(pObj: TObject): string;
var mCor : Cores;
begin
  mCor:= Cores( pObj );

  mCor.setCodigo(aDM.QCores.FieldByName('CODCOR').Value);
  mCor.setCor(aDM.QCores.FieldByName('COR').AsString);
  mCor.setDataCad(aDM.QCores.FieldByName('DATACAD').AsDateTime);
end;

constructor daoCores.crieObj;
begin
  inherited;

end;

function daoCores.excluir(pObj: TObject): string;
begin

end;

function daoCores.getDS: TObject;
begin
  Result:= aDM.DSCores;
end;

function daoCores.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
   msql:= '';

   case AFilter.TipoConsulta of
     TpCCodigo:
     begin
       msql:= 'SELECT * FROM CORES WHERE CODCOR =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM CORES WHERE COR LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM CORES ORDER BY CODCOR';
     end;
   end;

   aDM.QCores.Active:= False;
   aDM.QCores.SQL.Text:= msql;
   aDM.QCores.Open;
   Result:= '';
end;

function daoCores.salvar(pObj: TObject): string;
var mCor : Cores;
begin
  mCor:= Cores( pObj );
  aDM.Transacao.StartTransaction;
  try
    if mCor.getCodigo = 0 then
       aDM.QCores.Insert
    else
       aDM.QCores.Edit;

    aDM.QCores.FieldByName('CODCOR').AsInteger:= mCor.getCodigo;
    aDM.QCores.FieldByName('COR').AsAnsiString:= mCor.getCor;
    aDM.QCores.FieldByName('DATACAD').AsDateTime:= mCor.getDataCad;

    aDM.QCores.Post;

    aDM.Transacao.Commit;
  except
    aDM.Transacao.Rollback;
  end;
end;

end.
