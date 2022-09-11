unit uCtrlDepartamentos;

interface

uses uController,
     uFilterSearch,
     uDaoDepartamentos;

type ctrlDepartamentos = class(Ctrl)
  private
  protected
    aDaoDepartamento : daoDepartamentos;
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

{ ctrlDepartamentos }

function ctrlDepartamentos.carregar(pObj: TObject): string;
begin
  aDaoDepartamento.carregar( pObj );
end;

constructor ctrlDepartamentos.crieObj;
begin
  inherited;
  aDaoDepartamento:= daoDepartamentos.crieObj;
end;

destructor ctrlDepartamentos.destrua_se;
begin
  inherited;
  aDaoDepartamento.destrua_se;
end;

function ctrlDepartamentos.excluir(pObj: TObject): string;
begin

end;

function ctrlDepartamentos.getDS: TObject;
begin
  Result:= aDaoDepartamento.getDS;
end;

function ctrlDepartamentos.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
begin
  Result:= aDaoDepartamento.pesquisar( AFilter, pChave );
end;

function ctrlDepartamentos.salvar(pObj: TObject): string;
begin
  aDaoDepartamento.salvar( pObj );
end;

procedure ctrlDepartamentos.setDM(pDM: TObject);
begin
  inherited;
  aDaoDepartamento.setDM( pDM );
end;

end.
