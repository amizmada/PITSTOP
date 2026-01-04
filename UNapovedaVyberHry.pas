unit UNapovedaVyberHry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFNapovedaVyberHry = class(TForm)
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
  FNapovedaVyberHry: TFNapovedaVyberHry;

implementation

uses UVyberHry;

{$R *.dfm}

procedure TFNapovedaVyberHry.IZpetClick(Sender: TObject);
begin
  FVyberHry.Visible := True;
  FNapovedaVyberHry.Visible := False;
end;

procedure TFNapovedaVyberHry.IZpetMouseEnter(Sender: TObject);
begin
  IZpet.Picture.LoadFromFile('grafika\BUTTON\BUTTON_ZPET.jpg');
end;

procedure TFNapovedaVyberHry.IZpetMouseLeave(Sender: TObject);
begin
  IZpet.Picture.Assign(nil);
end;

end.
