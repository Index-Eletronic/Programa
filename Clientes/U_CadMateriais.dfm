object frm_CadMateriais: Tfrm_CadMateriais
  Left = 0
  Top = 0
  Caption = 'CadMateriais'
  ClientHeight = 822
  ClientWidth = 879
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 19
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
    Width = 879
    Height = 65
    Align = alTop
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlue
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 889
    object Label1: TLabel
      Left = 312
      Top = 16
      Width = 267
      Height = 25
      Caption = 'CADASTRO MATERIAIS'
      Color = clMaroon
      Font.Charset = ANSI_CHARSET
      Font.Color = clMaroon
      Font.Height = -21
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
  end
  object Panel3: TPanel
    Left = 2
    Top = 93
    Width = 879
    Height = 132
    Color = clOlive
    ParentBackground = False
    TabOrder = 1
    object Label3: TLabel
      Left = 103
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
      Left = 32
      Top = 17
      Width = 45
      Height = 18
      Caption = 'COD:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 720
      Top = 17
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
    object Label4: TLabel
      Left = 785
      Top = 17
      Width = 78
      Height = 18
      Caption = 'Unidade:'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object txt_uni: TEdit
      Left = 785
      Top = 41
      Width = 83
      Height = 26
      Alignment = taCenter
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 7
      Text = 'UNI'
    end
    object btn_novo: TButton
      Left = 13
      Top = 73
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
      TabOrder = 6
      OnClick = btn_novoClick
    end
    object btn_salvar: TButton
      Left = 118
      Top = 73
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
      TabOrder = 3
      OnClick = btn_salvarClick
    end
    object btn_editar: TButton
      Left = 226
      Top = 73
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
      OnClick = btn_editarClick
    end
    object btn_excluir: TButton
      Left = 334
      Top = 73
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
    object txt_cod_mat: TEdit
      Left = 14
      Top = 41
      Width = 83
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
      TabOrder = 0
      Text = '100010'
    end
    object txt_vlr: TEdit
      Left = 696
      Top = 41
      Width = 83
      Height = 26
      Alignment = taCenter
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      NumbersOnly = True
      ParentFont = False
      TabOrder = 2
      Text = '285'
    end
    object txt_desc: TEdit
      Left = 103
      Top = 41
      Width = 587
      Height = 26
      CharCase = ecUpperCase
      Enabled = False
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'DURATEX - MDF BP BRANCO TX 18MM'
    end
  end
  object DBGrid1: TDBGrid
    Left = 73
    Top = 264
    Width = 760
    Height = 550
    DataSource = DS_CAD_Mat
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = DBGrid1CellClick
    OnColEnter = DBGrid1ColEnter
    OnColExit = DBGrid1ColExit
    Columns = <
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_tab'
        Title.Alignment = taCenter
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 25
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'id_mat'
        Title.Alignment = taCenter
        Title.Caption = 'COD'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'descricao'
        Title.Caption = 'MATERIAL'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'valor'
        Title.Alignment = taCenter
        Title.Caption = 'R$ UNI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'unidade'
        Title.Alignment = taCenter
        Title.Caption = 'UNI'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end>
  end
  object btn_filtar: TButton
    Left = 108
    Top = 231
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
  end
  object CB_Pesq: TComboBox
    Left = 219
    Top = 231
    Width = 87
    Height = 27
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 4
    Items.Strings = (
      'QR'
      'COD'
      'MATERIAL'
      '')
  end
  object txt_Pesq: TEdit
    Left = 312
    Top = 232
    Width = 468
    Height = 26
    CharCase = ecUpperCase
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Verdana'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
  end
  object DS_CAD_Mat: TDataSource
    DataSet = frm_Plano.FDTabletuonmarcenaria_precos
    Left = 136
    Top = 8
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 5
    object LinkControlToField1: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = frm_Plano.BindSourcetuonmarcenaria_precos
      FieldName = 'descricao'
      Control = txt_desc
      Track = True
    end
    object LinkControlToField2: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = frm_Plano.BindSourcetuonmarcenaria_precos
      FieldName = 'valor'
      Control = txt_vlr
      Track = True
    end
    object LinkControlToField3: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = frm_Plano.BindSourcetuonmarcenaria_precos
      FieldName = 'id_mat'
      Control = txt_cod_mat
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = 'Quick Bindings'
      DataSource = frm_Plano.BindSourcetuonmarcenaria_precos
      FieldName = 'unidade'
      Control = txt_uni
      Track = True
    end
  end
end
