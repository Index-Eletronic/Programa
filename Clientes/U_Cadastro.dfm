object Clientes: TClientes
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'frm_cadastro'
  ClientHeight = 841
  ClientWidth = 944
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 8
    Top = 83
    Width = 206
    Height = 23
    Caption = 'DADOS CADASTRAIS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label9: TLabel
    Left = 8
    Top = 395
    Width = 152
    Height = 23
    Caption = 'CADASTRADOS:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 944
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitLeft = -8
    object Label1: TLabel
      Left = 328
      Top = 16
      Width = 336
      Height = 25
      Caption = 'CADASTRO DE OR'#199'AMENTOS'
      Color = clBlue
      Font.Charset = ANSI_CHARSET
      Font.Color = clHotLight
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 112
    Width = 945
    Height = 185
    Color = clMedGray
    ParentBackground = False
    TabOrder = 1
    object Label2: TLabel
      Left = 8
      Top = 28
      Width = 55
      Height = 18
      Caption = 'DATA:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 240
      Top = 28
      Width = 22
      Height = 18
      Caption = 'N'#186
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 408
      Top = 28
      Width = 42
      Height = 18
      Caption = 'REV:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 616
      Top = 28
      Width = 95
      Height = 18
      Caption = 'R$ TOTAL:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 8
      Top = 76
      Width = 59
      Height = 18
      Caption = 'NOME:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 8
      Top = 132
      Width = 104
      Height = 18
      Caption = 'ENDERE'#199'O:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txt_data: TEdit
      Left = 69
      Top = 25
      Width = 141
      Height = 26
      Alignment = taCenter
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 10
      ParentFont = False
      TabOrder = 0
      Text = '06/05/2022'
    end
    object txt_n: TEdit
      Left = 268
      Top = 25
      Width = 102
      Height = 26
      Alignment = taCenter
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 1
      Text = '82'
    end
    object txt_rev: TEdit
      Left = 456
      Top = 25
      Width = 122
      Height = 26
      Alignment = taCenter
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 2
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
      Text = '0'
    end
    object txt_tot: TEdit
      Left = 717
      Top = 25
      Width = 165
      Height = 26
      Alignment = taCenter
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      MaxLength = 12
      NumbersOnly = True
      ParentFont = False
      TabOrder = 3
      Text = '38440'
    end
    object txt_nome: TEdit
      Left = 73
      Top = 76
      Width = 554
      Height = 26
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      Text = 'LAERCIO CASARIN'
    end
    object txt_end: TEdit
      Left = 118
      Top = 129
      Width = 787
      Height = 26
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      Text = 'COD. CHAMONIX'
    end
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 424
    Width = 936
    Height = 393
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_pedido'
        Title.Alignment = taCenter
        Title.Caption = 'OR'#199'.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 50
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'rev'
        Title.Alignment = taCenter
        Title.Caption = 'REV.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Data'
        Title.Alignment = taCenter
        Title.Caption = 'DATA'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Title.Caption = 'NOME'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'endereco'
        Title.Caption = 'END.'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 500
        Visible = True
      end>
  end
  object btn_filtro: TButton
    Left = 244
    Top = 393
    Width = 75
    Height = 25
    Cursor = crHandPoint
    Caption = 'FILTRAR'
    DragCursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object txt_filtro: TEdit
    Left = 325
    Top = 392
    Width = 313
    Height = 26
    Enabled = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object btn_salvar: TButton
    Left = 168
    Top = 303
    Width = 129
    Height = 50
    Cursor = crHandPoint
    Caption = 'SALVAR'
    DragCursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    OnClick = btn_salvarClick
  end
  object btn_editar: TButton
    Left = 328
    Top = 303
    Width = 129
    Height = 50
    Cursor = crHandPoint
    Caption = 'EDITAR'
    DragCursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = btn_editarClick
  end
  object btn_excluir: TButton
    Left = 494
    Top = 303
    Width = 129
    Height = 50
    Cursor = crHandPoint
    Caption = 'EXCLUIR'
    DragCursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 8
    OnClick = btn_excluirClick
  end
  object btn_pdf: TButton
    Left = 831
    Top = 303
    Width = 105
    Height = 81
    Cursor = crHandPoint
    Caption = 'PDF'
    TabOrder = 7
  end
  object btn_cancelar: TButton
    Left = 665
    Top = 303
    Width = 129
    Height = 50
    Cursor = crHandPoint
    Caption = 'CANCELAR'
    DragCursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 9
    OnClick = btn_cancelarClick
  end
  object btn_novo: TButton
    Left = 8
    Top = 303
    Width = 129
    Height = 50
    Cursor = crHandPoint
    Caption = 'NOVO'
    DragCursor = crHandPoint
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clMenuHighlight
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 10
    OnClick = btn_novoClick
  end
  object FDStoredProc1: TFDStoredProc
    Connection = Principal.FDConnection1
    Left = 784
    Top = 16
  end
  object DataSource1: TDataSource
    DataSet = Principal.FDTableclientes
    Left = 712
    Top = 16
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 852
    Top = 13
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = Principal.BindSourceclientes
      FieldName = 'Data'
      Control = txt_data
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = Principal.BindSourceclientes
      FieldName = 'id_pedido'
      Control = txt_n
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = Principal.BindSourceclientes
      FieldName = 'rev'
      Control = txt_rev
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = Principal.BindSourceclientes
      FieldName = 'Valor'
      Control = txt_tot
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = Principal.BindSourceclientes
      FieldName = 'nome'
      Control = txt_nome
      Track = True
    end
    object LinkControlToField6: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = Principal.BindSourceclientes
      FieldName = 'endereco'
      Control = txt_end
      Track = True
    end
  end
  object FDCon_Orc_php: TFDConnection
    Params.Strings = (
      'Database=tuonmarcenaria'
      'User_Name=tuonmarcenaria'
      'Password=Lica126x'
      'Server=xmysql.tuonmarcenaria.com.br'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 16
  end
  object Driver: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Acer\Desktop\Programa\Clientes\Win32\Debug\lib\libmysql' +
      '.dll'
    Left = 96
    Top = 16
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDTabletuonmarcenaria_clientes
    ScopeMappings = <>
    Left = 280
    Top = 16
  end
  object FDTabletuonmarcenaria_clientes: TFDTable
    Active = True
    BeforePost = FDTabletuonmarcenaria_clientesBeforePost
    IndexFieldNames = 'id'
    Connection = FDCon_Orc_php
    TableName = 'tuonmarcenaria.clientes'
    Left = 168
    Top = 16
    object FDTabletuonmarcenaria_clientesid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object FDTabletuonmarcenaria_clientesnome: TStringField
      FieldName = 'nome'
      Origin = 'nome'
      Required = True
      FixedChar = True
      Size = 50
    end
    object FDTabletuonmarcenaria_clientesdata: TStringField
      FieldName = 'data'
      Origin = 'data'
      Required = True
      FixedChar = True
      Size = 11
    end
    object FDTabletuonmarcenaria_clientesid_pedido: TStringField
      FieldName = 'id_pedido'
      Origin = 'id_pedido'
      Required = True
      FixedChar = True
      Size = 11
    end
    object FDTabletuonmarcenaria_clientesendereco: TStringField
      FieldName = 'endereco'
      Origin = 'endereco'
      Required = True
      FixedChar = True
      Size = 100
    end
    object FDTabletuonmarcenaria_clientesrev: TStringField
      FieldName = 'rev'
      Origin = 'rev'
      Required = True
      FixedChar = True
      Size = 11
    end
    object FDTabletuonmarcenaria_clientesvalor: TStringField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      FixedChar = True
      Size = 11
    end
  end
end
