object Principal: TPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Principal'
  ClientHeight = 803
  ClientWidth = 1437
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 592
    Top = 8
    Width = 244
    Height = 32
    Caption = 'Pagina Principal'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -27
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object MainMenu1: TMainMenu
    Left = 1400
    Top = 424
    object Arquivo1: TMenuItem
      Caption = 'Arquivo'
      object Arquivo2: TMenuItem
        Caption = 'Cadatro Or'#231'amento'
        OnClick = Arquivo2Click
      end
      object PlanodeCortes1: TMenuItem
        Caption = 'Plano de Cortes e Insumos'
      end
      object PlanodeCortes2: TMenuItem
        Caption = 'Controle de Produ'#231#227'o'
      end
      object Estoque1: TMenuItem
        Caption = 'Estoque'
      end
      object AnalisedeInsumos1: TMenuItem
        Caption = 'Analise de Insumos'
      end
    end
    object Sair1: TMenuItem
      Caption = 'Parametros'
      object Sair2: TMenuItem
        Caption = 'Controle'
      end
    end
    object Sair3: TMenuItem
      Caption = 'Sair'
      object Sair4: TMenuItem
        Caption = 'Sair'
        OnClick = Sair4Click
      end
    end
  end
end