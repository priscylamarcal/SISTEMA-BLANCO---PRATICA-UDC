unit uCtrlParcelas;

interface

uses uController, uFilterSearch, uCtrlFormasPagamentos, uParcelas, uDaoParcelas,
    system.Generics.Collections, uFormaPagamento;

type ctrlParcelas = class (Ctrl)
  private

  protected
    aDaoParcelas : daoParcela;
    aCtrlFormas : CtrlFormasPagamentos;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
    function salvarParcela ( lista: TObjectList<Parcela> ) : string;

    procedure setCtrlFormas ( pCtrl : ctrlFormasPagamentos );
    function getCtrlFormas : ctrlFormasPagamentos;
end;

implementation

{ ctrlParcelas }

function ctrlParcelas.carregar(pObj: TObject): string;
var mForma : FormasPagamentos; aFilter: TFilterSearch; tipoConsulta : TTipoConsulta; pChave : string;
begin
  aDaoParcelas.carregar( pObj );

  mForma:= Parcela( pObj ).getaFormaPgto;
  aCtrlFormas.pesquisar(aFilter, pChave);
end;

constructor ctrlParcelas.crieObj;
begin
  aDaoParcelas:= daoParcela.crieObj;
end;

destructor ctrlParcelas.destrua_se;
begin
  aDaoParcelas.destrua_se;
end;

function ctrlParcelas.excluir(pObj: TObject): string;
begin

end;

function ctrlParcelas.getCtrlFormas: ctrlFormasPagamentos;
begin
  Result:= getCtrlFormas;
end;

function ctrlParcelas.getDS: TObject;
begin
  Result:= aDaoParcelas.getDS;
end;

function ctrlParcelas.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoParcelas.pesquisar(AFilter, pChave);
end;

function ctrlParcelas.salvar(pObj: TObject): string;
begin
  aDaoParcelas.salvar(pObj);
end;

function ctrlParcelas.salvarParcela(lista: TObjectList<Parcela>): string;
begin
  aDaoParcelas.salvarLista(lista);
end;

procedure ctrlParcelas.setCtrlFormas(pCtrl: ctrlFormasPagamentos);
begin
  aCtrlFormas:= pCtrl;
end;

procedure ctrlParcelas.setDM(pDM: TObject);
begin
  inherited;
  aDaoParcelas.setDM(pDM);
end;

end.
