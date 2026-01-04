unit UVysledkySezony;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls;

type
  TFVysledkySezony = class(TForm)
    IBackground: TImage;
    IPokracovat: TImage;
    IT1: TImage;
    IT2: TImage;
    IT3: TImage;
    IT4: TImage;
    IT5: TImage;
    IT6: TImage;
    IT7: TImage;
    IT8: TImage;
    IT9: TImage;
    IT10: TImage;
    LT1: TLabel;
    LT2: TLabel;
    LT3: TLabel;
    LT4: TLabel;
    LT5: TLabel;
    LT6: TLabel;
    LT7: TLabel;
    LT8: TLabel;
    LT9: TLabel;
    LT10: TLabel;
    procedure IPokracovatMouseEnter(Sender: TObject);
    procedure IPokracovatMouseLeave(Sender: TObject);
    procedure IPokracovatClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVysledkySezony: TFVysledkySezony;
  VALFAROMEO, VALPHATAURI, VALPINE, VASTONMARTIN, VFERRARI, VHAAS, VMCLAREN, VMERCEDES, VREDBULL, VWILLIAMS: integer;

implementation

uses UMenu, UVysledkyZavodu;

{$R *.dfm}

procedure TFVysledkySezony.FormShow(Sender: TObject);
var
b: array[0..9] of Integer;
a: array[0..9] of Integer;
lab: TLabel;
img: TImage;
I: integer;
H: integer;
begin
  { 
  VALFAROMEO := FVysledkyZavodu.SALFAROMEO;
  VALPHATAURI := FVysledkyZavodu.SALPHATAURI;
  VALPINE := FVysledkyZavodu.SALPINE;
  VASTONMARTIN := FVysledkyZavodu.SASTONMARTIN;
  VFERRARI := FVysledkyZavodu.SFERRARI;
  VHAAS := FVysledkyZavodu.SHAAS;
  VMCLAREN := FVysledkyZavodu.SMCLAREN;
  VMERCEDES := FVysledkyZavodu.SMERCEDES;
  VREDBULL := FVysledkyZavodu.SREDBULL;
  VWILLIAMS := FVysledkyZavodu.SWILLIAMS;   }

  a[0] := SALFAROMEO;
  a[1] := SALPHATAURI;
  a[2] := SALPINE;
  a[3] := SASTONMARTIN;
  a[4] := SFERRARI;
  a[5] := SHAAS;
  a[6] := SMCLAREN;
  a[7] := SMERCEDES;
  a[8] := SREDBULL;
  a[9] := SWILLIAMS;

  b[0]:= 0;
  b[1]:= 0;
  b[2]:= 0;
  b[3]:= 0;
  b[4]:= 0;
  b[5]:= 0;
  b[6]:= 0;
  b[7]:= 0;
  b[8]:= 0;
  b[9]:= 0;

for H := 0 to 9 do begin                    // seøazení a vypsání týmù do tabulky
  for I := 0 to 9 do begin
    if a[H] < a[I] then b[H] := b[H] + 1
  end;
end;

for I := 0 to 9 do begin
    lab := FindComponent('LT'+IntToStr(I+1)) as TLabel;
    if I=b[0] then lab.Caption := 'Alfa Romeo';
    if I=b[1] then lab.Caption := 'AlphaTauri';
    if I=b[2] then lab.Caption := 'Alpine';
    if I=b[3] then lab.Caption := 'Aston Martin';
    if I=b[4] then lab.Caption := 'Ferrari';
    if I=b[5] then lab.Caption := 'Haas';
    if I=b[6] then lab.Caption := 'McLaren';
    if I=b[7] then lab.Caption := 'Mercedes';
    if I=b[8] then lab.Caption := 'RedBull';
    if I=b[9] then lab.Caption := 'Williams';
end;

for I := 0 to 9 do begin
    img := FindComponent('IT'+IntToStr(I+1)) as TImage;
    if I=b[0] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\ALFAROMEO.jpg');
    if I=b[1] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\ALPHATAURI.jpg');
    if I=b[2] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\ALPINE.jpg');
    if I=b[3] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\ASTONMARTIN.jpg');
    if I=b[4] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\FERRARI.jpg');
    if I=b[5] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\HAAS.jpg');
    if I=b[6] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\MCLAREN.jpg');
    if I=b[7] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\MERCEDES.jpg');
    if I=b[8] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\REDBULL.jpg');
    if I=b[9] then img.Picture.LoadFromFile('grafika\VYSLEDKYZAVODU\WILLIAMS.jpg');
end;

end;

procedure TFVysledkySezony.IPokracovatClick(Sender: TObject);
begin
  FMenu.Visible := True;
  FVysledkyZavodu.Visible := False;
end;

procedure TFVysledkySezony.IPokracovatMouseEnter(Sender: TObject);
begin
  IPokracovat.Picture.LoadFromFile('grafika\BUTTON\BUTTON_POKRACOVAT.jpg');
end;

procedure TFVysledkySezony.IPokracovatMouseLeave(Sender: TObject);
begin
  IPokracovat.Picture.Assign(nil);
end;

end.
