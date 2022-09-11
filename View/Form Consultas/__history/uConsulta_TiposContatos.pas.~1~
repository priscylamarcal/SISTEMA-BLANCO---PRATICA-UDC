unit uConsultaTiposContatos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.StdCtrls, ComboBox, campoEdit, Vcl.Buttons, Vcl.ExtCtrls,
  uCadastroTiposContatos, uTiposContatos, uCtrlTiposContatos, uFilterSearch;

type
  Tform_consulta_tipos_contatos = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);
  private
    { Private declarations }
    oCadastroTiposContatos : Tform_cadastro_tipo_contato;

    oTipoContato : TiposContatos;
    aCtrlTiposContatos : ctrlTiposContatos;
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
  form_consulta_tipos_contatos: Tform_consulta_tipos_contatos;

implementation

{$R *.dfm}

{ Tform_consulta_tipos_contatos }

procedure Tform_consulta_tipos_contatos.alterar;
var form : Tform_cadastro_tipo_contato;
begin
  inherited;
  aCtrlTiposContatos.carregar( oTipoContato );
  oCadastroTiposContatos.conhecaObj( aCtrlTiposContatos, oTipoContato );

  oCadastroTiposContatos.Caption:= 'Alteração de Tipo de Contato';

  oCadastroTiposContatos.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_tipos_contatos.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oTipoContato:= TiposContatos( pObj );
  aCtrlTiposContatos:= ctrlTiposContatos( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlTiposContatos.getDS );
end;

procedure Tform_consulta_tipos_contatos.excluir;
begin
  inherited;

end;

procedure Tform_consulta_tipos_contatos.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 2;
  edt_pesquisa.Clear;
  self.pesquisar;   inherited;
end;

procedure Tform_consulta_tipos_contatos.novo;
var form : Tform_cadastro_tipo_contato;
begin
  inherited;
  oCadastroTiposContatos.conhecaObj( aCtrlTiposContatos, oTipoContato );
  oCadastroTiposContatos.limpaEdt;

  oCadastroTiposContatos.Caption:= 'Cadastro de Tipo de Contato';

  oCadastroTiposContatos.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_tipos_contatos.pesquisar;
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
    aCtrlTiposContatos.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_tipos_contatos.sair;
begin
  inherited;

end;

procedure Tform_consulta_tipos_contatos.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_tipo_contato;
begin
  inherited;
  oCadastroTiposContatos := Tform_cadastro_tipo_contato( pObj );

  if form.salvou then
     self.pesquisar; inherited;
end;

procedure Tform_consulta_tipos_contatos.spb_botao_pesquisarClick(
  Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_tipos_contatos.tipoFiltro;
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
    1:  //tipo contato
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR TIPO DE CONTATO!';
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
