unit uConsulta_Paises;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, campoEdit, ComboBox, Vcl.ExtCtrls,
  uCadastroPaises,
  uPaises,
  uCtrlPaises, uFilterSearch;

type
  Tform_consulta_paises = class(Tform_consulta_pai)
    procedure spb_botao_pesquisarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    oCadastroPaises : Tform_cadastro_paises;

    oPais : Paises;
    aCtrlPaises : ctrlPaises;
  public
    { Public declarations }
    procedure novo;                                           override;
    procedure alterar;                                        override;
    procedure excluir;                                        override;
    procedure sair;                                           override;
    procedure pesquisar;                                      override;
    procedure conhecaObj ( pCtrl : TObject; pObj : TObject ); override;
    procedure setFrmCadastro ( pObj : TObject );              override;
    procedure tipoFiltro;                                     override;
  end;

var
  form_consulta_paises: Tform_consulta_paises;

implementation

{$R *.dfm}

{ Tform_consulta_paises }

procedure Tform_consulta_paises.alterar;
begin
  inherited;
  aCtrlPaises.carregar(oPais);
  oCadastroPaises.conhecaObj( aCtrlPaises, oPais );

  oCadastroPaises.Caption:= 'Alteração de País';

  oCadastroPaises.ShowModal;
end;

procedure Tform_consulta_paises.conhecaObj(pCtrl, pObj: TObject);
var vFilter : TFilterSearch;
begin
  inherited;
  oPais:= Paises( pObj );
  aCtrlPaises:= ctrlPaises( pCtrl );

  Self.DBGrid.DataSource:= TDataSource( aCtrlPaises.getDS );
end;

procedure Tform_consulta_paises.excluir;
var mCaption: string;
begin
  inherited;
  aCtrlPaises.carregar(oPais);

  mCaption := oCadastroPaises.btn_botao_salvar.caption;
  oCadastroPaises.btn_botao_salvar.caption := 'Excluir';

  oCadastroPaises.conhecaObj( aCtrlPaises, oPais );

  oCadastroPaises.Caption:= 'Exclusão de País';

  oCadastroPaises.bloqueiaEdt;

  oCadastroPaises.ShowModal;

  oCadastroPaises.desbloqueiaEdt;

  oCadastroPaises.btn_botao_salvar.caption := mCaption;

  oCadastroPaises.desbloqueiaEdt;
end;

procedure Tform_consulta_paises.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 4;
  edt_pesquisa.Clear;
  self.pesquisar;   inherited;
end;

procedure Tform_consulta_paises.novo;
var form : Tform_cadastro_paises;
begin
  inherited;
  oCadastroPaises.conhecaObj( aCtrlPaises, oPais );
  oCadastroPaises.limpaEdt;

  oCadastroPaises.Caption:= 'Cadastro de País';

  oCadastroPaises.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;

end;

procedure Tform_consulta_paises.pesquisar;
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
          if Length( edt_pesquisa.Text ) < 3 then
          begin
            MessageDlg( 'Digite ao menos 3 caracteres para consulta!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
            Exit;
          end;
          VFilter.TipoConsulta := TpCParam;
          VFilter.Parametro    := Uppercase( edt_pesquisa.Text );
        end;
    2:
        begin
          if edt_pesquisa.Text = '' then
          begin
            MessageDlg( 'Campo do filtro não pode ser vazio!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
            Exit;
          end;
          VFilter.TipoConsulta := TpCDDI;
          VFilter.DDI    := Uppercase( edt_pesquisa.Text );
        end;
    3:
        begin
          if edt_pesquisa.Text = '' then
          begin
            MessageDlg( 'Campo do filtro não pode ser vazio!', MtInformation, [ MbOK ], 0 );
            edt_pesquisa.SetFocus;
            Exit;
          end;
          VFilter.TipoConsulta := TpCMoeda;
          VFilter.Moeda    := Uppercase( edt_pesquisa.Text );
        end;
      4:
        begin
          VFilter.TipoConsulta := TpCTODOS;
        end;
    end;

  finally
    aCtrlPaises.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_paises.sair;
var mPais : Paises;
begin
  if self.btn_botao_sair.Caption= 'Selecionar' then
  begin
    mPais:= Paises.crieObj;
    aCtrlPaises.carregar( TObject( mPais) );
    oPais.setCodigo( mPais.getCodigo );
    oPais.setPais( mPais.getPais );
    oPais.setSigla( mPais.getSigla );
    oPais.setDDI( mPais.getDDI );
    oPais.setMoeda( mPais.getMoeda );

    inherited sair;
  end
  else
    inherited sair;
end;

procedure Tform_consulta_paises.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_paises;
begin
  inherited;

  //cast do objeto
  oCadastroPaises:= Tform_cadastro_paises( pObj );

  if form.salvou then
     self.pesquisar; inherited;
end;

procedure Tform_consulta_paises.spb_botao_pesquisarClick(Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_paises.tipoFiltro;
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
    1:  //país
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR PAÍS!';
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    2:  //ddi
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR DDI!';
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    3:  //moeda
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR MOEDA!';
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    4: //todos
      begin
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= false;
        edt_pesquisa.Clear;
      end;
  end;
end;

end.
