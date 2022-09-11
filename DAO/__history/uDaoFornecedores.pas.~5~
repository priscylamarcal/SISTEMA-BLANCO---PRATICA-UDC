unit uDaoFornecedores;

interface

uses uDAO, uFilterSearch, uFornecedores, uCidades, uTiposContatos,
  uCondicoesPagamentos;

type daoFornecedores = class( DAO )
  private
  protected
  public
    constructor crieObj;                              override;
    function getDS : TObject;                         override;
    function pesquisar ( AFilter: TFilterSearch; pChave : string ): string; override;
    function salvar ( pObj : TObject ) : string;      override;
    function excluir ( pObj : TObject ) : string;     override;
    function carregar ( pObj : TObject ) : string;    override;
end;

implementation

uses
  System.SysUtils;

{ daoFornecedores }

function daoFornecedores.carregar(pObj: TObject): string;
var mFornecedor : Fornecedores; mCidade : Cidades; mContato : TiposContatos;
    mCondicao : CondicoesPagamentos;
begin
  mFornecedor:= Fornecedores( pObj );

  mCidade:= mFornecedor.getaCidade;
  mContato:= mFornecedor.getoContato;
  mCondicao:= mFornecedor.getaCondicao;

  mFornecedor.setCodigo( aDM.QFornecedores.FieldByName('CODFORN').Value );
  mFornecedor.setDataCad( aDM.QFornecedores.FieldByName('DATACAD').AsDateTime );
  mFornecedor.setUltAlt( aDM.QFornecedores.FieldByName('ULTALT').AsDateTime );
  mFornecedor.setCodUsu( aDM.QFornecedores.FieldByName('CODUSU').Value );
  mFornecedor.setNomeRazaoSocial( aDM.QFornecedores.FieldByName('NOME_RAZAO_SOCIAL').AsString );
  mFornecedor.setTipoForn( aDM.QFornecedores.FieldByName('TIPO_FORN').Value );
  mFornecedor.setApelidoFantasia( aDM.QFornecedores.FieldByName('APELIDO_FANTASIA').AsString );
  mFornecedor.setEndereco( aDM.QFornecedores.FieldByName('ENDERECO').AsString );
  mFornecedor.setNumero( aDM.QFornecedores.FieldByName('NUMERO').AsString );
  mFornecedor.setComplemento( aDM.QFornecedores.FieldByName('COMPLEMENTO').AsString );
  mFornecedor.setBairro( aDM.QFornecedores.FieldByName('BAIRRO').AsString );
  mFornecedor.setCep( aDM.QFornecedores.FieldByName('CEP').AsString );
  mFornecedor.setContatoAux1( aDM.QFornecedores.FieldByName('CONTATO_AUX1').AsString );
  mFornecedor.setContatoAux2( aDM.QFornecedores.FieldByName('CONTATO_AUX2').AsString );
  mFornecedor.setCnpjCpf( aDM.QFornecedores.FieldByName('CNPJ_CPF').AsString );
  mFornecedor.setIeRg( aDM.QFornecedores.FieldByName('IE_RG').AsString );
  mFornecedor.setTipoForn( aDM.QFornecedores.FieldByName('TIPO_FORN').AsString );


  mFornecedor.getaCidade.setCodigo(aDM.QFornecedores.FieldByName('CODCIDADE').Value );
  mFornecedor.getaCidade.setCidade(aDM.QFornecedores.FieldByName('CIDADE').AsString );
  mFornecedor.getaCidade.getoEstado.setUF(aDM.QFornecedores.FieldByName('UF').AsString );

  mFornecedor.getoContato.setCodigo(aDM.QFornecedores.FieldByName('CODCONTATO').Value );
  mFornecedor.getoContato.setTipoContato(aDM.QFornecedores.FieldByName('CONTATO').AsString );

  mFornecedor.getaCondicao.setCodigo(aDM.QFornecedores.FieldByName('CODCONDICAO').Value );
  mFornecedor.getaCondicao.setCondicao(aDM.QFornecedores.FieldByName('CONDICAO').AsString );
end;

constructor daoFornecedores.crieObj;
begin
  inherited;

end;

function daoFornecedores.excluir(pObj: TObject): string;
begin

end;

function daoFornecedores.getDS: TObject;
begin
  Result:= aDM.DSFornecedores;
end;

function daoFornecedores.pesquisar(AFilter: TFilterSearch;
  pChave: string): string;
var msql : string;
begin
    msql:= 'SELECT * FROM FORNECEDORES';

    case AFilter.TipoConsulta of

     TpCCodigo:
     begin
       msql:= 'SELECT * FROM FORNECEDORES WHERE CODFORN =' + IntToStr( AFilter.Codigo );
     end;

     TpCParam:
     begin
       msql:= ( 'SELECT * FROM FORNECEDORES WHERE NOME_RAZAO_SOCIAL LIKE  ' + QuotedStr( '%' + AFilter.Parametro + '%' ) );
     end;

     TpCTODOS:
     begin
       msql:= 'SELECT * FROM FORNECEDORES ORDER BY CODFORN';
     end;

    end;

    aDM.QFornecedores.Active:= false;
    aDM.QFornecedores.SQL.Text:=msql;
    aDM.QFornecedores.Open;
    result:= '';
end;

function daoFornecedores.salvar(pObj: TObject): string;
var mFornecedor : Fornecedores; mCidade : Cidades; mContato : TiposContatos;
    mCondicao : CondicoesPagamentos;
begin
  mFornecedor:= Fornecedores( pObj );

  mCidade:= mFornecedor.getaCidade;
  mContato:= mFornecedor.getoContato;
  mCondicao:= mFornecedor.getaCondicao;

  aDM.Transacao.StartTransaction;
  try
    if mFornecedor.getCodigo = 0 then
       aDM.QFornecedores.Insert
    else
       aDM.QFornecedores.Edit;

    aDM.QFornecedores.FieldByName('CODFORN').AsInteger:= mFornecedor.getCodigo;
    aDM.QFornecedores.FieldByName('DATACAD').AsDateTime:= mFornecedor.getDataCad;
    aDM.QFornecedores.FieldByName('ULTALT').AsDateTime:= mFornecedor.getUltAlt;
    aDM.QFornecedores.FieldByName('CODUSU').AsInteger:= mFornecedor.getCodUsu;
    aDM.QFornecedores.FieldByName('NOME_RAZAO_SOCIAL').AsString:= mFornecedor.getNomeRazaoSocial;
    aDM.QFornecedores.FieldByName('APELIDO_FANTASIA').AsString:= mFornecedor.getApelidoFantasia;
    aDM.QFornecedores.FieldByName('ENDERECO').AsString:= mFornecedor.getEndereco;
    aDM.QFornecedores.FieldByName('NUMERO').AsString:= mFornecedor.getNumero;
    aDM.QFornecedores.FieldByName('COMPLEMENTO').AsString:= mFornecedor.getComplemento;
    aDM.QFornecedores.FieldByName('BAIRRO').AsString:= mFornecedor.getBairro;
    aDM.QFornecedores.FieldByName('CEP').AsString:= mFornecedor.getCep;
    aDM.QFornecedores.FieldByName('CONTATO_AUX1').AsString:= mFornecedor.getContatoAux1;
    aDM.QFornecedores.FieldByName('CONTATO_AUX2').AsString:= mFornecedor.getContatoAux2;
    aDM.QFornecedores.FieldByName('CNPJ_CPF').AsString:= mFornecedor.getCnpjCpf;
    aDM.QFornecedores.FieldByName('IE_RG').AsString:= mFornecedor.getIeRg;
    aDm.QFornecedores.FieldByName('TIPO_FORN').AsString:= mFornecedor.getTipoForn;


    aDM.QFornecedores.FieldByName('CODCIDADE').AsInteger:= mCidade.getCodigo;
    aDM.QFornecedores.FieldByName('CIDADE').AsString:= mCidade.getCidade;
    aDM.QFornecedores.FieldByName('UF').AsString:= mCidade.getoEstado.getUF;

    aDM.QFornecedores.FieldByName('CODCONTATO').AsInteger:= mContato.getCodigo;
    aDM.QFornecedores.FieldByName('CONTATO').AsString:= mContato.getTipoContato;

    aDM.QFornecedores.FieldByName('CODCONDICAO').AsInteger:= mCondicao.getCodigo;
    aDM.QFornecedores.FieldByName('CONDICAO').AsString:= mCondicao.getCondicao;

    aDM.QFornecedores.Post;

    aDM.Transacao.Commit;

  except
    aDM.Transacao.Rollback;
  end;
end;

end.
