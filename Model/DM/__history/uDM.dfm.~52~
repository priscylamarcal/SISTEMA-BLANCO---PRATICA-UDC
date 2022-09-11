object DM: TDM
  OldCreateOrder = False
  Height = 456
  Width = 709
  object Conexao: TFDConnection
    Params.Strings = (
      
        'Database=D:\Desenvolvimento\Projetos\sistema-blanco\bd\BD-SISTEM' +
        'A-BLANCO.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Server=localhost'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    Transaction = Transacao
    Left = 256
    Top = 8
  end
  object Transacao: TFDTransaction
    Connection = Conexao
    Left = 312
    Top = 8
  end
  object QPaises: TFDQuery
    Active = True
    Connection = Conexao
    Transaction = Transacao
    SQL.Strings = (
      'select * from paises')
    Left = 8
    Top = 64
    object QPaisesCODPAIS: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODPAIS'
      Origin = 'CODPAIS'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QPaisesPAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      DisplayWidth = 193
      FieldName = 'PAIS'
      Origin = 'PAIS'
      Required = True
      Size = 50
    end
    object QPaisesSIGLA: TStringField
      DisplayLabel = 'Sigla'
      DisplayWidth = 10
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Required = True
      Size = 3
    end
    object QPaisesDDI: TStringField
      DisplayWidth = 10
      FieldName = 'DDI'
      Origin = 'DDI'
      Size = 4
    end
    object QPaisesMOEDA: TStringField
      DisplayLabel = 'Moeda'
      DisplayWidth = 10
      FieldName = 'MOEDA'
      Origin = 'MOEDA'
      Size = 3
    end
    object QPaisesDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QPaisesULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QPaisesCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
      Origin = 'CODUSUALT'
      Visible = False
    end
  end
  object DSPaises: TDataSource
    DataSet = QPaises
    Left = 56
    Top = 64
  end
  object QDepartamentos: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from departamentos')
    Left = 152
    Top = 64
    object QDepartamentosCODDEPARTAMENTO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODDEPARTAMENTO'
      Origin = 'CODDEPARTAMENTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QDepartamentosDEPARTAMENTO: TStringField
      DisplayLabel = 'Departamento'
      DisplayWidth = 220
      FieldName = 'DEPARTAMENTO'
      Origin = 'DEPARTAMENTO'
      Required = True
      Size = 80
    end
    object QDepartamentosDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QDepartamentosULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QDepartamentosCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
      Origin = 'CODUSUALT'
      Visible = False
    end
  end
  object DSDepartamentos: TDataSource
    DataSet = QDepartamentos
    Left = 240
    Top = 64
  end
  object QCores: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from cores')
    Left = 336
    Top = 64
    object QCoresCODCOR: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCOR'
      Origin = 'CODCOR'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCoresCOR: TStringField
      DisplayLabel = 'Cor'
      DisplayWidth = 220
      FieldName = 'COR'
      Origin = 'COR'
      Required = True
      Size = 80
    end
    object QCoresDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QCoresULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
  end
  object DSCores: TDataSource
    DataSet = QCores
    Left = 384
    Top = 64
  end
  object QColecoes: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from COLECOES')
    Left = 472
    Top = 64
    object QColecoesCODCOLECAO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCOLECAO'
      Origin = 'CODCOLECAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QColecoesCOLECAO: TStringField
      DisplayLabel = 'Cole'#231#227'o'
      DisplayWidth = 220
      FieldName = 'COLECAO'
      Origin = 'COLECAO'
      Required = True
      Size = 80
    end
    object QColecoesDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QColecoesULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QColecoesCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
      Origin = 'CODUSUALT'
      Visible = False
    end
  end
  object DSColecoes: TDataSource
    DataSet = QColecoes
    Left = 536
    Top = 64
  end
  object QGruposRoupas: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from GRUPOS_ROUPAS')
    Left = 32
    Top = 128
    object QGruposRoupasCODGRUPO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODGRUPO'
      Origin = 'CODGRUPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QGruposRoupasGRUPOROUPA: TStringField
      DisplayLabel = 'Grupo de Roupa'
      DisplayWidth = 220
      FieldName = 'GRUPOROUPA'
      Origin = 'GRUPOROUPA'
      Required = True
      Size = 80
    end
    object QGruposRoupasDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QGruposRoupasULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QGruposRoupasCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
      Origin = 'CODUSUALT'
      Visible = False
    end
  end
  object DSGruposRoupas: TDataSource
    DataSet = QGruposRoupas
    Left = 120
    Top = 128
  end
  object QMarcas: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from MARCAS')
    Left = 208
    Top = 128
    object QMarcasCODMARCA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODMARCA'
      Origin = 'CODMARCA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QMarcasMARCA: TStringField
      DisplayLabel = 'Marca'
      DisplayWidth = 220
      FieldName = 'MARCA'
      Origin = 'MARCA'
      Required = True
      Size = 80
    end
    object QMarcasDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QMarcasULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QMarcasCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
  end
  object DSMarcas: TDataSource
    DataSet = QMarcas
    Left = 256
    Top = 128
  end
  object QTamanhos: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from SIGLA_TAMANHOS')
    Left = 336
    Top = 128
    object QTamanhosCODSIGLA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 10
      FieldName = 'CODSIGLA'
      Origin = 'CODSIGLA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTamanhosSIGLA: TStringField
      DisplayLabel = 'Sigla Tamanho'
      DisplayWidth = 80
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Required = True
      Size = 3
    end
    object QTamanhosLARGURA: TStringField
      DisplayLabel = 'Largura'
      DisplayWidth = 50
      FieldName = 'LARGURA'
      Origin = 'LARGURA'
      Size = 4
    end
    object QTamanhosALTURA: TStringField
      DisplayLabel = 'Altura'
      DisplayWidth = 50
      FieldName = 'ALTURA'
      Origin = 'ALTURA'
      Size = 4
    end
    object QTamanhosCOMPRIMENTO: TStringField
      DisplayLabel = 'Comprimento'
      DisplayWidth = 50
      FieldName = 'COMPRIMENTO'
      Origin = 'COMPRIMENTO'
      Size = 4
    end
    object QTamanhosDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QTamanhosULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QTamanhosCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
      Origin = 'CODUSUALT'
      Visible = False
    end
  end
  object DSTamanhos: TDataSource
    DataSet = QTamanhos
    Left = 400
    Top = 128
  end
  object QFormasPagamentos: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM FORMAS_PAGAMENTOS')
    Left = 496
    Top = 128
    object QFormasPagamentosCODFORMA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODFORMA'
      Origin = 'CODFORMA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFormasPagamentosFORMA: TStringField
      DisplayLabel = 'Forma de Pagamento'
      DisplayWidth = 220
      FieldName = 'FORMA'
      Origin = 'FORMA'
      Required = True
      Size = 80
    end
    object QFormasPagamentosDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QFormasPagamentosULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QFormasPagamentosCODUSUALT: TIntegerField
      FieldName = 'CODUSUALT'
      Origin = 'CODUSUALT'
      Visible = False
    end
  end
  object DSFormasPagamentos: TDataSource
    DataSet = QFormasPagamentos
    Left = 608
    Top = 128
  end
  object QTiposContatos: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from TIPOS_CONTATOS')
    Left = 24
    Top = 192
    object QTiposContatosCODTIPO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODTIPO'
      Origin = 'CODTIPO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QTiposContatosTIPOCONTATO: TStringField
      DisplayLabel = 'Tipo de Contato'
      DisplayWidth = 220
      FieldName = 'TIPOCONTATO'
      Origin = 'TIPOCONTATO'
      Required = True
      Size = 80
    end
    object QTiposContatosDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QTiposContatosULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QTiposContatosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
  end
  object DSTiposContatos: TDataSource
    DataSet = QTiposContatos
    Left = 112
    Top = 192
  end
  object QEstados: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from ESTADOS')
    Left = 200
    Top = 192
    object QEstadosCODESTADO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QEstadosESTADO: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 150
      FieldName = 'ESTADO'
      Origin = 'ESTADO'
      Required = True
      Size = 80
    end
    object QEstadosUF: TStringField
      DisplayWidth = 10
      FieldName = 'UF'
      Origin = 'UF'
      Size = 3
    end
    object QEstadosDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QEstadosULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QEstadosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
    object QEstadosCODPAIS: TIntegerField
      DisplayLabel = 'Cod Pa'#237's'
      FieldName = 'CODPAIS'
      Origin = 'CODPAIS'
      Required = True
      Visible = False
    end
    object QEstadosNOMEPAIS: TStringField
      DisplayLabel = 'Pa'#237's'
      DisplayWidth = 50
      FieldKind = fkLookup
      FieldName = 'NOMEPAIS'
      LookupDataSet = QPaises
      LookupKeyFields = 'CODPAIS'
      LookupResultField = 'PAIS'
      KeyFields = 'CODPAIS'
      Size = 80
      Lookup = True
    end
  end
  object DSEstados: TDataSource
    DataSet = QEstados
    Left = 256
    Top = 192
  end
  object QCidades: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from cidades')
    Left = 336
    Top = 192
    object QCidadesCODCIDADE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCidadesCIDADE: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 150
      FieldName = 'CIDADE'
      Origin = 'CIDADE'
      Required = True
      Size = 80
    end
    object QCidadesSIGLA: TStringField
      DisplayLabel = 'Sigla'
      DisplayWidth = 10
      FieldName = 'SIGLA'
      Origin = 'SIGLA'
      Size = 3
    end
    object QCidadesDDD: TStringField
      DisplayWidth = 10
      FieldName = 'DDD'
      Origin = 'DDD'
      Size = 5
    end
    object QCidadesCODESTADO: TIntegerField
      DisplayLabel = 'C'#243'd Estado'
      DisplayWidth = 15
      FieldName = 'CODESTADO'
      Origin = 'CODESTADO'
      Required = True
      Visible = False
    end
    object QCidadesDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QCidadesULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QCidadesCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
    object QCidadesESTADO: TStringField
      DisplayLabel = 'Estado'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'ESTADO'
      LookupDataSet = QEstados
      LookupKeyFields = 'CODESTADO'
      LookupResultField = 'ESTADO'
      KeyFields = 'CODESTADO'
      Lookup = True
    end
    object QCidadesUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = QEstados
      LookupKeyFields = 'CODESTADO'
      LookupResultField = 'UF'
      KeyFields = 'CODESTADO'
      Visible = False
      Lookup = True
    end
  end
  object DSCidades: TDataSource
    DataSet = QCidades
    Left = 400
    Top = 192
  end
  object QCargos: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from cargos')
    Left = 512
    Top = 192
    object QCargosCODCARGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCARGO'
      Origin = 'CODCARGO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCargosCARGO: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 150
      FieldName = 'CARGO'
      Origin = 'CARGO'
      Required = True
      Size = 80
    end
    object QCargosCODDEPARTAMENTO: TIntegerField
      DisplayLabel = 'C'#243'd Departamento'
      DisplayWidth = 20
      FieldName = 'CODDEPARTAMENTO'
      Origin = 'CODDEPARTAMENTO'
      Required = True
      Visible = False
    end
    object QCargosDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QCargosULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QCargosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
    object QCargosNOMEDEPART: TStringField
      DisplayLabel = 'Departamento'
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'NOMEDEPART'
      LookupDataSet = QDepartamentos
      LookupKeyFields = 'CODDEPARTAMENTO'
      LookupResultField = 'DEPARTAMENTO'
      KeyFields = 'CODDEPARTAMENTO'
      Lookup = True
    end
  end
  object DSCargos: TDataSource
    DataSet = QCargos
    Left = 576
    Top = 192
  end
  object QCondicoes: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from CONDICOES_PAGAMENTOS')
    Left = 16
    Top = 256
    object QCondicoesCODCONDICAO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCONDICAO'
      Origin = 'CODCONDICAO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QCondicoesCONDICAO: TStringField
      DisplayLabel = 'Condi'#231#227'o'
      FieldName = 'CONDICAO'
      Origin = 'CONDICAO'
      Required = True
      Size = 80
    end
    object QCondicoesDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QCondicoesULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QCondicoesCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
    object QCondicoesPARCELAS: TIntegerField
      FieldName = 'PARCELAS'
      Origin = 'PARCELAS'
      Visible = False
    end
    object QCondicoesJUROS: TSingleField
      FieldName = 'JUROS'
      Origin = 'JUROS'
      Visible = False
    end
    object QCondicoesDESCONTO: TSingleField
      FieldName = 'DESCONTO'
      Origin = 'DESCONTO'
      Visible = False
    end
    object QCondicoesMULTA: TSingleField
      FieldName = 'MULTA'
      Origin = 'MULTA'
      Visible = False
    end
    object QCondicoesCODFORMA: TIntegerField
      DisplayLabel = 'C'#243'd Forma'
      FieldName = 'CODFORMA'
      Origin = 'CODFORMA'
      Visible = False
    end
    object QCondicoesDIAS: TIntegerField
      FieldName = 'DIAS'
      Origin = 'DIAS'
      Visible = False
    end
    object QCondicoesPORCENTAGEM: TSingleField
      FieldName = 'PORCENTAGEM'
      Origin = 'PORCENTAGEM'
      Visible = False
    end
    object QCondicoesFORMA: TStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldKind = fkLookup
      FieldName = 'FORMA'
      LookupDataSet = QFormasPagamentos
      LookupKeyFields = 'CODFORMA'
      LookupResultField = 'FORMA'
      KeyFields = 'CODFORMA'
      Lookup = True
    end
  end
  object DSCondicoes: TDataSource
    DataSet = QCondicoes
    Left = 104
    Top = 256
  end
  object QFornecedores: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from fornecedores')
    Left = 200
    Top = 256
    object QFornecedoresCODFORN: TIntegerField
      Alignment = taLeftJustify
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODFORN'
      Origin = 'CODFORN'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFornecedoresDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QFornecedoresULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QFornecedoresCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
    object QFornecedoresNOME_RAZAO_SOCIAL: TStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME_RAZAO_SOCIAL'
      Origin = 'NOME_RAZAO_SOCIAL'
      Size = 80
    end
    object QFornecedoresTIPO_FORN: TStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 20
      FieldName = 'TIPO_FORN'
      Origin = 'TIPO_FORN'
      Size = 50
    end
    object QFornecedoresAPELIDO_FANTASIA: TStringField
      DisplayLabel = 'Apelido/Fantasia'
      DisplayWidth = 40
      FieldName = 'APELIDO_FANTASIA'
      Origin = 'APELIDO_FANTASIA'
      Size = 80
    end
    object QFornecedoresENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Visible = False
      Size = 60
    end
    object QFornecedoresNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Visible = False
      Size = 8
    end
    object QFornecedoresCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object QFornecedoresBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Visible = False
      Size = 60
    end
    object QFornecedoresCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Visible = False
      Size = 10
    end
    object QFornecedoresCODCIDADE: TIntegerField
      DisplayLabel = 'C'#243'd Cidade'
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      Visible = False
    end
    object QFornecedoresCODCONTATO: TIntegerField
      DisplayLabel = 'C'#243'd Contato'
      FieldName = 'CODCONTATO'
      Origin = 'CODCONTATO'
      Visible = False
    end
    object QFornecedoresCONTATO_AUX1: TStringField
      FieldName = 'CONTATO_AUX1'
      Origin = 'CONTATO_AUX1'
      Visible = False
      Size = 50
    end
    object QFornecedoresCONTATO_AUX2: TStringField
      FieldName = 'CONTATO_AUX2'
      Origin = 'CONTATO_AUX2'
      Visible = False
      Size = 50
    end
    object QFornecedoresCNPJ_CPF: TStringField
      DisplayLabel = 'CNPJ/CPF'
      DisplayWidth = 20
      FieldName = 'CNPJ_CPF'
      Origin = 'CNPJ_CPF'
      Size = 18
    end
    object QFornecedoresIE_RG: TStringField
      DisplayLabel = 'IE/RG'
      FieldName = 'IE_RG'
      Origin = 'IE_RG'
      Size = 14
    end
    object QFornecedoresCODCONDICAO: TIntegerField
      DisplayLabel = 'C'#243'd Condi'#231#227'o'
      FieldName = 'CODCONDICAO'
      Origin = 'CODCONDICAO'
      Visible = False
    end
    object QFornecedoresCIDADE: TStringField
      FieldKind = fkLookup
      FieldName = 'CIDADE'
      LookupDataSet = QCidades
      LookupKeyFields = 'CODCIDADE'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCIDADE'
      Lookup = True
    end
    object QFornecedoresUF: TStringField
      FieldKind = fkLookup
      FieldName = 'UF'
      LookupDataSet = QCidades
      LookupKeyFields = 'CODESTADO'
      LookupResultField = 'UF'
      KeyFields = 'CODCIDADE'
      Lookup = True
    end
    object QFornecedoresCONTATO: TStringField
      FieldKind = fkLookup
      FieldName = 'CONTATO'
      LookupDataSet = QTiposContatos
      LookupKeyFields = 'CODTIPO'
      LookupResultField = 'TIPOCONTATO'
      KeyFields = 'CODCONTATO'
      Visible = False
      Lookup = True
    end
    object QFornecedoresCONDICAO: TStringField
      FieldKind = fkLookup
      FieldName = 'CONDICAO'
      LookupDataSet = QCondicoes
      LookupKeyFields = 'CODCONDICAO'
      LookupResultField = 'CONDICAO'
      KeyFields = 'CODCONDICAO'
      Visible = False
      Lookup = True
    end
  end
  object DSFornecedores: TDataSource
    DataSet = QFornecedores
    Left = 280
    Top = 256
  end
  object QFuncionarios: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from FUNCIONARIOS')
    Left = 368
    Top = 256
    object QFuncionariosCODFUNC: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODFUNC'
      Origin = 'CODFUNC'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QFuncionariosDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QFuncionariosULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QFuncionariosCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
    object QFuncionariosFUNCIONARIO: TStringField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIO'
      Required = True
      Size = 80
    end
    object QFuncionariosSEXO: TStringField
      FieldName = 'SEXO'
      Origin = 'SEXO'
      Visible = False
      Size = 1
    end
    object QFuncionariosENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Visible = False
      Size = 60
    end
    object QFuncionariosNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Visible = False
      Size = 8
    end
    object QFuncionariosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object QFuncionariosBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Visible = False
      Size = 60
    end
    object QFuncionariosCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Visible = False
      Size = 10
    end
    object QFuncionariosCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      Visible = False
    end
    object QFuncionariosCODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
      Origin = 'CODCONTATO'
      Visible = False
    end
    object QFuncionariosCONTATO_AUX1: TStringField
      FieldName = 'CONTATO_AUX1'
      Origin = 'CONTATO_AUX1'
      Visible = False
      Size = 50
    end
    object QFuncionariosCONTATO_AUX2: TStringField
      FieldName = 'CONTATO_AUX2'
      Origin = 'CONTATO_AUX2'
      Visible = False
      Size = 50
    end
    object QFuncionariosCPF: TStringField
      DisplayWidth = 20
      FieldName = 'CPF'
      Origin = 'CPF'
      Required = True
      Size = 14
    end
    object QFuncionariosRG: TStringField
      FieldName = 'RG'
      Origin = 'RG'
      Visible = False
      Size = 14
    end
    object QFuncionariosDATA_NASC: TSQLTimeStampField
      FieldName = 'DATA_NASC'
      Origin = 'DATA_NASC'
      Visible = False
    end
    object QFuncionariosCODCARGO: TIntegerField
      FieldName = 'CODCARGO'
      Origin = 'CODCARGO'
      Visible = False
    end
    object QFuncionariosDATA_ADMISSAO: TSQLTimeStampField
      FieldName = 'DATA_ADMISSAO'
      Origin = 'DATA_ADMISSAO'
      Visible = False
    end
    object QFuncionariosDATA_DEMISSAO: TSQLTimeStampField
      FieldName = 'DATA_DEMISSAO'
      Origin = 'DATA_DEMISSAO'
      Visible = False
    end
    object QFuncionariosSALARIO: TSingleField
      FieldName = 'SALARIO'
      Origin = 'SALARIO'
      Visible = False
    end
    object QFuncionariosCOMISSAO: TSingleField
      FieldName = 'COMISSAO'
      Origin = 'COMISSAO'
      Visible = False
    end
    object QFuncionariosOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Visible = False
      Size = 250
    end
    object QFuncionariosCARGO: TStringField
      DisplayLabel = 'Cargo'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CARGO'
      LookupDataSet = QCargos
      LookupKeyFields = 'CODCARGO'
      LookupResultField = 'CARGO'
      KeyFields = 'CODCARGO'
      Size = 40
      Lookup = True
    end
    object QFuncionariosCIDADE_NOME: TStringField
      DisplayLabel = 'Cidade'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'CIDADE_NOME'
      LookupDataSet = QCidades
      LookupKeyFields = 'CODCIDADE'
      LookupResultField = 'CIDADE'
      KeyFields = 'CODCIDADE'
      Lookup = True
    end
  end
  object DSFuncionarios: TDataSource
    DataSet = QFuncionarios
    Left = 456
    Top = 256
  end
  object QClientes: TFDQuery
    Active = True
    Connection = Conexao
    SQL.Strings = (
      'select * from clientes')
    Left = 584
    Top = 256
    object QClientesCODCLIENTE: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODCLIENTE'
      Origin = 'CODCLIENTE'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QClientesDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QClientesULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QClientesCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
    object QClientesRAZAO_SOCIAL: TStringField
      DisplayLabel = 'Raz'#227'o Social'
      DisplayWidth = 60
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 80
    end
    object QClientesFANTASIA: TStringField
      DisplayLabel = 'Fantasia'
      DisplayWidth = 60
      FieldName = 'FANTASIA'
      Origin = 'FANTASIA'
      Required = True
      Size = 80
    end
    object QClientesENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'ENDERECO'
      Visible = False
      Size = 60
    end
    object QClientesNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'NUMERO'
      Visible = False
      Size = 8
    end
    object QClientesCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Origin = 'COMPLEMENTO'
      Visible = False
      Size = 60
    end
    object QClientesBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'BAIRRO'
      Visible = False
      Size = 60
    end
    object QClientesCEP: TStringField
      FieldName = 'CEP'
      Origin = 'CEP'
      Visible = False
      Size = 10
    end
    object QClientesCODCIDADE: TIntegerField
      FieldName = 'CODCIDADE'
      Origin = 'CODCIDADE'
      Required = True
      Visible = False
    end
    object QClientesCODCONTATO: TIntegerField
      FieldName = 'CODCONTATO'
      Origin = 'CODCONTATO'
      Visible = False
    end
    object QClientesCONTATO_AUX1: TStringField
      FieldName = 'CONTATO_AUX1'
      Origin = 'CONTATO_AUX1'
      Visible = False
      Size = 50
    end
    object QClientesCONTATO_AUX2: TStringField
      FieldName = 'CONTATO_AUX2'
      Origin = 'CONTATO_AUX2'
      Visible = False
      Size = 50
    end
    object QClientesCODFUNC: TIntegerField
      FieldName = 'CODFUNC'
      Origin = 'CODFUNC'
      Visible = False
    end
    object QClientesCNPJ: TStringField
      DisplayWidth = 25
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 18
    end
    object QClientesIE: TStringField
      DisplayWidth = 20
      FieldName = 'IE'
      Origin = 'IE'
      Size = 14
    end
    object QClientesLIMITE_CREDITO: TSingleField
      FieldName = 'LIMITE_CREDITO'
      Origin = 'LIMITE_CREDITO'
      Visible = False
    end
    object QClientesCODCONDICAO: TIntegerField
      FieldName = 'CODCONDICAO'
      Origin = 'CODCONDICAO'
      Visible = False
    end
    object QClientesOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Visible = False
      Size = 250
    end
  end
  object DSClientes: TDataSource
    DataSet = QClientes
    Left = 648
    Top = 256
  end
  object QRoupas: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'select * from ROUPAS')
    Left = 16
    Top = 328
    object QRoupasCOD_ROUPA: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'COD_ROUPA'
      Origin = 'COD_ROUPA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QRoupasDATACAD: TSQLTimeStampField
      FieldName = 'DATACAD'
      Origin = 'DATACAD'
      Visible = False
    end
    object QRoupasULTALT: TSQLTimeStampField
      FieldName = 'ULTALT'
      Origin = 'ULTALT'
      Visible = False
    end
    object QRoupasCODUSU: TIntegerField
      FieldName = 'CODUSU'
      Origin = 'CODUSU'
      Visible = False
    end
    object QRoupasDESCRICAO_ROUPA: TStringField
      DisplayLabel = 'Descri'#231#227'o Roupa'
      FieldName = 'DESCRICAO_ROUPA'
      Origin = 'DESCRICAO_ROUPA'
      Required = True
      Size = 80
    end
    object QRoupasCOD_BARRA: TStringField
      DisplayLabel = 'C'#243'digo de Barra'
      FieldName = 'COD_BARRA'
      Origin = 'COD_BARRA'
      Size = 50
    end
    object QRoupasREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'REFERENCIA'
      Visible = False
      Size = 50
    end
    object QRoupasCODGRUPOROUPA: TIntegerField
      FieldName = 'CODGRUPOROUPA'
      Origin = 'CODGRUPOROUPA'
      Visible = False
    end
    object QRoupasCODMARCA: TIntegerField
      FieldName = 'CODMARCA'
      Origin = 'CODMARCA'
      Visible = False
    end
    object QRoupasVALOR_CUSTO: TSingleField
      FieldName = 'VALOR_CUSTO'
      Origin = 'VALOR_CUSTO'
      Visible = False
    end
    object QRoupasLUCRO: TSingleField
      FieldName = 'LUCRO'
      Origin = 'LUCRO'
      Visible = False
    end
    object QRoupasVALOR_VENDA: TSingleField
      FieldName = 'VALOR_VENDA'
      Origin = 'VALOR_VENDA'
      Visible = False
    end
    object QRoupasCODCOR: TIntegerField
      FieldName = 'CODCOR'
      Origin = 'CODCOR'
      Visible = False
    end
    object QRoupasCODTAMANHO: TIntegerField
      FieldName = 'CODTAMANHO'
      Origin = 'CODTAMANHO'
      Visible = False
    end
    object QRoupasCODFORNECEDOR: TIntegerField
      FieldName = 'CODFORNECEDOR'
      Origin = 'CODFORNECEDOR'
      Visible = False
    end
    object QRoupasCODCOLECAO: TIntegerField
      FieldName = 'CODCOLECAO'
      Origin = 'CODCOLECAO'
      Visible = False
    end
    object QRoupasOBS: TStringField
      FieldName = 'OBS'
      Origin = 'OBS'
      Visible = False
      Size = 250
    end
    object QRoupasGRUPO_ROUPA: TStringField
      DisplayLabel = 'Grupo da Roupa'
      FieldKind = fkLookup
      FieldName = 'GRUPO_ROUPA'
      LookupDataSet = QGruposRoupas
      LookupKeyFields = 'CODGRUPO'
      LookupResultField = 'GRUPOROUPA'
      KeyFields = 'CODGRUPOROUPA'
      Lookup = True
    end
    object QRoupasMARCA: TStringField
      DisplayLabel = 'Marca'
      FieldKind = fkLookup
      FieldName = 'MARCA'
      LookupDataSet = QMarcas
      LookupKeyFields = 'CODMARCA'
      LookupResultField = 'MARCA'
      KeyFields = 'CODMARCA'
      Lookup = True
    end
    object QRoupasFORNECEDOR: TStringField
      DisplayLabel = 'Fornecedor'
      FieldKind = fkLookup
      FieldName = 'FORNECEDOR'
      LookupDataSet = QFornecedores
      LookupKeyFields = 'CODFORN'
      LookupResultField = 'NOME_RAZAO_SOCIAL'
      KeyFields = 'CODFORNECEDOR'
      Lookup = True
    end
    object QRoupasCOLECAO: TStringField
      DisplayLabel = 'Cole'#231#227'o'
      DisplayWidth = 40
      FieldKind = fkLookup
      FieldName = 'COLECAO'
      LookupDataSet = QColecoes
      LookupKeyFields = 'CODCOLECAO'
      LookupResultField = 'COLECAO'
      KeyFields = 'CODCOLECAO'
      Lookup = True
    end
  end
  object DSRoupas: TDataSource
    DataSet = QRoupas
    Left = 96
    Top = 328
  end
end
