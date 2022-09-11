unit uDaoParcelas;

interface

uses uDAO,
     uFilterSearch, uParcelas, uFormaPagamento,

     System.Generics.Collections, System.SysUtils;

type daoParcela = class (DAO)
  private
  protected
  public
    constructor crieObj;                              override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
    function salvarLista ( lista : TObjectList<Parcela> ) : string;
    function carregarLista ( lista : TObjectList<Parcela> ) : string;
end;

implementation

{ daoParcelas }

function daoParcela.carregar(pObj: TObject): string;
var mParcela : Parcela; mFormaPagamento : FormasPagamentos;
begin
  mParcela:= Parcela( pObj );
  mFormaPagamento:= mParcela.getaFormaPgto;

  mParcela.setDias(aDM.QParcelas.FieldByName('DIAS').AsInteger);
  mParcela.setParcelas(aDM.QParcelas.FieldByName('NUMERO_PARCELA').AsInteger);
  mParcela.setPorcentagem(aDM.QParcelas.FieldByName('PERCENTUAL').AsFloat);
  mParcela.setCodCondPgto(aDM.QParcelas.FieldByName('COD_COND_PGTO').AsInteger);

  mParcela.getaFormaPgto.setCodigo(aDM.QParcelas.FieldByName('COD_FORMA_PGTO').Value);
end;

function daoParcela.carregarLista(lista: TObjectList<Parcela>): string;
begin

end;

constructor daoParcela.crieObj;
begin
  inherited;

end;

function daoParcela.excluir(pObj: TObject): string;
begin

end;

function daoParcela.getDS: TObject;
begin
  Result:= aDM.DSParcelas;
end;

function daoParcela.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM PARCELAS';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM PARCELAS WHERE COD =' + IntToStr( AFilter.Codigo );
     end;

//     TpCParam:
//     begin
//       msql:= ( 'SELECT * FROM PARCELAS WHERE ESTADO LIKE  ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
//     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM PARCELAS ORDER BY PARCELAS';
     end;

    end;

    aDM.QParcelas.Active:= false;
    aDM.QParcelas.SQL.Text:=msql;
    aDM.QParcelas.Open;
    result:= '';
end;

function daoParcela.salvar(pObj: TObject): string;
var mParcela : Parcela; mFormaPagamento : FormasPagamentos;
begin
  mParcela:= Parcela( pObj );
  mFormaPagamento:= mParcela.getaFormaPgto;

  aDM.Transacao.StartTransaction;
  try
    if mParcela.getCodigo = 0 then
       aDM.QParcelas.Insert
    else
       aDM.QParcelas.Edit;

    aDM.QParcelas.FieldByName('DIAS').AsInteger:= mParcela.getDias;
    aDM.QParcelas.FieldByName('NUMERO_PARCELA').AsInteger:= mParcela.getParcelas;
    aDM.QParcelas.FieldByName('PERCENTUAL').AsFloat:= mParcela.getPorcentagem;
    aDM.QParcelas.FieldByName('COD_COND_PGTO').AsInteger:= mParcela.getCodCondPgto;
    aDM.QParcelas.FieldByName('COD_FORMA_PGTO').AsInteger:= mFormaPagamento.getCodigo;

    aDM.QEstados.Post;

    aDM.Transacao.Commit;

  except
    aDM.Transacao.Rollback;
  end;
end;

function daoParcela.salvarLista(lista: TObjectList<Parcela>): string;
var
  I: Integer;
  Obj: TObject;
begin
//  Result := False;
  for I  := 0 to Lista.Count - 1 do
  begin
    Obj    := Lista[ I ];
    Result := Self.salvar( Obj );
  end;
end;

end.
