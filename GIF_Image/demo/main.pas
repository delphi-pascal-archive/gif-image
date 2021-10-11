unit main;
////////////////////////////////////////////////////////////////////////////////
//                                                                            //
// Project:	TGIFImage demo application.                                   //
// Description:	Simple GIF Animation Builder.                                 //
// Copyright	(c) 1997-2008 Anders Melander.                                //
// All rights reserved.                                          //
//                                                                            //
////////////////////////////////////////////////////////////////////////////////
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls, ComCtrls, GIFImage;

type
  TFormAnimate = class(TForm)
    PanelPreview: TPanel;
    Image1: TImage;
    Button1: TButton;
    CheckBox1: TCheckBox;
    ColorBox1: TColorBox;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAnimate: TFormAnimate;

implementation

{$R *.DFM}

procedure ConvertBMP2GIF;
var
 bmp: TBitmap;
 gif: TGIFImage;
 SubImage: TGIFsubImage;
 Ext: TGIFGraphicControlExtension;
begin
 gif:=TGifImage.Create;

 try
  bmp:=TBitmap.Create;

  try
   bmp.LoadFromFile('MyBitmap.bmp');
   gif.Assign(bmp);

   if FormAnimate.CheckBox1.Checked
   then
    begin
     Subimage:=gif.Images[0];
     Subimage.ColorMap.Optimize;

     Ext:=TGIFGraphicControlExtension.Create(Subimage);
     Ext.Transparent:=true;
     Ext.TransparentColor:=clBlack;

     Subimage.Extensions.Add(Ext);
    end;
  finally
   bmp.Free;
  end;

  gif.SaveToFile('MyBitmap.gif');
 finally
  gif.Free;
 end;
end;

procedure TFormAnimate.Button1Click(Sender: TObject);
begin
 ConvertBMP2GIF;
end;

procedure TFormAnimate.FormCreate(Sender: TObject);
begin
 Image1.Picture.Bitmap.LoadFromFile('MyBitmap.bmp');
end;

end.

