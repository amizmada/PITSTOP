unit UVyberHry;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFVyberHry = class(TForm)
    IBackground: TImage;
    IZavod: TImage;
    ISezona: TImage;
    IMenu: TImage;
    INapoveda: TImage;
    procedure IZavodMouseEnter(Sender: TObject);
    procedure IZavodMouseLeave(Sender: TObject);
    procedure ISezonaMouseEnter(Sender: TObject);
    procedure ISezonaMouseLeave(Sender: TObject);
    procedure IMenuClick(Sender: TObject);
    procedure IZavodClick(Sender: TObject);
    procedure ISezonaClick(Sender: TObject);
    procedure INapovedaMouseEnter(Sender: TObject);
    procedure INapovedaMouseLeave(Sender: TObject);
    procedure IMenuMouseEnter(Sender: TObject);
    procedure IMenuMouseLeave(Sender: TObject);
    procedure INapovedaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVyberHry: TFVyberHry;
  ZAVOD, SEZONA: boolean;


implementation

uses UMenu, UTym, UOkruh, UNapovedaVyberHry;

{$R *.dfm}

procedure TFVyberHry.IMenuClick(Sender: TObject);
begin
  FMenu.Visible:=True;
  FTym.Visible:=False;
end;

procedure TFVyberHry.IMenuMouseEnter(Sender: TObject);
begin
  IMenu.Picture.LoadFromFile('grafika\BUTTON\BUTTON_MENU.jpg');
end;

procedure TFVyberHry.IMenuMouseLeave(Sender: TObject);
begin
  IMenu.Picture.Assign(nil);
end;

procedure TFVyberHry.INapovedaClick(Sender: TObject);
begin
  FNapovedaVyberHry.Visible := True;
  FVyberHry.Visible := False;
end;

procedure TFVyberHry.INapovedaMouseEnter(Sender: TObject);
begin
  INapoveda.Picture.LoadFromFile('grafika\BUTTON\BUTTON_NAPOVEDA.jpg');
end;

procedure TFVyberHry.INapovedaMouseLeave(Sender: TObject);
begin
  INapoveda.Picture.Assign(nil);
end;

procedure TFVyberHry.ISezonaClick(Sender: TObject);
begin
  SEZONA := True;
  ZAVOD := False;
  FTym.Visible:=True;
  FVyberHry.Visible:=False;
end;

procedure TFVyberHry.ISezonaMouseEnter(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\VYBERHRY\VYBERHRY_SEZONA.jpg');
end;

procedure TFVyberHry.ISezonaMouseLeave(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\VYBERHRY\VYBERHRY.jpg');
end;

procedure TFVyberHry.IZavodClick(Sender: TObject);
begin
  ZAVOD := True;
  SEZONA := False;
  FTym.Visible:=True;
  FVyberHry.Visible:=False;
end;

procedure TFVyberHry.IZavodMouseEnter(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\VYBERHRY\VYBERHRY_ZAVOD.jpg');
end;

procedure TFVyberHry.IZavodMouseLeave(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\VYBERHRY\VYBERHRY.jpg');
end;

end.
