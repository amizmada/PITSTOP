unit UMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFMenu = class(TForm)
    IBackground: TImage;
    IZavodit: TImage;
    IJakHrat: TImage;
    IUkoncitHru: TImage;
    procedure IZavoditMouseEnter(Sender: TObject);
    procedure IZavoditMouseLeave(Sender: TObject);
    procedure IUkoncitHruClick(Sender: TObject);
    procedure IZavoditClick(Sender: TObject);
    procedure IJakHratMouseEnter(Sender: TObject);
    procedure IUkoncitHruMouseEnter(Sender: TObject);
    procedure IJakHratMouseLeave(Sender: TObject);
    procedure IUkoncitHruMouseLeave(Sender: TObject);
    procedure IJakHratClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu: TFMenu;

implementation

uses UTym, UVyberHry, UJakHrat, UOkruh;

{$R *.dfm}

procedure TFMenu.IJakHratClick(Sender: TObject);
begin
  FJakHrat.Visible:=True;
  FMenu.Visible:=False;
end;

procedure TFMenu.IJakHratMouseEnter(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU_JAKHRAT.jpg');
end;

procedure TFMenu.IUkoncitHruClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFMenu.IUkoncitHruMouseEnter(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU_UKONCITHRU.jpg');
end;

procedure TFMenu.IUkoncitHruMouseLeave(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU.jpg');
end;

procedure TFMenu.IJakHratMouseLeave(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU.jpg');
end;

procedure TFMenu.IZavoditClick(Sender: TObject);
begin
FVyberHry.Visible := True;
FMenu.Visible := False;
end;

procedure TFMenu.IZavoditMouseEnter(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU_ZAVODIT.jpg');
end;

procedure TFMenu.IZavoditMouseLeave(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU.jpg');
end;

end.
