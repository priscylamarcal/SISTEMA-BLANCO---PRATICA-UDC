unit uCtrlClientes;

interface

uses uController, uFilterSearch, uDaoClientes;

type ctrlClientes = class( Ctrl )
  private
  protected
    aDaoClientes : daoClientes;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
end;

implementation

{ ctrlClientes }

function ctrlClientes.carregar(pObj: TObject): string;
begin
  aDaoClientes.carregar( pObj );
end;

constructor ctrlClientes.crieObj;
begin
  aDaoClientes:= daoClientes.crieObj;
end;

destructor ctrlClientes.destrua_se;
begin
  aDaoClientes.destrua_se;
end;

function ctrlClientes.excluir(pObj: TObject): string;
begin

end;

function ctrlClientes.getDS: TObject;
begin
  Result:= aDaoClientes.getDS;
end;

function ctrlClientes.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
 Result := aDaoClientes.Pesquisar( AFilter, pChave );
end;

function ctrlClientes.salvar(pObj: TObject): string;
begin

end;

procedure ctrlClientes.setDM(pDM: TObject);
begin
  inherited;
  aDaoClientes.setDM( pDM );
end;

end.
