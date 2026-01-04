unit UNapovedaTym;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFNapovedaTym = class(TForm)
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
  FNapovedaTym: TFNapovedaTym;

implementation

uses UTym;

{$R *.dfm}

procedure TFNapovedaTym.IZpetClick(Sender: TObject);
begin
  FTym.Visible := True;
  FNapovedaTym.Visible := False;
end;

procedure TFNapovedaTym.IZpetMouseEnter(Sender: TObject);
begin
IZpet.Picture.LoadFromFile('grafika\BUTTON\BUTTON_ZPET.jpg');
end;

procedure TFNapovedaTym.IZpetMouseLeave(Sender: TObject);
begin
IZpet.Picture.Assign(nil);
end;

end.
