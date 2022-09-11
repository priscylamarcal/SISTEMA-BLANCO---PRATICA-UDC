unit uCtrlPaises;

interface

uses uController,
     uDaoPaises, uFilterSearch, uPaises;

type ctrlPaises = class( Ctrl )
  private
  protected
    aDaoPais : daoPaises;
  public
    constructor crieObj;                              override;
    destructor destrua_se;                            override;
    procedure setDM ( pDM : TObject );                override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;

    function VerificaExiste(aChave:string):Boolean; override;
    function ValidaExclusao(pObj : TObject):Boolean; override;
end;

implementation

uses
  System.SysUtils;

{ ctrlPaises }

function ctrlPaises.carregar(pObj: TObject): string;
begin
  aDaoPais.carregar(pObj);
end;

constructor ctrlPaises.crieObj;
begin
  aDaoPais:= daoPaises.crieObj;
end;

destructor ctrlPaises.destrua_se;
begin
  aDaoPais.destrua_se;
end;

function ctrlPaises.excluir(pObj: TObject): string;
begin
  Result := aDaoPais.excluir(pObj);
end;

function ctrlPaises.getDS: TObject;
begin
  Result:= aDaoPais.getDS;
end;

function ctrlPaises.pesquisar(AFilter: TFilterSearch; pChave: string): string;
begin
 Result := aDaoPais.Pesquisar( AFilter, pChave );
end;

function ctrlPaises.salvar(pObj: TObject): string;
begin
  Result := aDaoPais.salvar(pObj);
end;

procedure ctrlPaises.setDM(pDM: TObject);
begin
  inherited;
  aDaoPais.setDM( pDM );
end;

function ctrlPaises.ValidaExclusao(pObj: TObject): Boolean;
begin
  Result := aDaoPais.ValidaExclusao(pObj);
end;

function ctrlPaises.VerificaExiste(aChave: string): Boolean;
begin
  Result := aDaoPais.VerificaExiste(aChave);
end;

end.
