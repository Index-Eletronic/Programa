object frm_Plano: Tfrm_Plano
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'PlanoCorte'
  ClientHeight = 948
  ClientWidth = 1045
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
  object Label2: TLabel
    Left = 8
    Top = 71
    Width = 129
    Height = 16
    Caption = 'CADASTRO DE ITENS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1045
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 304
      Top = 16
      Width = 413
      Height = 25
      Caption = 'CUSTO DE PRODU'#199#195'O - MATERIAIS'
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
  object DBGrid1: TDBGrid
    Left = 139
    Top = 232
    Width = 777
    Height = 708
    DataSource = DataSource1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_plano'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
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
        FieldName = 'qr'
        Title.Caption = 'QR'
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
        FieldName = 'id_mat'
        Title.Alignment = taCenter
        Title.Caption = 'COD MAT'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 60
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'qtde'
        Title.Alignment = taCenter
        Title.Caption = 'QTDE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'mat'
        Title.Alignment = taCenter
        Title.Caption = 'MATERIAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 380
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'valor'
        Title.Alignment = taCenter
        Title.Caption = 'R$'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'total'
        Title.Alignment = taCenter
        Title.Caption = 'TOTAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 100
        Visible = True
      end>
  end
  object txt_Pesq: TEdit
    Left = 448
    Top = 200
    Width = 468
    Height = 26
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object btn_filtar: TButton
    Left = 147
    Top = 199
    Width = 105
    Height = 27
    Caption = 'Filtrar'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn_filtarClick
  end
  object Panel3: TPanel
    Left = 0
    Top = 85
    Width = 1045
    Height = 108
    Color = clTeal
    ParentBackground = False
    TabOrder = 4
    object Label3: TLabel
      Left = 19
      Top = 17
      Width = 77
      Height = 18
      Caption = 'Material:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 47
      Top = 45
      Width = 49
      Height = 18
      Caption = 'Qtde:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 834
      Top = 14
      Width = 30
      Height = 18
      Caption = 'Vlr:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lbl_total: TLabel
      Left = 870
      Top = 41
      Width = 94
      Height = 32
      Alignment = taCenter
      AutoSize = False
      Color = clBlack
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoText
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object Label10: TLabel
      Left = 813
      Top = 49
      Width = 51
      Height = 18
      Alignment = taRightJustify
      Caption = 'Total:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 60
      Top = 80
      Width = 33
      Height = 18
      Caption = 'QR:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txt_qtde: TEdit
      Left = 102
      Top = 41
      Width = 83
      Height = 26
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 0
      OnChange = txt_qtdeChange
    end
    object txt_vlr: TEdit
      Left = 870
      Top = 9
      Width = 94
      Height = 26
      Alignment = taCenter
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = '237,00'
    end
    object btn_novo: TButton
      Left = 204
      Top = 54
      Width = 99
      Height = 45
      Cursor = crHandPoint
      Caption = 'NOVO'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btn_novoClick
    end
    object btn_salvar: TButton
      Left = 309
      Top = 54
      Width = 102
      Height = 45
      Cursor = crHandPoint
      Caption = 'SALVAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btn_salvarClick
    end
    object btn_editar: TButton
      Left = 417
      Top = 54
      Width = 102
      Height = 45
      Cursor = crHandPoint
      Caption = 'EDITAR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object btn_excluir: TButton
      Left = 525
      Top = 54
      Width = 99
      Height = 45
      Cursor = crHandPoint
      Caption = 'EXCLUIR'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btn_excluirClick
    end
    object CB_mat: TComboBox
      Left = 191
      Top = 8
      Width = 593
      Height = 27
      DragCursor = crHandPoint
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 6
      Text = 'DURATEX - MDF BP BRANCO TX 06MM'
      Items.Strings = (
        'DURATEX - MDF BP BRANCO TX 06MM'
        'DURATEX - MDF BP BRANCO TX 09MM'
        'DURATEX - MDF BP BRANCO TX 15MM')
    end
    object txt_cod_mat: TEdit
      Left = 102
      Top = 9
      Width = 83
      Height = 26
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 7
      Text = '100010'
    end
    object btn_Mat: TButton
      Left = 640
      Top = 46
      Width = 144
      Height = 51
      Cursor = crHandPoint
      Caption = 'Cadastro de Materiais'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      WordWrap = True
    end
    object CB_Qr: TComboBox
      Left = 99
      Top = 74
      Width = 86
      Height = 31
      DragCursor = crHandPoint
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 9
      Text = '39'
      Items.Strings = (
        '39'
        '40'
        '41'
        '42'
        '43'
        '56'
        '57'
        '58'
        '59'
        '60'
        '61'
        '62'
        '63'
        '64'
        '65'
        '66'
        '67'
        '68'
        '69'
        '72'
        '73'
        '74'
        '75'
        '76'
        '77'
        '78'
        '79'
        '80'
        '81'
        '82'
        '83'
        '84'
        '85'
        '86'
        '87'
        '88'
        '89'
        '90'
        '91'
        '92'
        '93'
        '94'
        '95'
        '96'
        '97'
        '98'
        '99'
        '100'
        '101'
        '102'
        '103'
        '104'
        '105'
        '106'
        '107'
        '108'
        '109'
        '110'
        '111'
        '112'
        '113'
        '114'
        '115'
        '116'
        '117'
        '118'
        '119'
        '120'
        '121'
        '122'
        '123'
        '124'
        '125'
        '126'
        '127'
        '128'
        '129'
        '130'
        '131'
        '132'
        '133'
        '134'
        '135'
        '136'
        '137'
        '138'
        '139'
        '140'
        '141'
        '142'
        '143'
        '144'
        '145'
        '146'
        '147'
        '148'
        '149'
        '150'
        '151'
        '152'
        '153'
        '154'
        '155'
        '156'
        '157'
        '158'
        '159'
        '160'
        '161'
        '162'
        '163'
        '164'
        '165'
        '166'
        '167'
        '168'
        '169'
        '170'
        '171'
        '172'
        '173'
        '174'
        '175'
        '177'
        '178'
        '179'
        '180'
        '181'
        '182'
        '183'
        '184'
        '185'
        '186'
        '187'
        '188'
        '189'
        '190'
        '191'
        '194'
        '195'
        '196'
        '197'
        '198'
        '199'
        '200'
        '201'
        '202'
        '203'
        '204'
        '205'
        '206'
        '207'
        '208'
        '209'
        '210'
        '212'
        '213'
        '214'
        '215'
        '216'
        '217'
        '218'
        '219'
        '220'
        '221'
        '222'
        '223'
        '224'
        '226'
        '227'
        '228'
        '229')
    end
  end
  object CB_Pesq: TComboBox
    Left = 258
    Top = 199
    Width = 175
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    Items.Strings = (
      'QR'
      'COD'
      'MATERIAL'
      '')
  end
  object FDCon_precos: TFDConnection
    Params.Strings = (
      'Database=tuonmarcenaria'
      'User_Name=tuonmarcenaria'
      'Password=Lica126x'
      'DriverID=MySQL'
      'Server=xmysql.tuonmarcenaria.com.br')
    Connected = True
    LoginPrompt = False
    Left = 952
    Top = 480
  end
  object Driver_precos: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Acer\Desktop\Programa\Clientes\Win32\Debug\lib\libmysql' +
      '.dll'
    Left = 952
    Top = 408
  end
  object BindSourcetuonmarcenaria_precos: TBindSourceDB
    DataSet = FDTabletuonmarcenaria_precos
    ScopeMappings = <>
    Left = 952
    Top = 296
  end
  object FDTabletuonmarcenaria_precos: TFDTable
    Active = True
    IndexFieldNames = 'id_tab'
    Connection = FDCon_precos
    TableName = 'tuonmarcenaria.precos'
    Left = 952
    Top = 232
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 956
    Top = 349
    object LinkFillControlToField1: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcetuonmarcenaria_precos
      FieldName = 'id_mat'
      Track = True
      FillDataSource = BindSourcetuonmarcenaria_precos
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkFillControlToField2: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcetuonmarcenaria_precos
      FieldName = 'id_mat'
      Track = True
      FillDataSource = BindSourcetuonmarcenaria_precos
      FillDisplayFieldName = 'descricao'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcetuonmarcenaria_precos
      FieldName = 'id_mat'
      Control = txt_cod_mat
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcetuonmarcenaria_precos
      FieldName = 'valor'
      Control = txt_vlr
      Track = True
    end
    object LinkFillControlToField3: TLinkFillControlToField
      Category = 'Quick Bindings'
      DataSource = Cad_Orcamento.BindSourcepcp
      FieldName = 'id_produto'
      Control = CB_Qr
      Track = True
      FillDataSource = Cad_Orcamento.BindSourcepcp
      FillDisplayFieldName = 'id_produto'
      AutoFill = True
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
    object LinkListControlToField1: TLinkListControlToField
      Category = 'Quick Bindings'
      DataSource = BindSourcetuonmarcenaria_precos
      FieldName = 'descricao'
      Control = CB_mat
      FillExpressions = <>
      FillHeaderExpressions = <>
      FillBreakGroups = <>
    end
  end
  object FD_PlanoCorte: TFDConnection
    Params.Strings = (
      'Database=tuonmarcenaria'
      'Server=xmysql.tuonmarcenaria.com.br'
      'User_Name=tuonmarcenaria'
      'Password=Lica126x'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 232
  end
  object Driver_PlanoCorte: TFDPhysMySQLDriverLink
    VendorLib = 
      'C:\Users\Acer\Desktop\Programa\Clientes\Win32\Debug\lib\libmysql' +
      '.dll'
    Left = 40
    Top = 296
  end
  object BindSourcetuonmarcenaria_planocorte: TBindSourceDB
    DataSet = FDT_planocorte
    ScopeMappings = <>
    Left = 32
    Top = 408
  end
  object FDT_planocorte: TFDTable
    Active = True
    BeforeEdit = FDT_planocorteBeforeEdit
    BeforePost = FDT_planocorteBeforePost
    IndexFieldNames = 'id_plano'
    Connection = FD_PlanoCorte
    TableName = 'tuonmarcenaria.planocorte'
    Left = 40
    Top = 360
    object FDT_planocorteid_plano: TFDAutoIncField
      FieldName = 'id_plano'
      Origin = 'id_plano'
      ReadOnly = True
    end
    object FDT_planocorteid_mat: TStringField
      FieldName = 'id_mat'
      Origin = 'id_mat'
      Required = True
      FixedChar = True
      Size = 11
    end
    object FDT_planocorteqr: TStringField
      FieldName = 'qr'
      Origin = 'qr'
      Required = True
      FixedChar = True
      Size = 11
    end
    object FDT_planocorteqtde: TStringField
      FieldName = 'qtde'
      Origin = 'qtde'
      Required = True
      FixedChar = True
    end
    object FDT_planocortetotal: TStringField
      FieldName = 'total'
      Origin = 'total'
      Required = True
      FixedChar = True
      Size = 10
    end
    object FDT_planocortevalor: TStringField
      FieldName = 'valor'
      Origin = 'valor'
      Required = True
      FixedChar = True
      Size = 11
    end
    object FDT_planocortemat: TStringField
      FieldName = 'mat'
      Origin = 'mat'
      Required = True
      FixedChar = True
      Size = 50
    end
  end
  object DataSource1: TDataSource
    DataSet = FDT_planocorte
    Left = 40
    Top = 473
  end
end