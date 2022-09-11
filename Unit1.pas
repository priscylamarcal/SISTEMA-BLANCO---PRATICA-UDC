unit Unit1;

interface

uses uPai, uFormaPagamento, uCondicoesPagamentos;

type parcelas = class(Pai)
  protected
     dias         : integer;
     parcelas     : integer;
     porcentagem  : real;
     umaFormaPgto : FormasPagamentos;
     umaCondPgto  : CondicoesPagamentos;
  public
     constructor crieObj;
     destructor destrua_se;
     procedure setDias ( pDias : integer );
     procedure setParcelas ( pParcelas : integer );
     procedure setPorcentagem ( pPorcentagem : real );
     procedure setaFormaPgto ( paFormaPgto : FormasPagamentos );
     procedure setaCondPgto ( paCondPgto : CondicoesPagamentos );
     function getDias : integer;
     function getParcelas : integer;
     function getPorcentagem : real;
     function getaFormaPgto : FormasPagamentos;
     function getaCondPgto : CondicoesPagamentos;
     function clone : Parcelas;

end;

implementation

{ parcelas }

function parcelas.clone: Parcelas;
begin
  Result:= parcelas.
end;

constructor parcelas.crieObj;
begin

end;

destructor parcelas.destrua_se;
begin

end;

function parcelas.getaCondPgto: CondicoesPagamentos;
begin

end;

function parcelas.getaFormaPgto: FormasPagamentos;
begin

end;

function parcelas.getDias: integer;
begin

end;

function parcelas.getParcelas: integer;
begin

end;

function parcelas.getPorcentagem: real;
begin

end;

procedure parcelas.setaCondPgto(paCondPgto: CondicoesPagamentos);
begin

end;

procedure parcelas.setaFormaPgto(paFormaPgto: FormasPagamentos);
begin

end;

procedure parcelas.setDias(pDias: integer);
begin

end;

procedure parcelas.setParcelas(pParcelas: integer);
begin

end;

procedure parcelas.setPorcentagem(pPorcentagem: real);
begin

end;

end.
