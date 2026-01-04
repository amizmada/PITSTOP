unit ULights;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFLights = class(TForm)
    IBackground: TImage;
    Timer1: TTimer;
    Timer2: TTimer;
    IMenu: TImage;
    LTime: TLabel;
    IPokracovat: TImage;
    INapoveda: TImage;
    Timer3: TTimer;
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure Timer1Timer(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure IMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure IMenuMouseEnter(Sender: TObject);
    procedure IMenuMouseLeave(Sender: TObject);
    procedure INapovedaMouseEnter(Sender: TObject);
    procedure INapovedaMouseLeave(Sender: TObject);
    procedure IPokracovatMouseEnter(Sender: TObject);
    procedure IPokracovatMouseLeave(Sender: TObject);
    procedure IPokracovatClick(Sender: TObject);
    procedure INapovedaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FLights: TFLights;
  t0, jump: tdatetime;
  h,m,s,ms: word;
  h1,m1,s1,ms1: word;
  lightsout, lights: integer;

implementation

uses UMenu, UZavod, UNapovedaLights;

{$R *.dfm}

procedure TFLights.FormCreate(Sender: TObject);
begin
 AddFontResource('grafika\grafika\fonts\RadiateSans\Radiate Sans Semi Bold Expanded.ttf') ;
   SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
end;

procedure TFLights.FormDestroy(Sender: TObject);
begin
  RemoveFontResource('grafika\grafika\fonts\RadiateSans\Radiate Sans Semi Bold Expanded.ttf') ;
  SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
end;

procedure TFLights.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  Timer1.Enabled := True;

  if (Timer2.Enabled = False) and (lights = 0) then
  else
  if lights <= 5 then
      begin
      LTime.Caption := 'MOC BRZY!';
      lightsout := 4;
      Timer1.Enabled := False;
      Timer2.Enabled := False;
      Timer3.Enabled := True;
      end
  else
      begin
      Timer3.Enabled := True;
      decodetime(now - t0,h,m,s,ms);
      LTime.Caption := inttostr(s)+'.'+inttostr(ms);
      if s > 1 then begin
                    lightsout := 3;
                    end
                    else if ms > 450 then begin
                                          lightsout := 2;
                                          end
                                          else begin
                                                lightsout := 1;
                                                end;
    end;

end;

procedure TFLights.FormShow(Sender: TObject);
begin
  LTime.Caption := '0.000';
  lights := 0;
  Timer1.Enabled := False;
  Timer2.Enabled := False;
  Timer3.Enabled := False;
end;

procedure TFLights.IMenuClick(Sender: TObject);
begin
  FLights.Visible := False;
  FMenu.Visible := True;
end;

procedure TFLights.IMenuMouseEnter(Sender: TObject);
begin
  IMenu.Picture.LoadFromFile('grafika\BUTTON\BUTTON_MENU.jpg');
end;

procedure TFLights.IMenuMouseLeave(Sender: TObject);
begin
  IMenu.Picture.Assign(nil);
end;

procedure TFLights.INapovedaClick(Sender: TObject);
begin
  FNapovedaLights.Visible := True;
  FLights.Visible := False;
end;

procedure TFLights.INapovedaMouseEnter(Sender: TObject);
begin
  INapoveda.Picture.LoadFromFile('grafika\BUTTON\BUTTON_NAPOVEDA.jpg');
end;

procedure TFLights.INapovedaMouseLeave(Sender: TObject);
begin
  INapoveda.Picture.Assign(nil);
end;

procedure TFLights.IPokracovatClick(Sender: TObject);
begin
  FZavod.Visible := True;
  FLights.Visible := False;
end;

procedure TFLights.IPokracovatMouseEnter(Sender: TObject);
begin
  IPokracovat.Picture.LoadFromFile('grafika\BUTTON\BUTTON_POKRACOVAT.jpg');
end;

procedure TFLights.IPokracovatMouseLeave(Sender: TObject);
begin
  IPokracovat.Picture.Assign(nil);
end;

procedure TFLights.Timer1Timer(Sender: TObject);
begin
  lights := lights + 1;

  case lights of
  1: IBackground.Picture.LoadFromFile('grafika\LIGHTS\LIGHTS_2.jpg');
  2: IBackground.Picture.LoadFromFile('grafika\LIGHTS\LIGHTS_3.jpg');
  3: IBackground.Picture.LoadFromFile('grafika\LIGHTS\LIGHTS_4.jpg');
  4: IBackground.Picture.LoadFromFile('grafika\LIGHTS\LIGHTS_5.jpg');
  5:  begin
      IBackground.Picture.LoadFromFile('grafika\LIGHTS\LIGHTS_6.jpg');
      Timer2.Enabled := True;
      Timer1.Enabled := False;
      end;

  end;

end;

procedure TFLights.Timer2Timer(Sender: TObject);
begin
  lights := lights + 1;
  IBackground.Picture.LoadFromFile('grafika\LIGHTS\LIGHTS_1.jpg');
  t0 := now;
end;

procedure TFLights.Timer3Timer(Sender: TObject);
begin
  FZavod.Visible := True;
  FLights.Visible := False;
  Timer3.Enabled := False;
end;

end.
