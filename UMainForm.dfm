object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088
  ClientHeight = 115
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RNDGroupBox: TGroupBox
    Left = -2
    Top = 0
    Width = 245
    Height = 113
    Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1095#1080#1089#1083#1072
    TabOrder = 0
    object ResultLabel: TLabel
      Left = 16
      Top = 21
      Width = 57
      Height = 21
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090':'
    end
    object RangeLabel: TLabel
      Left = 16
      Top = 48
      Width = 57
      Height = 21
      Caption = #1047#1072#1090#1088#1072#1074#1082#1072':'
    end
    object OutputEdit: TEdit
      Left = 79
      Top = 18
      Width = 130
      Height = 21
      NumbersOnly = True
      TabOrder = 0
      Text = '0'
    end
    object GenerateButton: TButton
      Left = 16
      Top = 75
      Width = 193
      Height = 30
      Caption = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = GenerateButtonClick
    end
    object RangeEdit: TEdit
      Left = 79
      Top = 45
      Width = 130
      Height = 21
      NumbersOnly = True
      TabOrder = 2
      Text = '10'
    end
  end
end
