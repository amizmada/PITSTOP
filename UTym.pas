unit UTym;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFTym = class(TForm)
    IBackground: TImage;
    IRedBull: TImage;
    IMercedes: TImage;
    IFerrari: TImage;
    IAstonMartin: TImage;
    IMcLaren: TImage;
    IAlpine: TImage;
    IAlphaTauri: TImage;
    IHaas: TImage;
    IWilliams: TImage;
    IAlfaRomeo: TImage;
    IMenu: TImage;
    IPokracovat: TImage;
    INapoveda: TImage;
    procedure IRedBullClick(Sender: TObject);
    procedure IMercedesClick(Sender: TObject);
    procedure IFerrariClick(Sender: TObject);
    procedure IAstonMartinClick(Sender: TObject);
    procedure IMcLarenClick(Sender: TObject);
    procedure IAlpineClick(Sender: TObject);
    procedure IAlphaTauriClick(Sender: TObject);
    procedure IHaasClick(Sender: TObject);
    procedure IWilliamsClick(Sender: TObject);
    procedure IAlfaRomeoClick(Sender: TObject);
    procedure IMenuClick(Sender: TObject);
    procedure IMenuMouseEnter(Sender: TObject);
    procedure IMenuMouseLeave(Sender: TObject);
    procedure IPokracovatClick(Sender: TObject);
    procedure IPokracovatMouseEnter(Sender: TObject);
    procedure INapovedaMouseEnter(Sender: TObject);
    procedure INapovedaMouseLeave(Sender: TObject);
    procedure IPokracovatMouseLeave(Sender: TObject);
    procedure INapovedaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FTym: TFTym;
  tym:integer;


implementation

uses UMenu, UZavod, UOkruh, UNapovedaTym;

{$R *.dfm}

procedure TFTym.FormShow(Sender: TObject);
begin
  tym:=9;
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_REDBULL.jpg');
end;

procedure TFTym.IAlfaRomeoClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_ALFAROMEO.jpg');
  tym := 1;
end;

procedure TFTym.IAlphaTauriClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_ALPHATAURI.jpg');
  tym := 2;
end;

procedure TFTym.IAlpineClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_ALPINE.jpg');
  tym := 3;
end;

procedure TFTym.IAstonMartinClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_ASTONMARTIN.jpg');
  tym := 4;
end;

procedure TFTym.IFerrariClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_FERRARI.jpg');
  tym := 5;
end;

procedure TFTym.IHaasClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_HAAS.jpg');
  tym := 6;
end;

procedure TFTym.IMcLarenClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_MCLAREN.jpg');
  tym := 7;
end;

procedure TFTym.IMenuClick(Sender: TObject);
begin
  FTym.Visible:=False;
  FMenu.Visible:=True;
end;

procedure TFTym.IMenuMouseEnter(Sender: TObject);
begin
  IMenu.Picture.LoadFromFile('grafika\BUTTON\BUTTON_MENU.jpg');
end;

procedure TFTym.IMenuMouseLeave(Sender: TObject);
begin
  IMenu.Picture.Assign(nil);
end;

procedure TFTym.IMercedesClick(Sender: TObject);
begin
 IBackground.Picture.LoadFromFile('grafika\TYM\TYM_MERCEDES.jpg');
 tym := 8;
end;

procedure TFTym.INapovedaClick(Sender: TObject);
begin
  FNapovedaTym.Visible := True;
  FTym.Visible := False;
end;

procedure TFTym.INapovedaMouseEnter(Sender: TObject);
begin
  INapoveda.Picture.LoadFromFile('grafika\BUTTON\BUTTON_NAPOVEDA.jpg');
end;

procedure TFTym.INapovedaMouseLeave(Sender: TObject);
begin
  INapoveda.Picture.Assign(nil);
end;

procedure TFTym.IPokracovatClick(Sender: TObject);
begin
  FOkruh.Visible:=True;
  FTym.Visible:=False;
end;

procedure TFTym.IPokracovatMouseEnter(Sender: TObject);
begin
  IPokracovat.Picture.LoadFromFile('grafika\BUTTON\BUTTON_POKRACOVAT.jpg');
end;

procedure TFTym.IPokracovatMouseLeave(Sender: TObject);
begin
  IPokracovat.Picture.Assign(nil);
end;

procedure TFTym.IRedBullClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_REDBULL.jpg');
  tym := 9;
end;

procedure TFTym.IWilliamsClick(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\TYM\TYM_WILLIAMS.jpg');
  tym := 10;
end;

end.
