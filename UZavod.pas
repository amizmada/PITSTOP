unit UZavod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, MPlayer;

type
  TFZavod = class(TForm)
    IBackground: TImage;
    IMenu: TImage;
    TimerZavod: TTimer;
    IFormule: TImage;
    IPokracovat: TImage;
    MediaPlayer2: TMediaPlayer;
    procedure IMenuClick(Sender: TObject);
    procedure TimerZavodTimer(Sender: TObject);
    procedure IPokracovatClick(Sender: TObject);
    procedure IPokracovatMouseEnter(Sender: TObject);
    procedure IPokracovatMouseLeave(Sender: TObject);
    procedure IMenuMouseEnter(Sender: TObject);
    procedure IMenuMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FZavod: TFZavod;
  ImageTargetLeft:real;

implementation

uses UMenu, UVysledkyZavodu, UTym, UOkruh, UMenu2;

{$R *.dfm}

procedure TFZavod.IPokracovatClick(Sender: TObject);
begin
  FVysledkyZavodu.Visible:=True;
  FZavod.Visible:=False;
end;

procedure TFZavod.IPokracovatMouseEnter(Sender: TObject);
begin
  IPokracovat.Picture.LoadFromFile('grafika\BUTTON\BUTTON_POKRACOVAT.jpg');
end;

procedure TFZavod.IPokracovatMouseLeave(Sender: TObject);
begin
  IPokracovat.Picture.Assign(nil);
end;

procedure TFZavod.FormShow(Sender: TObject);
begin
  IFormule.Left := 130;
  FZavod.DoubleBuffered := True;
  TimerZavod.Enabled := True;

  case okruh of
  1: IBackground.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_1.jpg');
  2: IBackground.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_2.jpg');
  3: IBackground.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_3.jpg');
  4: IBackground.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_4.jpg');
  5: IBackground.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_5.jpg');
  6: IBackground.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_6.jpg');
  7: IBackground.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_7.jpg');
  8: IBackground.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_8.jpg');
  9: IBackground.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_9.jpg');
  end;

  case tym of
  1: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_ALFAROMEO.jpg');
  2: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_ALPHATAURI.jpg');
  3: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_ALPINE.jpg');
  4: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_ASTONMARTIN.jpg');
  5: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_FERRARI.jpg');
  6: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_HAAS.jpg');
  7: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_MCLAREN.jpg');
  8: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_MERCEDES.jpg');
  9: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_REDBULL.jpg');
  10: IFormule.Picture.LoadFromFile('GRAFIKA\ZAVOD\ZAVOD_WILLIAMS.jpg');
  end;

  MediaPlayer2.Open;
  MediaPlayer2.Play;

end;

procedure TFZavod.IMenuClick(Sender: TObject);
begin
  FMenu2.Visible:=True;
end;

procedure TFZavod.IMenuMouseEnter(Sender: TObject);
begin
  IMenu.Picture.LoadFromFile('grafika\BUTTON\BUTTON_MENU.jpg');
end;

procedure TFZavod.IMenuMouseLeave(Sender: TObject);
begin
  IMenu.Picture.Assign(nil);
end;

procedure TFZavod.TimerZavodTimer(Sender: TObject);
begin
  ImageTargetLeft := 1395;
  IFormule.Left := IFormule.Left + 3;
  if IFormule.Left >= ImageTargetLeft then
    TimerZavod.Enabled := False;
end;

end.
