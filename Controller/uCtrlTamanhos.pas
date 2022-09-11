unit uCtrlTamanhos;

interface

uses uController, uFilterSearch, uDaoTamanhos;

type ctrlTamanhos = class( Ctrl )
  private
  protected
    aDaoTamanhos : daoTamanhos;
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

{ ctrlTamanhos }

function ctrlTamanhos.carregar(pObj: TObject): string;
begin
  aDaoTamanhos.carregar( pObj );
end;

constructor ctrlTamanhos.crieObj;
begin
  aDaoTamanhos:= daoTamanhos.crieObj;
end;

destructor ctrlTamanhos.destrua_se;
begin
  aDaoTamanhos.destrua_se;
end;

function ctrlTamanhos.excluir(pObj: TObject): string;
begin

end;

function ctrlTamanhos.getDS: TObject;
begin
  Result:= aDaoTamanhos.getDS;
end;

function ctrlTamanhos.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
  Result:= aDaoTamanhos.pesquisar( AFilter, pChave );
end;

function ctrlTamanhos.salvar(pObj: TObject): string;
begin
  aDaoTamanhos.salvar( pObj );
end;

procedure ctrlTamanhos.setDM(pDM: TObject);
begin
  inherited;
  aDaoTamanhos.setDM( pDM );
end;

end.
