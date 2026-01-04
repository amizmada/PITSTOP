unit UOpen;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, jpeg, ExtCtrls, MPlayer;

type
  TFOpen = class(TForm)
    IBackground: TImage;
    MediaPlayer1: TMediaPlayer;
    procedure IBackgroundClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOpen: TFOpen;

implementation

uses UMenu, UOkruh, UTym, UPneumatiky, ULights, UZavod;

{$R *.dfm}

procedure TFOpen.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  FMenu.Visible:=True;
  FOpen.Visible:=False;
end;

procedure TFOpen.FormShow(Sender: TObject);
begin
  okruh := 1;
  pneu := 0;
  lightsout := 0;
  FZavod.TimerZavod.Enabled := False;
  FLights.Timer1.Enabled := False;
  FLights.Timer2.Enabled := False;
  FLights.Timer3.Enabled := False;
  MediaPlayer1.Open;
  MediaPlayer1.Play;
end;

procedure TFOpen.IBackgroundClick(Sender: TObject);
begin
  FMenu.Visible:=True;
  FOpen.Visible:=False;
end;

end.
