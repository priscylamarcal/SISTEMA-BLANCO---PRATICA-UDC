unit uConsulta_Departamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroDepartamentos,
  uCtrlDepartamentos,
  uDepartamentos,
  uFilterSearch;

type
  Tform_consulta_departamentos = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroDepartamentos : Tform_cadastro_departamento;

    oDepartamento : Departamentos;
    aCtrlDepartamentos : ctrlDepartamentos;
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
  form_consulta_departamentos: Tform_consulta_departamentos;

implementation

{$R *.dfm}

{ Tform_consulta_departamentos }

procedure Tform_consulta_departamentos.alterar;
begin
  inherited;
  aCtrlDepartamentos.carregar( oDepartamento );
  oCadastroDepartamentos.conhecaObj( aCtrlDepartamentos, oDepartamento );

  oCadastroDepartamentos.Caption:= 'Alteração de Departamento';

  oCadastroDepartamentos.ShowModal;
end;

procedure Tform_consulta_departamentos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oDepartamento:= Departamentos( pObj );
  aCtrlDepartamentos:= ctrlDepartamentos( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlDepartamentos.getDS );
end;

procedure Tform_consulta_departamentos.excluir;
begin
  inherited;

end;

procedure Tform_consulta_departamentos.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;

  edt_pesquisa.Clear;

  self.pesquisar; inherited;
end;

procedure Tform_consulta_departamentos.novo;
var form : Tform_cadastro_departamento;
begin
  inherited;
  oCadastroDepartamentos.conhecaObj( aCtrlDepartamentos, oDepartamento );
  oCadastroDepartamentos.limpaEdt;

  oCadastroDepartamentos.Caption:= 'Cadastro de Departamento';

  oCadastroDepartamentos.ShowModal;

  if form.salvou then
     self.pesquisar; inherited;

end;

procedure Tform_consulta_departamentos.pesquisar;
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
          VFilter.TipoConsulta := TpCTODOS;
        end;
    end;

  finally
    aCtrlDepartamentos.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_departamentos.sair;
var mDepartamento : Departamentos;
begin
  if self.btn_botao_sair.Caption = 'Selecionar' then
  begin
    mDepartamento:= Departamentos.crieObj;
    aCtrlDepartamentos.carregar( TObject( mDepartamento ) );
    oDepartamento.setCodigo( mDepartamento.getCodigo );
    oDepartamento.setDepartamento( mDepartamento.getDepartamento );

    inherited sair;
  end
  else
    inherited sair;
end;

procedure Tform_consulta_departamentos.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_departamento;
begin
  inherited;
  oCadastroDepartamentos:= Tform_cadastro_departamento( pObj );

  if form.salvou then
     self.pesquisar; inherited;

end;

procedure Tform_consulta_departamentos.spb_botao_pesquisarClick(
  Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_departamentos.tipoFiltro;
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
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR DEPARTAMENTO!';
        edt_pesquisa.NumbersOnly:= false;
        edt_pesquisa.Enabled:= true;
        edt_pesquisa.Clear;
      end;
    2: //todos
      begin
        edt_pesquisa.Enabled:= false;
        edt_pesquisa.Clear;
      end;
  end;
end;

end.
