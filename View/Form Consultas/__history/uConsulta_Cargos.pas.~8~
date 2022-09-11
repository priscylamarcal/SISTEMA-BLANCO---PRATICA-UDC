unit uConsulta_Cargos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroCargos, uCtrlCargos, uCargos, uFilterSearch;

type
  Tform_consulta_cargos = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }

    oCadastroCargos : Tform_cadastro_cargos;

    oCargo      : Cargos;
    aCtrlCargos : ctrlCargos;
  public
    { Public declarations }
    procedure novo;                                           override;
    procedure alterar;                                        override;
    procedure excluir;                                        override;
    procedure sair;                                           override;
    procedure pesquisar;                                      override;
    procedure conhecaObj ( pCtrl : TObject; pObj : TObject ); override;
    procedure setFrmCadastro ( pObj : TObject );                  override;
    procedure tipoFiltro;                                     override;
  end;

var
  form_consulta_cargos: Tform_consulta_cargos;

implementation

{$R *.dfm}

{ Tform_consulta_cargos }

procedure Tform_consulta_cargos.alterar;
var form : Tform_cadastro_cargos;
begin
  inherited;
  aCtrlCargos.carregar( oCargo );
  oCadastroCargos.conhecaObj( aCtrlCargos, oCargo );

  oCadastroCargos.Caption:= 'Alteração de Cargo';

  oCadastroCargos.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_cargos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oCargo:= Cargos( pObj );
  aCtrlCargos:= ctrlCargos( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlCargos.getDS );
end;

procedure Tform_consulta_cargos.excluir;
var mCaption: string;
begin
  inherited;
  aCtrlCargos.carregar(oCargo);

  mCaption := oCadastroCargos.btn_botao_salvar.caption;
  oCadastroCargos.btn_botao_salvar.caption := 'Excluir';

  oCadastroCargos.conhecaObj( aCtrlCargos, oCargo );

  oCadastroCargos.Caption:= 'Exclusão de Cargo';

  oCadastroCargos.bloqueiaEdt;

  oCadastroCargos.ShowModal;

  oCadastroCargos.btn_botao_salvar.caption := mCaption;

  oCadastroCargos.desbloqueiaEdt;
end;

procedure Tform_consulta_cargos.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;
  edt_pesquisa.Clear;
  self.pesquisar;   inherited;
end;

procedure Tform_consulta_cargos.novo;
var form : Tform_cadastro_cargos;
begin
  inherited;
  oCadastroCargos.conhecaObj( aCtrlCargos, oCargo );
  oCadastroCargos.limpaEdt;

  oCadastroCargos.Caption:= 'Cadastro de Cargo';

  oCadastroCargos.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_cargos.pesquisar;
var vFilter : TFilterSearch;
    pchave : string;
begin
  //inherited;
  VFilter   := TFilterSearch.Create;

  try
    Try
     case combobox_tipo_filtro.ItemIndex of
      0:
        begin
          if edt_pesquisa.Text = '' then
          begin
            MessageDlg( 'Campo do filtro não pode ser vazio!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
           Exit;
          end;

          vFilter.TipoConsulta:= TpCCodigo;
          vFilter.Codigo:= StrToInt(edt_pesquisa.Text);
        end;
    1:
        begin
          if edt_pesquisa.Text = '' then
          begin
            MessageDlg( 'Campo do filtro não pode ser vazio!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
            Exit;
          end;
          VFilter.TipoConsulta := TpCParam;
          VFilter.Parametro    := Uppercase( edt_pesquisa.Text );
        end;
      2:
        begin
          VFilter.TipoConsulta := TpCTODOS;
        end;
    end;

  finally
    aCtrlCargos.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_cargos.sair;
var mCargo : Cargos;
begin
  if btn_botao_sair.Caption= 'Selecionar' then
  begin
    mCargo:= Cargos.crieObj;
    aCtrlCargos.carregar( TObject ( mCargo ) );
    oCargo.setCodigo( mCargo.getCodigo );
    oCargo.setCargo( mCargo.getCargo );

    inherited sair;
  end
  else
    inherited sair;
end;

procedure Tform_consulta_cargos.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_cargos;
begin
  inherited;
  oCadastroCargos:= Tform_cadastro_cargos( pObj );

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_cargos.spb_botao_pesquisarClick(Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_cargos.tipoFiltro;
begin
  inherited;
  case combobox_tipo_filtro.ItemIndex of
    0:  //código
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR CÓDIGO!';
        edt_pesquisa.NumbersOnly:= true;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    1:  //cargos
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR CARGO!';
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    2: //todos
      begin
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= false;
        edt_pesquisa.Clear;
      end;
  end;
end;

end.
