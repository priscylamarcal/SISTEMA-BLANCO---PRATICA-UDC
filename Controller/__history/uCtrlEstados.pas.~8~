unit uCtrlEstados;

interface

uses uController, uDaoEstados, uFilterSearch, uCtrlPaises;

type ctrlEstados = class( Ctrl )
  private
  protected
    aDaoEstados : daoEstados;
    aCtrlPaises : ctrlPaises;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
    function getCtrlPaises: TObject;
end;

implementation

{ ctrlEstados }

function ctrlEstados.carregar(pObj: TObject): string;
begin
  aDaoEstados.carregar( pObj );
end;

constructor ctrlEstados.crieObj;
begin
    aDaoEstados:= daoEstados.crieObj;
//  aCtrlPaises:= ctrlPaises.crieObj;


end;

destructor ctrlEstados.destrua_se;
begin
    aDaoEstados.destrua_se;
//  aCtrlPaises.destrua_se;


end;

function ctrlEstados.excluir(pObj: TObject): string;
begin

end;

function ctrlEstados.getCtrlPaises: TObject;
begin
  Result:= aCtrlPaises;
end;

function ctrlEstados.getDS: TObject;
begin
   Result:= aDaoEstados.getDS;
 // Result:= aCtrlPaises.getDS;


end;

function ctrlEstados.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoEstados.pesquisar( AFilter, pChave );
end;

function ctrlEstados.salvar(pObj: TObject): string;
begin
  aDaoEstados.salvar( pObj );
end;

procedure ctrlEstados.setDM(pDM: TObject);
begin
  inherited;
  aDaoEstados.setDM( pDM );
end;

end.
