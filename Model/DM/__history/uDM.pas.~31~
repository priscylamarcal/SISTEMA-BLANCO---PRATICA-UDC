unit uDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.FB,
  FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDM = class(TDataModule)
    Conexao: TFDConnection;
    Transacao: TFDTransaction;
    QPaises: TFDQuery;
    DSPaises: TDataSource;
    QPaisesCODPAIS: TIntegerField;
    QPaisesPAIS: TStringField;
    QPaisesDDI: TStringField;
    QPaisesSIGLA: TStringField;
    QPaisesMOEDA: TStringField;
    QPaisesDATACAD: TSQLTimeStampField;
    QPaisesULTALT: TSQLTimeStampField;
    QPaisesCODUSUALT: TIntegerField;
    QDepartamentos: TFDQuery;
    DSDepartamentos: TDataSource;
    QDepartamentosCODDEPARTAMENTO: TIntegerField;
    QDepartamentosDEPARTAMENTO: TStringField;
    QDepartamentosDATACAD: TSQLTimeStampField;
    QDepartamentosULTALT: TSQLTimeStampField;
    QDepartamentosCODUSUALT: TIntegerField;
    QCores: TFDQuery;
    DSCores: TDataSource;
    QCoresCODCOR: TIntegerField;
    QCoresCOR: TStringField;
    QCoresDATACAD: TSQLTimeStampField;
    QCoresULTALT: TSQLTimeStampField;
    QColecoes: TFDQuery;
    DSColecoes: TDataSource;
    QColecoesCODCOLECAO: TIntegerField;
    QColecoesCOLECAO: TStringField;
    QColecoesDATACAD: TSQLTimeStampField;
    QColecoesULTALT: TSQLTimeStampField;
    QColecoesCODUSUALT: TIntegerField;
    QGruposRoupas: TFDQuery;
    DSGruposRoupas: TDataSource;
    QGruposRoupasCODGRUPO: TIntegerField;
    QGruposRoupasGRUPOROUPA: TStringField;
    QGruposRoupasDATACAD: TSQLTimeStampField;
    QGruposRoupasULTALT: TSQLTimeStampField;
    QGruposRoupasCODUSUALT: TIntegerField;
    QMarcas: TFDQuery;
    DSMarcas: TDataSource;
    QMarcasCODMARCA: TIntegerField;
    QMarcasMARCA: TStringField;
    QMarcasDATACAD: TSQLTimeStampField;
    QMarcasULTALT: TSQLTimeStampField;
    QMarcasCODUSU: TIntegerField;
    QTamanhos: TFDQuery;
    DSTamanhos: TDataSource;
    QTamanhosCODSIGLA: TIntegerField;
    QTamanhosSIGLA: TStringField;
    QTamanhosALTURA: TStringField;
    QTamanhosLARGURA: TStringField;
    QTamanhosCOMPRIMENTO: TStringField;
    QTamanhosDATACAD: TSQLTimeStampField;
    QTamanhosULTALT: TSQLTimeStampField;
    QTamanhosCODUSUALT: TIntegerField;
    QFormasPagamentos: TFDQuery;
    DSFormasPagamentos: TDataSource;
    QFormasPagamentosCODFORMA: TIntegerField;
    QFormasPagamentosFORMA: TStringField;
    QFormasPagamentosDATACAD: TSQLTimeStampField;
    QFormasPagamentosULTALT: TSQLTimeStampField;
    QFormasPagamentosCODUSUALT: TIntegerField;
    QTiposContatos: TFDQuery;
    DSTiposContatos: TDataSource;
    QTiposContatosCODTIPO: TIntegerField;
    QTiposContatosTIPOCONTATO: TStringField;
    QTiposContatosDATACAD: TSQLTimeStampField;
    QTiposContatosULTALT: TSQLTimeStampField;
    QTiposContatosCODUSU: TIntegerField;
    QEstados: TFDQuery;
    DSEstados: TDataSource;
    QEstadosCODESTADO: TIntegerField;
    QEstadosESTADO: TStringField;
    QEstadosUF: TStringField;
    QEstadosDATACAD: TSQLTimeStampField;
    QEstadosULTALT: TSQLTimeStampField;
    QEstadosCODUSU: TIntegerField;
    QEstadosCODPAIS: TIntegerField;
    QEstadosNOMEPAIS: TStringField;
    QCidades: TFDQuery;
    DSCidades: TDataSource;
    QCidadesCODCIDADE: TIntegerField;
    QCidadesCIDADE: TStringField;
    QCidadesSIGLA: TStringField;
    QCidadesDDD: TStringField;
    QCidadesCODESTADO: TIntegerField;
    QCidadesDATACAD: TSQLTimeStampField;
    QCidadesULTALT: TSQLTimeStampField;
    QCidadesCODUSU: TIntegerField;
    QCargos: TFDQuery;
    DSCargos: TDataSource;
    QCargosCODCARGO: TIntegerField;
    QCargosCARGO: TStringField;
    QCargosCODDEPARTAMENTO: TIntegerField;
    QCargosDATACAD: TSQLTimeStampField;
    QCargosULTALT: TSQLTimeStampField;
    QCargosCODUSU: TIntegerField;
    QCargosNOMEDEPART: TStringField;
    QCondicoes: TFDQuery;
    DSCondicoes: TDataSource;
    QCondicoesCODCONDICAO: TIntegerField;
    QCondicoesCONDICAO: TStringField;
    QCondicoesDATACAD: TSQLTimeStampField;
    QCondicoesULTALT: TSQLTimeStampField;
    QCondicoesCODUSU: TIntegerField;
    QCondicoesPARCELAS: TIntegerField;
    QCondicoesJUROS: TSingleField;
    QCondicoesDESCONTO: TSingleField;
    QCondicoesMULTA: TSingleField;
    QCondicoesCODFORMA: TIntegerField;
    QCondicoesDIAS: TIntegerField;
    QCondicoesPORCENTAGEM: TSingleField;
    QCondicoesFORMA: TStringField;
    QFornecedores: TFDQuery;
    DSFornecedores: TDataSource;
    QFornecedoresCODFORN: TIntegerField;
    QFornecedoresDATACAD: TSQLTimeStampField;
    QFornecedoresULTALT: TSQLTimeStampField;
    QFornecedoresCODUSU: TIntegerField;
    QFornecedoresNOME_RAZAO_SOCIAL: TStringField;
    QFornecedoresTIPO_FORN: TStringField;
    QFornecedoresAPELIDO_FANTASIA: TStringField;
    QFornecedoresENDERECO: TStringField;
    QFornecedoresNUMERO: TStringField;
    QFornecedoresCOMPLEMENTO: TStringField;
    QFornecedoresBAIRRO: TStringField;
    QFornecedoresCEP: TStringField;
    QFornecedoresCODCIDADE: TIntegerField;
    QFornecedoresCODCONTATO: TIntegerField;
    QFornecedoresCONTATO_AUX1: TStringField;
    QFornecedoresCONTATO_AUX2: TStringField;
    QFornecedoresCNPJ_CPF: TStringField;
    QFornecedoresIE_RG: TStringField;
    QFornecedoresCODCONDICAO: TIntegerField;
    QCidadesESTADO: TStringField;
    QFornecedoresCIDADE: TStringField;
    QFuncionarios: TFDQuery;
    DSFuncionarios: TDataSource;
    QFuncionariosCODFUNC: TIntegerField;
    QFuncionariosDATACAD: TSQLTimeStampField;
    QFuncionariosULTALT: TSQLTimeStampField;
    QFuncionariosCODUSU: TIntegerField;
    QFuncionariosFUNCIONARIO: TStringField;
    QFuncionariosSEXO: TStringField;
    QFuncionariosENDERECO: TStringField;
    QFuncionariosNUMERO: TStringField;
    QFuncionariosCOMPLEMENTO: TStringField;
    QFuncionariosBAIRRO: TStringField;
    QFuncionariosCEP: TStringField;
    QFuncionariosCODCIDADE: TIntegerField;
    QFuncionariosCODCONTATO: TIntegerField;
    QFuncionariosCONTATO_AUX1: TStringField;
    QFuncionariosCONTATO_AUX2: TStringField;
    QFuncionariosCPF: TStringField;
    QFuncionariosRG: TStringField;
    QFuncionariosDATA_NASC: TSQLTimeStampField;
    QFuncionariosCODCARGO: TIntegerField;
    QFuncionariosDATA_ADMISSAO: TSQLTimeStampField;
    QFuncionariosDATA_DEMISSAO: TSQLTimeStampField;
    QFuncionariosSALARIO: TSingleField;
    QFuncionariosCOMISSAO: TSingleField;
    QFuncionariosOBS: TStringField;
    QFuncionariosCIDADE: TStringField;
    QFuncionariosCARGO: TStringField;
    QClientes: TFDQuery;
    DSClientes: TDataSource;
    QClientesCODCLIENTE: TIntegerField;
    QClientesDATACAD: TSQLTimeStampField;
    QClientesULTALT: TSQLTimeStampField;
    QClientesCODUSU: TIntegerField;
    QClientesRAZAO_SOCIAL: TStringField;
    QClientesTIPO_FORN: TStringField;
    QClientesFANTASIA: TStringField;
    QClientesENDERECO: TStringField;
    QClientesNUMERO: TStringField;
    QClientesCOMPLEMENTO: TStringField;
    QClientesBAIRRO: TStringField;
    QClientesCEP: TStringField;
    QClientesCODCIDADE: TIntegerField;
    QClientesCODCONTATO: TIntegerField;
    QClientesCONTATO_AUX1: TStringField;
    QClientesCONTATO_AUX2: TStringField;
    QClientesCODFUNC: TIntegerField;
    QClientesCNPJ: TStringField;
    QClientesIE: TStringField;
    QClientesLIMITE_CREDITO: TSingleField;
    QClientesCODCONDICAO: TIntegerField;
    QClientesOBS: TStringField;
    QClientesCIDADE: TStringField;
    QClientesFUNCIONARIO: TStringField;
    QRoupas: TFDQuery;
    DSRoupas: TDataSource;
    QRoupasCOD_ROUPA: TIntegerField;
    QRoupasDATACAD: TSQLTimeStampField;
    QRoupasULTALT: TSQLTimeStampField;
    QRoupasCODUSU: TIntegerField;
    QRoupasDESCRICAO_ROUPA: TStringField;
    QRoupasCOD_BARRA: TStringField;
    QRoupasREFERENCIA: TStringField;
    QRoupasCODGRUPOROUPA: TIntegerField;
    QRoupasCODMARCA: TIntegerField;
    QRoupasVALOR_CUSTO: TSingleField;
    QRoupasLUCRO: TSingleField;
    QRoupasVALOR_VENDA: TSingleField;
    QRoupasCODCOR: TIntegerField;
    QRoupasCODTAMANHO: TIntegerField;
    QRoupasCODFORNECEDOR: TIntegerField;
    QRoupasCODCOLECAO: TIntegerField;
    QRoupasOBS: TStringField;
    QRoupasGRUPO_ROUPA: TStringField;
    QRoupasMARCA: TStringField;
    QRoupasFORNECEDOR: TStringField;
    QRoupasCOLECAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
