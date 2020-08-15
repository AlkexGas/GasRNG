object MainForm: TMainForm
  Left = 0
  Top = 0
  Caption = #1043#1077#1085#1077#1088#1072#1090#1086#1088
  ClientHeight = 120
  ClientWidth = 256
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnResize = FormResize
  PixelsPerInch = 96
  TextHeight = 13
  object RNDGroupBox: TGroupBox
    AlignWithMargins = True
    Left = 4
    Top = 4
    Width = 248
    Height = 112
    Margins.Left = 4
    Margins.Top = 4
    Margins.Right = 4
    Margins.Bottom = 4
    Align = alClient
    Caption = #1043#1077#1085#1077#1088#1072#1094#1080#1103' '#1095#1080#1089#1083#1072
    TabOrder = 0
    ExplicitLeft = -1
    ExplicitTop = -1
    ExplicitWidth = 241
    DesignSize = (
      248
      112)
    object ResultLabel: TLabel
      Left = 16
      Top = 21
      Width = 57
      Height = 13
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090':'
    end
    object RangeLabel: TLabel
      Left = 16
      Top = 48
      Width = 52
      Height = 13
      Caption = #1047#1072#1090#1088#1072#1074#1082#1072':'
    end
    object OutputEdit: TEdit
      Left = 79
      Top = 18
      Width = 158
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      NumbersOnly = True
      ReadOnly = True
      TabOrder = 0
      Text = '0'
      ExplicitWidth = 130
    end
    object GenerateButton: TButton
      Left = 16
      Top = 72
      Width = 105
      Height = 30
      Caption = #1043#1077#1085#1077#1088#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 1
      OnClick = GenerateButtonClick
    end
    object RangeEdit: TEdit
      Left = 79
      Top = 45
      Width = 158
      Height = 21
      Anchors = [akLeft, akTop, akRight]
      NumbersOnly = True
      TabOrder = 2
      Text = '10'
    end
    object CopyButton: TButton
      Left = 136
      Top = 72
      Width = 101
      Height = 30
      Caption = #1050#1086#1087#1080#1088#1086#1074#1072#1090#1100
      TabOrder = 3
      OnClick = CopyButtonClick
    end
  end
end
