object frm_Proj: Tfrm_Proj
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Projetos'
  ClientHeight = 838
  ClientWidth = 1085
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Label9: TLabel
    Left = 19
    Top = 210
    Width = 122
    Height = 23
    Caption = #193' EXECUTAR'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label10: TLabel
    Left = 576
    Top = 210
    Width = 118
    Height = 23
    Caption = 'EXECUTADO'
    Color = clRed
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 62
    Top = 71
    Width = 36
    Height = 23
    Alignment = taRightJustify
    Caption = 'QR:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 15
    Top = 104
    Width = 91
    Height = 23
    Alignment = taRightJustify
    Caption = 'CLIENTE:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 42
    Top = 137
    Width = 64
    Height = 23
    Alignment = taRightJustify
    Caption = 'DESC.:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clHotLight
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1085
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
      Left = 400
      Top = 16
      Width = 294
      Height = 25
      Caption = 'CADASTRO DE PROJETOS'
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
  object DB_Exrcutado: TDBGrid
    Left = 562
    Top = 239
    Width = 505
    Height = 591
    BorderStyle = bsNone
    Color = cl3DDkShadow
    DataSource = DS_Proj_sim
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id_produto'
        Title.Alignment = taCenter
        Title.Caption = 'QR'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cliente'
        Title.Alignment = taCenter
        Title.Caption = 'CLIENTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'DESCRIC'#195'O'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 335
        Visible = True
      end
      item
        Color = clBlack
        Expanded = False
        FieldName = 'proj'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clLime
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'EXE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end>
  end
  object DB_A_Executar: TDBGrid
    Left = 19
    Top = 239
    Width = 537
    Height = 591
    BorderStyle = bsNone
    Color = cl3DDkShadow
    DataSource = DataSource_pcp
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DB_A_ExecutarCellClick
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_produto'
        Title.Alignment = taCenter
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
        Expanded = False
        FieldName = 'cliente'
        Title.Caption = 'CLIENTE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 130
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'DESCRICAO'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 300
        Visible = True
      end
      item
        Alignment = taCenter
        Color = clBtnText
        Expanded = False
        FieldName = 'proj'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Title.Alignment = taCenter
        Title.Caption = 'EXE'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 35
        Visible = True
      end>
  end
  object btn_salvar_Aexec: TButton
    Left = 42
    Top = 170
    Width = 113
    Height = 34
    Caption = 'SALVAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = btn_salvar_AexecClick
  end
  object txt_id: TEdit
    Left = 112
    Top = 71
    Width = 43
    Height = 27
    Alignment = taCenter
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    Text = '101'
  end
  object txt_cliente: TEdit
    Left = 112
    Top = 104
    Width = 409
    Height = 27
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
    Text = 'PEDRO COSTA'
  end
  object txt_desc: TEdit
    Left = 112
    Top = 137
    Width = 873
    Height = 27
    CharCase = ecUpperCase
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    Text = 'LIVING - PAINEL LISO MDF BP FREIJ'#211
  end
  object txt_proj: TEdit
    Left = 161
    Top = 181
    Width = 89
    Height = 23
    Alignment = taCenter
    AutoSize = False
    BorderStyle = bsNone
    CharCase = ecUpperCase
    Color = clLime
    Enabled = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 7
    Text = 'N'#195'O'
  end
  object FDCon_Proj_SIM: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Acer\Desktop\Programa\Clientes\Win32\Debug\Ass' +
        'ets\BD_Sistema.mdb'
      'DriverID=MSAcc')
    Connected = True
    Left = 752
    Top = 16
  end
  object BindSourceProj_SIM: TBindSourceDB
    DataSet = FDTableProj_SIM
    ScopeMappings = <>
    Left = 952
    Top = 16
  end
  object FDTableProj_SIM: TFDTable
    Active = True
    Connection = FDCon_Proj_SIM
    TableName = 'Proj_SIM'
    Left = 848
    Top = 16
    object FDTableProj_SIMid_produto: TFDAutoIncField
      Alignment = taCenter
      DisplayWidth = 8
      FieldName = 'id_produto'
      Origin = 'id_produto'
      ReadOnly = True
    end
    object FDTableProj_SIMcliente: TWideStringField
      DisplayWidth = 18
      FieldName = 'cliente'
      Origin = 'cliente'
      Size = 255
    end
    object FDTableProj_SIMdescricao: TWideStringField
      DisplayWidth = 50
      FieldName = 'descricao'
      Origin = 'descricao'
      Size = 255
    end
    object FDTableProj_SIMproj: TWideStringField
      FieldName = 'proj'
      Origin = 'proj'
      Visible = False
      Size = 255
    end
  end
  object FDStoredProc_Proj_Sim: TFDStoredProc
    Connection = FDCon_Proj_SIM
    Left = 840
    Top = 80
  end
  object DS_Proj_sim: TDataSource
    DataSet = FDTableProj_SIM
    Left = 976
    Top = 64
  end
  object DataSource_pcp: TDataSource
    DataSet = FDTable_Proj_Não_
    Left = 328
    Top = 20
  end
  object FDCon_PCP_Nao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Acer\Desktop\Programa\Clientes\Win32\Debug\Ass' +
        'ets\BD_Sistema.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 408
    Top = 56
  end
  object BindSource_Proj_Não_: TBindSourceDB
    DataSet = FDTable_Proj_Não_
    ScopeMappings = <>
    Left = 248
    Top = 16
  end
  object FDTable_Proj_Não_: TFDTable
    Active = True
    BeforePost = FDTable_Proj_Não_BeforePost
    Connection = FDCon_PCP_Nao
    TableName = '[Proj_N'#227'o]'
    Left = 136
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 68
    Top = 13
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSource_Proj_Não_
      FieldName = 'cliente'
      Control = txt_cliente
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSource_Proj_Não_
      FieldName = 'descricao'
      Control = txt_desc
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSource_Proj_Não_
      FieldName = 'id_produto'
      Control = txt_id
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = BindSource_Proj_Não_
      FieldName = 'proj'
      Control = txt_proj
      Track = True
    end
  end
end
