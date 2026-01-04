unit UPneumatiky;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFPneumatiky = class(TForm)
    IBackground: TImage;
    ISoft: TImage;
    IMedium: TImage;
    IHard: TImage;
    IIntermediate: TImage;
    IWet: TImage;
    IMenu: TImage;
    IPokracovat: TImage;
    INapoveda: TImage;
    LPneu: TLabel;
    procedure ISoftClick(Sender: TObject);
    procedure IMediumClick(Sender: TObject);
    procedure IHardClick(Sender: TObject);
    procedure IIntermediateClick(Sender: TObject);
    procedure IWetClick(Sender: TObject);
    procedure INapovedaMouseEnter(Sender: TObject);
    procedure INapovedaMouseLeave(Sender: TObject);
    procedure IPokracovatMouseEnter(Sender: TObject);
    procedure IPokracovatMouseLeave(Sender: TObject);
    procedure IMenuMouseEnter(Sender: TObject);
    procedure IMenuMouseLeave(Sender: TObject);
    procedure IPokracovatClick(Sender: TObject);
    procedure INapovedaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IMenuClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FPneumatiky: TFPneumatiky;
  pneu: integer;


implementation

uses ULights, UNapovedaPneumatiky, UMenu2;

{$R *.dfm}

procedure TFPneumatiky.FormCreate(Sender: TObject);
begin
  AddFontResource('grafika\grafika\fonts\RadiateSans\Radiate Sans Semi Bold Expanded.ttf') ;
  SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
end;

procedure TFPneumatiky.FormDestroy(Sender: TObject);
begin
  RemoveFontResource('grafika\grafika\fonts\RadiateSans\Radiate Sans Semi Bold Expanded.ttf') ;
  SendMessage(HWND_BROADCAST, WM_FONTCHANGE, 0, 0) ;
end;

procedure TFPneumatiky.FormShow(Sender: TObject);
begin
  pneu := 0;
  IBackground.Picture.LoadFromFile('grafika\PNEUMATIKY\PNEUMATIKY.jpg');
end;

procedure TFPneumatiky.IHardClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\PNEUMATIKY\PNEUMATIKY_hard.jpg');
  pneu:=3;
end;

procedure TFPneumatiky.IIntermediateClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\PNEUMATIKY\PNEUMATIKY_intermediate.jpg');
  pneu:=4;
end;

procedure TFPneumatiky.IPokracovatClick(Sender: TObject);
begin
  if pneu = 0 then LPneu.Visible := True
  else
  begin
  LPneu.Visible := False;
  FLights.Visible := True;
  FPneumatiky.Visible := False;
  end;
end;

procedure TFPneumatiky.IPokracovatMouseEnter(Sender: TObject);
begin
  IPokracovat.Picture.LoadFromFile('grafika\BUTTON\BUTTON_POKRACOVAT.jpg');
end;

procedure TFPneumatiky.IPokracovatMouseLeave(Sender: TObject);
begin
  IPokracovat.Picture.Assign(nil);
end;

procedure TFPneumatiky.INapovedaClick(Sender: TObject);
begin
  FNapovedaPneumatiky.Visible := True;
  FPneumatiky.Visible := False;
end;

procedure TFPneumatiky.INapovedaMouseEnter(Sender: TObject);
begin
  INapoveda.Picture.LoadFromFile('grafika\BUTTON\BUTTON_NAPOVEDA.jpg');
end;

procedure TFPneumatiky.INapovedaMouseLeave(Sender: TObject);
begin
  INapoveda.Picture.Assign(nil);
end;

procedure TFPneumatiky.IMediumClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\PNEUMATIKY\PNEUMATIKY_medium.jpg');
  pneu:=2;
end;

procedure TFPneumatiky.IMenuClick(Sender: TObject);
begin
  FMenu2.Visible:=True;
end;

procedure TFPneumatiky.IMenuMouseEnter(Sender: TObject);
begin
  IMenu.Picture.LoadFromFile('grafika\BUTTON\BUTTON_MENU.jpg');
end;

procedure TFPneumatiky.IMenuMouseLeave(Sender: TObject);
begin
  IMenu.Picture.Assign(nil);
end;

procedure TFPneumatiky.ISoftClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\PNEUMATIKY\PNEUMATIKY_soft.jpg');
  pneu:=1;
end;

procedure TFPneumatiky.IWetClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\PNEUMATIKY\PNEUMATIKY_wet.jpg');
  pneu:=5;
end;

end.
