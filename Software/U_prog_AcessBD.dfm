object frm_inicial: Tfrm_inicial
  Left = 0
  Top = 0
  Caption = 'Conexao Acess'
  ClientHeight = 440
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object lbnome: TLabel
    Left = 88
    Top = 24
    Width = 41
    Height = 13
    Caption = 'NOME:'
  end
  object lb_sobrenome: TLabel
    Left = 56
    Top = 43
    Width = 66
    Height = 13
    Caption = 'SOBRENOME:'
  end
  object lb_permisao: TLabel
    Left = 66
    Top = 70
    Width = 56
    Height = 13
    Caption = 'PERMIS'#195'O:'
  end
  object lb_idade: TLabel
    Left = 87
    Top = 97
    Width = 35
    Height = 13
    Caption = 'IDADE:'
  end
  object txt_nome: TEdit
    Left = 128
    Top = 16
    Width = 201
    Height = 21
    TabOrder = 0
  end
  object txt_sobrenome: TEdit
    Left = 128
    Top = 43
    Width = 201
    Height = 21
    TabOrder = 1
  end
  object txt_permissao: TEdit
    Left = 128
    Top = 70
    Width = 201
    Height = 21
    TabOrder = 2
  end
  object txt_idade: TEdit
    Left = 128
    Top = 97
    Width = 201
    Height = 21
    TabOrder = 3
  end
  object NavigatorBindSourceusuarios: TBindNavigator
    Left = 89
    Top = 124
    Width = 240
    Height = 25
    Cursor = crHandPoint
    DataSource = BindSourceusuarios
    Orientation = orHorizontal
    TabOrder = 4
  end
  object btn_novo: TButton
    Left = 8
    Top = 168
    Width = 75
    Height = 25
    Caption = 'NOVO'
    TabOrder = 5
  end
  object btn_Editar: TButton
    Left = 89
    Top = 168
    Width = 75
    Height = 25
    Caption = 'EDITAR'
    TabOrder = 6
  end
  object btn_Salvar: TButton
    Left = 170
    Top = 168
    Width = 75
    Height = 25
    Caption = 'SALVAR'
    TabOrder = 7
  end
  object btn_Exluir: TButton
    Left = 251
    Top = 168
    Width = 75
    Height = 25
    Caption = 'EXCLUIR'
    TabOrder = 8
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 199
    Width = 417
    Height = 178
    DataSource = DataSource1
    TabOrder = 9
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'sobrenome'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'permisssao'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Visible = True
      end>
  end
  object btn_pesq: TButton
    Left = 8
    Top = 383
    Width = 75
    Height = 25
    Caption = 'PESQUISAR'
    TabOrder = 10
  end
  object txt_pesq: TEdit
    Left = 87
    Top = 383
    Width = 178
    Height = 21
    TabOrder = 11
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\Acer\Desktop\Programa\CD.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 512
    Top = 72
  end
  object BindSourceusuarios: TBindSourceDB
    DataSet = FDTableusuarios
    ScopeMappings = <>
    Left = 432
    Top = 16
  end
  object FDTableusuarios: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    TableName = 'usuarios'
    Left = 432
    Top = 72
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 508
    Top = 13
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceusuarios
      FieldName = 'nome'
      Control = txt_nome
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceusuarios
      FieldName = 'sobrenome'
      Control = txt_sobrenome
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceusuarios
      FieldName = 'permisssao'
      Control = txt_permissao
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourceusuarios
      FieldName = 'idade'
      Control = txt_idade
      Track = True
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTableusuarios
    Left = 584
    Top = 80
  end
  object FDStoredProc1: TFDStoredProc
    Connection = FDConnection1
    Left = 584
    Top = 16
  end
end
