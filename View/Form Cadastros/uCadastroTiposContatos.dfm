inherited form_cadastro_tipo_contato: Tform_cadastro_tipo_contato
  Caption = 'Cadastro de Tipo de Contato'
  ClientHeight = 264
  ExplicitHeight = 303
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    Height = 264
    ExplicitHeight = 264
    inherited ScrollBox1: TScrollBox
      Height = 264
      ExplicitHeight = 264
      inherited lbl_cod_usuario: TLabel
        Top = 157
        ExplicitTop = 157
      end
      inherited lbl_data_cadastro: TLabel
        Top = 157
        ExplicitTop = 157
      end
      inherited lbl_data_ult_alt: TLabel
        Top = 157
        ExplicitTop = 157
      end
      object lbl_tipo_contato: TLabel [4]
        Left = 112
        Top = 16
        Width = 103
        Height = 16
        Caption = 'Tipo de Contato *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited edt_cod_usuario: PriTEdit
        Top = 172
        ExplicitTop = 172
      end
      inherited edt_data_cadastro: PriTEdit
        Top = 172
        ExplicitTop = 172
      end
      inherited edt_data_ult_alt: PriTEdit
        Top = 172
        ExplicitTop = 172
      end
      inherited pnl_bottom: TPanel
        Top = 209
        ExplicitTop = 209
      end
      object edt_tipo_contato: PriTEdit
        Left = 112
        Top = 35
        Width = 566
        Height = 24
        CharCase = ecUpperCase
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        MaxLength = 80
        ParentFont = False
        TabOrder = 5
        MudarCor = clCream
      end
    end
  end
end
