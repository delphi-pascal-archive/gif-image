object FormAnimate: TFormAnimate
  Left = 233
  Top = 129
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Convert BMP to GIF'
  ClientHeight = 426
  ClientWidth = 409
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'Arial'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object PanelPreview: TPanel
    Left = 0
    Top = 0
    Width = 409
    Height = 353
    Align = alTop
    BevelOuter = bvLowered
    Caption = ' '
    TabOrder = 0
    object Image1: TImage
      Left = 1
      Top = 1
      Width = 407
      Height = 351
      Align = alClient
      Center = True
      Transparent = True
    end
  end
  object Button1: TButton
    Left = 8
    Top = 392
    Width = 393
    Height = 25
    Caption = 'Convert BMP to GIF'
    TabOrder = 1
    OnClick = Button1Click
  end
  object CheckBox1: TCheckBox
    Left = 8
    Top = 368
    Width = 137
    Height = 17
    Caption = 'Transparent color'
    TabOrder = 2
  end
  object ColorBox1: TColorBox
    Left = 160
    Top = 360
    Width = 241
    Height = 22
    ItemHeight = 16
    TabOrder = 3
  end
end
