inherited form_cadastro_formas_pagamentos: Tform_cadastro_formas_pagamentos
  Caption = 'Cadastro de Forma de Pagamento'
  ClientHeight = 212
  ExplicitHeight = 251
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    Height = 212
    ExplicitHeight = 279
    inherited ScrollBox1: TScrollBox
      Height = 212
      ExplicitHeight = 279
      inherited lbl_cod_usuario: TLabel
        Top = 117
        ExplicitTop = 117
      end
      inherited lbl_data_cadastro: TLabel
        Top = 117
        ExplicitTop = 117
      end
      inherited lbl_data_ult_alt: TLabel
        Top = 117
        ExplicitTop = 117
      end
      object lbl_forma_pagamento: TLabel [4]
        Left = 112
        Top = 16
        Width = 135
        Height = 16
        Caption = 'Forma de Pagamento *'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited edt_cod_usuario: PriTEdit
        Top = 132
        ExplicitTop = 132
      end
      inherited edt_data_cadastro: PriTEdit
        Top = 132
        ExplicitTop = 132
      end
      inherited edt_data_ult_alt: PriTEdit
        Top = 132
        ExplicitTop = 132
      end
      inherited pnl_bottom: TPanel
        Top = 157
        ExplicitTop = 224
      end
      object edt_forma_pagamento: PriTEdit
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
