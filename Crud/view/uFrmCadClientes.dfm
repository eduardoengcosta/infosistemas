object FormCadClientes: TFormCadClientes
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Clientes'
  ClientHeight = 466
  ClientWidth = 590
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 425
    Width = 590
    Height = 41
    Align = alBottom
    TabOrder = 0
    object BtnGravar: TButton
      Left = 401
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Gravar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnGravarClick
    end
    object btnSair: TButton
      Left = 482
      Top = 5
      Width = 75
      Height = 25
      Caption = 'Sair'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnSairClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 0
    Width = 590
    Height = 425
    Align = alClient
    TabOrder = 1
    object lbEmail: TLabel
      Left = 273
      Top = 49
      Width = 28
      Height = 13
      Caption = 'Email:'
    end
    object lbTelefone: TLabel
      Left = 141
      Top = 49
      Width = 46
      Height = 13
      Caption = 'Telefone:'
    end
    object lbCPF: TLabel
      Left = 13
      Top = 49
      Width = 23
      Height = 13
      Caption = 'CPF:'
    end
    object lbIdentidade: TLabel
      Left = 452
      Top = 10
      Width = 56
      Height = 13
      Caption = 'Identidade:'
    end
    object lbNome: TLabel
      Left = 13
      Top = 10
      Width = 31
      Height = 13
      Caption = 'Nome:'
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 272
      Width = 588
      Height = 152
      Align = alBottom
      DataSource = DsDados
      TabOrder = 6
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 88
      Width = 565
      Height = 183
      Caption = 'Endere'#231'o'
      TabOrder = 5
      object Label2: TLabel
        Left = 13
        Top = 20
        Width = 104
        Height = 13
        Caption = 'CEP  - (F3 - Pesquisa)'
      end
      object lbPais: TLabel
        Left = 13
        Top = 141
        Width = 23
        Height = 13
        Caption = 'Pa'#237's:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbBairro: TLabel
        Left = 13
        Top = 102
        Width = 32
        Height = 13
        Caption = 'Bairro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbComplemento: TLabel
        Left = 146
        Top = 63
        Width = 69
        Height = 13
        Caption = 'Complemento:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbNumero: TLabel
        Left = 13
        Top = 63
        Width = 41
        Height = 13
        Caption = 'N'#250'mero:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbLogradouro: TLabel
        Left = 146
        Top = 20
        Width = 59
        Height = 13
        Caption = 'Logradouro:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbEstado: TLabel
        Left = 399
        Top = 102
        Width = 37
        Height = 13
        Caption = 'Estado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object lbCidade: TLabel
        Left = 181
        Top = 102
        Width = 37
        Height = 13
        Caption = 'Cidade:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cbEstado: TDBComboBox
        Left = 399
        Top = 117
        Width = 71
        Height = 21
        DataField = 'ESTADO'
        DataSource = DsDados
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'AC'
          'AL'
          'AP'
          'AM'
          'BA'
          'CE'
          'DF'
          'ES'
          'GO'
          'MA'
          'MT'
          'MS'
          'MG'
          'PA'
          'PB'
          'PR'
          'PE'
          'PI'
          'RJ'
          'RN'
          'RS'
          'RO'
          'RR'
          'SC'
          'SP'
          'SE'
          'TO')
        ParentFont = False
        TabOrder = 6
      end
      object edtPais: TDBEdit
        Left = 13
        Top = 155
        Width = 348
        Height = 21
        DataField = 'PAIS'
        DataSource = DsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 7
      end
      object edtCidade: TDBEdit
        Left = 181
        Top = 117
        Width = 196
        Height = 21
        DataField = 'CIDADE'
        DataSource = DsDados
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object edtBairro: TDBEdit
        Left = 13
        Top = 117
        Width = 145
        Height = 21
        DataField = 'BAIRRO'
        DataSource = DsDados
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object edtCompl: TDBEdit
        Left = 146
        Top = 80
        Width = 308
        Height = 21
        DataField = 'COMPLEMENTO'
        DataSource = DsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object edtNumero: TDBEdit
        Left = 13
        Top = 80
        Width = 120
        Height = 21
        DataField = 'NUMERO'
        DataSource = DsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object edtLogradouro: TDBEdit
        Left = 146
        Top = 36
        Width = 405
        Height = 21
        DataField = 'LOGRADOURO'
        DataSource = DsDados
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object edtCEP: TDBEdit
        Left = 13
        Top = 36
        Width = 120
        Height = 21
        DataField = 'CEP'
        DataSource = DsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = edtCEPKeyDown
      end
    end
    object edtEmail: TDBEdit
      Left = 273
      Top = 66
      Width = 303
      Height = 21
      DataField = 'EMAIL'
      DataSource = DsDados
      TabOrder = 4
    end
    object edtTelefone: TDBEdit
      Left = 141
      Top = 66
      Width = 122
      Height = 21
      DataField = 'TELEFONE'
      DataSource = DsDados
      TabOrder = 3
    end
    object edtCPF: TDBEdit
      Left = 13
      Top = 66
      Width = 117
      Height = 21
      DataField = 'CPF'
      DataSource = DsDados
      TabOrder = 2
    end
    object edtIdentidade: TDBEdit
      Left = 452
      Top = 25
      Width = 124
      Height = 21
      DataField = 'IDENTIDADE'
      DataSource = DsDados
      TabOrder = 1
    end
    object edtNome: TDBEdit
      Left = 13
      Top = 25
      Width = 429
      Height = 21
      DataField = 'NOME'
      DataSource = DsDados
      TabOrder = 0
    end
  end
  object DsDados: TDataSource
    AutoEdit = False
    DataSet = cdsDados
    Left = 80
    Top = 304
  end
  object cdsDados: TClientDataSet
    Aggregates = <>
    ObjectView = False
    Params = <>
    Left = 32
    Top = 304
    object cdsDadosNOME: TStringField
      FieldName = 'NOME'
      Size = 40
    end
    object cdsDadosIDENTIDADE: TStringField
      FieldName = 'IDENTIDADE'
    end
    object cdsDadosCPF: TStringField
      FieldName = 'CPF'
      EditMask = '999\.999\.999\-99;1;_'
    end
    object cdsDadosTELEFONE: TStringField
      FieldName = 'TELEFONE'
    end
    object cdsDadosEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 60
    end
    object cdsDadosCEP: TStringField
      FieldName = 'CEP'
      EditMask = '99\.999\-999;1;_'
      Size = 10
    end
    object cdsDadosLOGRADOURO: TStringField
      FieldName = 'LOGRADOURO'
      Size = 100
    end
    object cdsDadosNUMERO: TStringField
      FieldName = 'NUMERO'
    end
    object cdsDadosCOMPLEMENTO: TStringField
      FieldName = 'COMPLEMENTO'
      Size = 40
    end
    object cdsDadosBAIRRO: TStringField
      FieldName = 'BAIRRO'
    end
    object cdsDadosCIDADE: TStringField
      FieldName = 'CIDADE'
    end
    object cdsDadosESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 5
    end
    object cdsDadosPAIS: TStringField
      FieldName = 'PAIS'
      Size = 40
    end
  end
end
