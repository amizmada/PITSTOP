unit UMenu2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFMenu2 = class(TForm)
    IBackground: TImage;
    IZavodit: TImage;
    IJakHrat: TImage;
    IUkoncitHru: TImage;
    procedure IJakHratClick(Sender: TObject);
    procedure IJakHratMouseEnter(Sender: TObject);
    procedure IUkoncitHruClick(Sender: TObject);
    procedure IUkoncitHruMouseEnter(Sender: TObject);
    procedure IUkoncitHruMouseLeave(Sender: TObject);
    procedure IJakHratMouseLeave(Sender: TObject);
    procedure IZavoditClick(Sender: TObject);
    procedure IZavoditMouseEnter(Sender: TObject);
    procedure IZavoditMouseLeave(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FMenu2: TFMenu2;

implementation

uses UJakHrat2;

{$R *.dfm}

procedure TFMenu2.IJakHratClick(Sender: TObject);
begin
  FJakHrat2.Visible:=True;
  FMenu2.Visible:=False;
end;

procedure TFMenu2.IJakHratMouseEnter(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU_JAKHRAT.jpg');
end;

procedure TFMenu2.IJakHratMouseLeave(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU.jpg');
end;

procedure TFMenu2.IUkoncitHruClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TFMenu2.IUkoncitHruMouseEnter(Sender: TObject);
begin
IBackground.Picture.LoadFromFile('grafika\MENU\MENU_UKONCITHRU.jpg');
end;

procedure TFMenu2.IUkoncitHruMouseLeave(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU.jpg');
end;
procedure TFMenu2.IZavoditClick(Sender: TObject);
begin
  FMenu2.Visible := False;
end;

procedure TFMenu2.IZavoditMouseEnter(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU_ZAVODIT.jpg');
end;

procedure TFMenu2.IZavoditMouseLeave(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\MENU\MENU.jpg');
end;

end.
