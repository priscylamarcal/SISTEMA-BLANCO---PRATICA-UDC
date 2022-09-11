unit uDaoPaises;

interface

uses uDAO, System.SysUtils, uFilterSearch, FireDAC.Comp.Client, uPaises;

type daoPaises = class( DAO )
  private
  protected
  public
    constructor crieObj;                              override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;

    function VerificaExiste(aChave:string) : Boolean; override;
    function ValidaExclusao(pObj : TObject):Boolean; override;
end;

implementation

{ daoPaises }

function daoPaises.carregar(pObj: TObject): string;
var mPais : Paises;
begin
  mPais:= Paises( pObj );

  mPais.setCodigo( aDM.QPaises.FieldByName('CODPAIS').AsInteger );
  mPais.setPais( aDM.QPaises.FieldByName('PAIS').AsString );
  mPais.setDDI( aDM.QPaises.FieldByName('DDI').AsString );
  mPais.setMoeda(aDM.QPaises.FieldByName('MOEDA').AsString);
  mPais.setSigla( aDM.QPaises.FieldByName('SIGLA').AsString );
  mPais.setDataCad( aDM.QPaises.FieldByName('DATACAD').AsDateTime );
  mPais.setUltAlt( aDM.QPaises.FieldByName('ULTALT').AsDateTime );
end;

constructor daoPaises.crieObj;
begin
  inherited;

end;

function daoPaises.excluir(pObj: TObject): string;
var
  mPais : Paises;
begin
  aDM.Transacao.StartTransaction;
  try
    mPais := Paises(pObj);
    aDM.QPaises.Locate('CODPAIS', mPais.getCodigo, []);
    aDM.QPaises.Delete;
    aDM.Transacao.Commit;
//    Result := 'País excluído com sucesso!';
  except
    aDM.Transacao.Rollback;
    Result := '';
  end;
end;

function daoPaises.getDS: TObject;
begin
  Result:= aDM.DSPaises;
end;

function daoPaises.pesquisar(AFilter: TFilterSearch; pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM PAISES';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM PAISES WHERE CODPAIS =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM PAISES WHERE PAIS LIKE ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCDDI:
     begin
       msql:= ( 'SELECT * FROM PAISES WHERE DDI LIKE ' + QuotedStr( '%' + AFilter.DDI + '%' ) );
     end;

     TpCMoeda:
     begin
       msql:= ( 'SELECT * FROM PAISES WHERE MOEDA LIKE ' + QuotedStr( '%' + AFilter.Moeda + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM PAISES ORDER BY CODPAIS';
     end;

    end;

    aDM.QPaises.Active:= false;
    aDM.QPaises.SQL.Text:=msql;
//    aDM.QPaises.SQL.SaveToFile('d:\teste.txt');
    aDM.QPaises.Open;
    result:= '';

end;

function daoPaises.salvar(pObj: TObject): string;
var mPais : Paises;
begin
  mPais:= Paises( pObj );

  aDM.Transacao.StartTransaction;
  try
    if mPais.getCodigo = 0 then
    begin
       aDM.QPaises.Insert;
       aDM.QPaises.FieldByName('CODPAIS').AsInteger:= mPais.getCodigo;
       aDM.QPaises.FieldByName('PAIS').AsString:= mPais.getPais;
       aDM.QPaises.FieldByName('DDI').AsString:= mPais.getDDI;
       aDM.QPaises.FieldByName('SIGLA').AsString:= mPais.getSigla;
       aDM.QPaises.FieldByName('MOEDA').AsString:= mPais.getMoeda;
       aDM.QPaises.FieldByName('DATACAD').AsDateTime:= mPais.getDataCad;

    end

    else
    begin
      aDM.QPaises.Edit;

      aDM.QPaises.FieldByName('CODPAIS').AsInteger:= mPais.getCodigo;
      aDM.QPaises.FieldByName('PAIS').AsString:= mPais.getPais;
      aDM.QPaises.FieldByName('DDI').AsString:= mPais.getDDI;
      aDM.QPaises.FieldByName('SIGLA').AsString:= mPais.getSigla;
      aDM.QPaises.FieldByName('MOEDA').AsString:= mPais.getMoeda;
      aDM.QPaises.FieldByName('DATACAD').AsDateTime:= mPais.getDataCad;
      aDM.QPaises.FieldByName('ULTALT').AsDateTime:= mPais.getUltAlt;
    end;

    aDM.QPaises.Post;

    aDM.Transacao.Commit;
   // Result := 'Salvo com sucesso!';
  except
    Result := '';
    aDM.Transacao.Rollback;
  end;
end;

function daoPaises.ValidaExclusao(pObj: TObject): Boolean;
var
  mPais : Paises;
begin
  mPais := Paises(pObj);
  Result := not(aDM.QEstados.Locate('CODPAIS', mPais.getCodigo, []))//busca na query estado se existe algum codPAis igual ao informado
end;

function daoPaises.VerificaExiste(aChave: string): Boolean;
begin
  Result := aDM.QPaises.Locate('PAIS', aChave, []);//busca na query se existe algum registro com o mesmo valor
end;

end.
