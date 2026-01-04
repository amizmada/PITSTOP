unit UNapovedaPneumatiky;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFNapovedaPneumatiky = class(TForm)
    IBackground: TImage;
    IZpet: TImage;
    procedure IZpetMouseLeave(Sender: TObject);
    procedure IZpetMouseEnter(Sender: TObject);
    procedure IZpetClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FNapovedaPneumatiky: TFNapovedaPneumatiky;

implementation

uses UPneumatiky;

{$R *.dfm}

procedure TFNapovedaPneumatiky.IZpetClick(Sender: TObject);
begin
  FPneumatiky.Visible := True;
  FNapovedaPneumatiky.Visible := False;
end;

procedure TFNapovedaPneumatiky.IZpetMouseEnter(Sender: TObject);
begin
  IZpet.Picture.LoadFromFile('grafika\BUTTON\BUTTON_ZPET.jpg');
end;

procedure TFNapovedaPneumatiky.IZpetMouseLeave(Sender: TObject);
begin
  IZpet.Picture.Assign(nil);
end;

end.
