program GIF_Image;

uses
  Forms,
  main in 'main.pas' {FormAnimate};

{$R *.RES}

begin
  Application.Initialize;
  Application.CreateForm(TFormAnimate, FormAnimate);
  Application.Run;
end.
