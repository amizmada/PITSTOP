unit UNapovedaLights;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFNapovedaLights = class(TForm)
    IBackground: TImage;
    IZpet: TImage;
    procedure IZpetMouseEnter(Sender: TObject);
    procedure IZpetMouseLeave(Sender: TObject);
    procedure IZpetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNapovedaLights: TFNapovedaLights;

implementation

uses ULights;

{$R *.dfm}

procedure TFNapovedaLights.IZpetClick(Sender: TObject);
begin
  FLights.Visible := True;
  FNapovedaLights.Visible := False;
end;

procedure TFNapovedaLights.IZpetMouseEnter(Sender: TObject);
begin
  IZpet.Picture.LoadFromFile('grafika\BUTTON\BUTTON_ZPET.jpg');
end;

procedure TFNapovedaLights.IZpetMouseLeave(Sender: TObject);
begin
  IZpet.Picture.Assign(nil);
end;

end.
