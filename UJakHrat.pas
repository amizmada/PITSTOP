unit UJakHrat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFJakHrat = class(TForm)
    IBackground: TImage;
    IZpet: TImage;
    IPokracovat: TImage;
    procedure IZpetMouseLeave(Sender: TObject);
    procedure IPokracovatMouseLeave(Sender: TObject);
    procedure IZpetMouseEnter(Sender: TObject);
    procedure IPokracovatMouseEnter(Sender: TObject);
    procedure IPokracovatClick(Sender: TObject);
    procedure IZpetClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FJakHrat: TFJakHrat;
  pok, zpe: integer;

implementation

uses UMenu;

{$R *.dfm}

procedure TFJakHrat.FormShow(Sender: TObject);
begin
  IBackground.Picture.LoadFromFile('grafika\JAKHRAT\JAKHRAT_1.jpg');
  pok := 0;
end;

procedure TFJakHrat.IPokracovatClick(Sender: TObject);
begin
  pok := pok + 1;

  case pok of
  1: IBackground.Picture.LoadFromFile('grafika\JAKHRAT\JAKHRAT_2.jpg');
  2: IBackground.Picture.LoadFromFile('grafika\JAKHRAT\JAKHRAT_3.jpg');
  3: IBackground.Picture.LoadFromFile('grafika\JAKHRAT\JAKHRAT_4.jpg');
  4: IBackground.Picture.LoadFromFile('grafika\JAKHRAT\JAKHRAT_5.jpg');
  5: begin
     FMenu.Visible:=True;
     FJakHrat.Visible:=False;
     end;
  end;

end;

procedure TFJakHrat.IPokracovatMouseEnter(Sender: TObject);
begin
  IPokracovat.Picture.LoadFromFile('grafika\BUTTON\BUTTON_POKRACOVAT.jpg');
end;

procedure TFJakHrat.IPokracovatMouseLeave(Sender: TObject);
begin
  IPokracovat.Picture.Assign(nil);
end;

procedure TFJakHrat.IZpetClick(Sender: TObject);
begin
  case pok of
  0: begin
     FMenu.Visible:=True;
     FJakHrat.Visible:=False;
     end;
  1: IBackground.Picture.LoadFromFile('grafika\JAKHRAT\JAKHRAT_1.jpg');
  2: IBackground.Picture.LoadFromFile('grafika\JAKHRAT\JAKHRAT_2.jpg');
  3: IBackground.Picture.LoadFromFile('grafika\JAKHRAT\JAKHRAT_3.jpg');
  4: IBackground.Picture.LoadFromFile('grafika\JAKHRAT\JAKHRAT_4.jpg');
  end;

  pok := pok-1;

end;

procedure TFJakHrat.IZpetMouseEnter(Sender: TObject);
begin
  IZpet.Picture.LoadFromFile('grafika\BUTTON\BUTTON_ZPET.jpg');
end;

procedure TFJakHrat.IZpetMouseLeave(Sender: TObject);
begin
  IZpet.Picture.Assign(nil);
end;

end.
