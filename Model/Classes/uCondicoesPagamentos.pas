unit uCondicoesPagamentos;

interface

uses uPai,
     uFormaPagamento,
     System.Generics.Collections,
     uParcelas;

type CondicoesPagamentos = class ( Pai )
  private
  protected
     condicao : string[80];
     juros : real;
     desconto : real;
     multa : real;
     tipo: string;
     parcelas : integer;
     listaParcelas : TObjectList<Parcela>;
   //  parcela : Parcela;
     umaFormaPgto : FormasPagamentos;
  public
     constructor crieObj;
     destructor destrua_se;

     procedure setCondicao ( pCondicao : string );
     procedure setJuros ( pJuros : real );
     procedure setDesconto ( pDesconto : real );
     procedure setMulta ( pMulta : real );
     procedure setTipo ( pTipo : string );
     procedure setParcelas ( pParcelas : integer );
     procedure setListaParcelas ( pListaParcelas : TObjectList<Parcela> );
     procedure setFormaPgto ( paFormaPgto : FormasPagamentos );

     function getCondicao : string;
     function getJuros : real;
     function getDesconto : real;
     function getMulta : real;
     function getTipo : string;
     function getParcelas : integer;
     function getListaParcelas : TObjectList<Parcela>;
     function getaFormaPgto : FormasPagamentos;
     function clone : CondicoesPagamentos;
end;

implementation

{ CondicaoPagamento }

constructor CondicoesPagamentos.crieObj;
begin
  inherited;
  condicao:= '';
  juros:= 0;
  desconto:= 0;
  multa:= 0;
  tipo:= '';
  parcelas:= 0;
  //parcela:= Parcela.crieObj;
  listaParcelas:= TObjectList<Parcela>.Create;
  umaFormaPgto:= FormasPagamentos.crieObj;
end;

destructor CondicoesPagamentos.destrua_se;
begin
  listaParcelas.Destroy;
  umaFormaPgto.destrua_se;
end;

function CondicoesPagamentos.getaFormaPgto: FormasPagamentos;
begin
  Result:= umaFormaPgto;
end;

function CondicoesPagamentos.getCondicao: string;
begin
  Result:= condicao;
end;

function CondicoesPagamentos.getDesconto: real;
begin
  Result:= desconto;
end;

function CondicoesPagamentos.getJuros: real;
begin
  Result:= juros;
end;

function CondicoesPagamentos.getListaParcelas: TObjectList<Parcela>;
begin
  Result:= listaParcelas;
end;

function CondicoesPagamentos.getMulta: real;
begin
  Result:= multa;
end;

function CondicoesPagamentos.getParcelas: integer;
begin
  Result:= parcelas;
end;

function CondicoesPagamentos.getTipo: string;
begin
  Result:= tipo;
end;

procedure CondicoesPagamentos.setCondicao(pCondicao: string);
begin
  condicao:= pCondicao;
end;

procedure CondicoesPagamentos.setDesconto(pDesconto: real);
begin
  desconto:= pDesconto;
end;

procedure CondicoesPagamentos.setFormaPgto(paFormaPgto: FormasPagamentos);
begin
  umaFormaPgto:= paFormaPgto;
end;

procedure CondicoesPagamentos.setJuros(pJuros: real);
begin
  juros:= pJuros;
end;

procedure CondicoesPagamentos.setListaParcelas(
  pListaParcelas: TObjectList<Parcela>);
begin
  listaParcelas:= pListaParcelas;
end;

procedure CondicoesPagamentos.setMulta(pMulta: real);
begin
  multa:= pMulta;
end;

procedure CondicoesPagamentos.setParcelas(pParcelas: integer);
begin
  parcelas:= pParcelas;
end;

procedure CondicoesPagamentos.setTipo(pTipo: string);
begin
  tipo:= pTipo;
end;

function CondicoesPagamentos.clone: CondicoesPagamentos;
begin
  Result:= CondicoesPagamentos.crieObj;
  Result.setCodigo( codigo );
  Result.setCondicao( condicao );
  Result.setJuros( juros );
  Result.setDesconto( desconto );
  Result.setMulta( multa );
  Result.setTipo( tipo );
  Result.setParcelas( parcelas );
  Result.setFormaPgto( umaFormaPgto.clone );
//  Result.setListaParcelas(  );
  Result.setDataCad(dataCad);
  Result.setUltAlt(ultAlt);
  Result.setCodUsu(codUsu);
end;

end.
