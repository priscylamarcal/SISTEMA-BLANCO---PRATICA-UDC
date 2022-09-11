inherited form_cadastro_cores: Tform_cadastro_cores
  Caption = 'Cadastro de Cor'
  ClientHeight = 255
  ExplicitHeight = 294
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnl_fundo: TPanel
    Height = 255
    ExplicitHeight = 255
    inherited ScrollBox1: TScrollBox
      Height = 255
      ExplicitHeight = 255
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
      object lbl_cor: TLabel [4]
        Left = 112
        Top = 16
        Width = 32
        Height = 16
        Caption = 'Cor *'
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
        Top = 200
        ExplicitTop = 200
      end
      object edt_cor: PriTEdit
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
