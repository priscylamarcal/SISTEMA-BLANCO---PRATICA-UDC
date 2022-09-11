unit uConsulta_Estados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uConsultaPai, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.Buttons, Vcl.StdCtrls, campoEdit, ComboBox, Vcl.ExtCtrls,
  uCadastroEstados,
  uCtrlEstados,
  uEstados, uFilterSearch, uPaises;

type
  Tform_consulta_estados = class(Tform_consulta_pai)
    procedure FormShow(Sender: TObject);
    procedure spb_botao_pesquisarClick(Sender: TObject);

  private
    { Private declarations }
    oCadastroEstados : Tform_cadastro_estados;

    oEstado : Estados;
    aCtrlEstados : ctrlEstados;
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
  form_consulta_estados: Tform_consulta_estados;

implementation

{$R *.dfm}

{ Tform_consulta_estados }

procedure Tform_consulta_estados.alterar;
var form : Tform_cadastro_estados;
begin
  inherited;
  oCadastroEstados.limpaEdt;
  aCtrlEstados.carregar( oEstado );
  oCadastroEstados.conhecaObj( aCtrlEstados, oEstado );

  oCadastroEstados.Caption:= 'Alteração de Estado';

  oCadastroEstados.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;

end;

procedure Tform_consulta_estados.conhecaObj(pCtrl, pObj: TObject);
begin
  inherited;
  oEstado:= Estados( pobj );
  aCtrlEstados:= ctrlEstados( pCtrl );

  self.DBGrid.DataSource:= TDataSource( aCtrlEstados.getDS );
end;

procedure Tform_consulta_estados.excluir;
begin
  inherited;

end;

procedure Tform_consulta_estados.FormShow(Sender: TObject);
begin
  inherited;
  combobox_tipo_filtro.ItemIndex:= 3;
  edt_pesquisa.Clear;
  self.pesquisar;   inherited;
end;

procedure Tform_consulta_estados.novo;
var form : Tform_cadastro_estados;
begin
  inherited;
  oCadastroEstados.conhecaObj( aCtrlEstados, oEstado );
  oCadastroEstados.limpaEdt;

  oCadastroEstados.Caption:= 'Cadastro de Estado';

  oCadastroEstados.ShowModal;

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_estados.pesquisar;
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
    aCtrlEstados.pesquisar(VFilter, pchave);
    VFilter.Free;
  end;
    Except
//    on e: exception do
//    ShowMessage(e.ClassName +'asdfasdfasdf');
    End;
end;

procedure Tform_consulta_estados.sair;
var mEstado : estados; mPais : Paises;
begin
  if (self.btn_botao_sair.Caption = 'Selecionar') then
  begin
       mEstado := estados.CrieObj;
       aCtrlEstados.carregar(TObject(mEstado));
       oEstado.setCodigo(mEstado.getCodigo);
       oEstado.setEstado(mEstado.getEstado);

//       mPais.setCodigo( mEstado.getoPais.getCodigo );
//       mPais.setPais( mEstado.getoPais.getPais );
         //  aCtrlPaises.carregar( TObject( mPais) );
//         aCtrlEstados.carregar(TObject(mEstado.getoPais));
//    mPais.setCodigo( mPais.getCodigo );
//    mPais.setPais( mPais.getPais );
     //  oEstado.getoPais.setCodigo( mEstado.getoPais );
      // oEstado.setoPais(mEstado.getoPais.clone.getCodigo);
//       oEstado.set( mEstado.GetCodigo,
//                             mEstado.GetCodUsu,
//                             mEstado.GetDataCad(false),
//                             mEstado.GetUltAlt(false));


       inherited Sair;
  end
  else
    inherited Sair;
end;

procedure Tform_consulta_estados.setFrmCadastro(pObj: TObject);
var form : Tform_cadastro_estados;
begin
  inherited;
  oCadastroEstados:= Tform_cadastro_estados ( pObj );

  if form.salvou then
    Self.pesquisar;      inherited;
end;

procedure Tform_consulta_estados.spb_botao_pesquisarClick(Sender: TObject);
begin
  pesquisar;
  inherited;
end;

procedure Tform_consulta_estados.tipoFiltro;
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
//    1:  //país
//      begin
//        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR PAÍS!';
//        edt_pesquisa.NumbersOnly:= false;
//        edt_pesquisa.Enabled:= true;
//        edt_pesquisa.Clear;
//      end;
    1:  //estado
      begin
        edt_pesquisa.TextHint:= 'DIGITE AQUI PARA CONSULTAR POR ESTADO!';
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
