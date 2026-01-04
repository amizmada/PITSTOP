unit UOkruh;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls;

type
  TFOkruh = class(TForm)
    IBackground: TImage;
    IPokracovat: TImage;
    IMenu: TImage;
    IBar1: TImage;
    IBar2: TImage;
    IBar3: TImage;
    IBar4: TImage;
    IBar5: TImage;
    procedure IPokracovatClick(Sender: TObject);
    procedure IMenuClick(Sender: TObject);
    procedure IMenuMouseLeave(Sender: TObject);
    procedure IMenuMouseEnter(Sender: TObject);
    procedure IPokracovatMouseEnter(Sender: TObject);
    procedure IPokracovatMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FOkruh: TFOkruh;
  okruh, pocasi, hrubost: integer;


implementation

uses ULights, UMenu, UPneumatiky, UVyberHry, UMenu2;

{$R *.dfm}

procedure TFOkruh.FormShow(Sender: TObject);
begin
randomize;

if ZAVOD = True then
    okruh := random(9)+1;

 case okruh of
  1:  begin
      IBackground.Picture.LoadFromFile('grafika\OKRUH\OKRUH_1.jpg');
      hrubost := 3;
      pocasi := random(5)+1;

      case pocasi of
      1:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.Assign(nil);
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      2:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      3:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      4:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.Assign(nil);
          end;
      5:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          end;
      end; //case pocasi

      end; //begin
  2:  begin
      IBackground.Picture.LoadFromFile('grafika\OKRUH\OKRUH_2.jpg');
      hrubost := 1;
      pocasi := random(5);

      case pocasi of
      1:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.Assign(nil);
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      2:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      3:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      4:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.Assign(nil);
          end;
      5:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          end;
      end; //case pocasi

      end;
  3:  begin
      IBackground.Picture.LoadFromFile('grafika\OKRUH\OKRUH_3.jpg');
      hrubost := 3;
      pocasi := random(5);

      case pocasi of
      1:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.Assign(nil);
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      2:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      3:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      4:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.Assign(nil);
          end;
      5:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          end;
      end; //case pocasi

      end;
  4:  begin
      IBackground.Picture.LoadFromFile('grafika\OKRUH\OKRUH_4.jpg');
      hrubost := 3;
      pocasi := random(5);

      case pocasi of
      1:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.Assign(nil);
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      2:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      3:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      4:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.Assign(nil);
          end;
      5:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          end;
      end; //case pocasi

      end;
  5:  begin
      IBackground.Picture.LoadFromFile('grafika\OKRUH\OKRUH_5.jpg');
      hrubost := 4;
      pocasi := random(5);

      case pocasi of
      1:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.Assign(nil);
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      2:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      3:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      4:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.Assign(nil);
          end;
      5:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          end;
      end; //case pocasi

      end;
  6:  begin
      IBackground.Picture.LoadFromFile('grafika\OKRUH\OKRUH_6.jpg');
      hrubost := 4;
      pocasi := random(5);

      case pocasi of
      1:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.Assign(nil);
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      2:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      3:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      4:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.Assign(nil);
          end;
      5:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          end;
      end; //case pocasi

      end;
  7:  begin
      IBackground.Picture.LoadFromFile('grafika\OKRUH\OKRUH_7.jpg');
      hrubost := 4;
      pocasi := random(5);

      case pocasi of
      1:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.Assign(nil);
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      2:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      3:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      4:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.Assign(nil);
          end;
      5:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          end;
      end; //case pocasi

      end;
  8:  begin
      IBackground.Picture.LoadFromFile('grafika\OKRUH\OKRUH_8.jpg');
      hrubost := 2;
      pocasi := random(5);

      case pocasi of
      1:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.Assign(nil);
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      2:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      3:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      4:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.Assign(nil);
          end;
      5:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          end;
      end; //case pocasi

      end;
  9:  begin
      IBackground.Picture.LoadFromFile('grafika\OKRUH\OKRUH_9.jpg');
      hrubost := 5;
      pocasi := random(5);

      case pocasi of
      1:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.Assign(nil);
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      2:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.Assign(nil);
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      3:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.Assign(nil);
          IBar5.Picture.Assign(nil);
          end;
      4:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.Assign(nil);
          end;
      5:  begin
          IBar1.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar2.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar3.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar4.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          IBar5.Picture.LoadFromFile('grafika\OKRUH\OKRUH_bar.jpg');
          end;
      end; //case pocasi

      end; //begin

   end;  //case

end;

procedure TFOkruh.IMenuClick(Sender: TObject);
begin
  FMenu2.Visible:=True;
end;

procedure TFOkruh.IMenuMouseEnter(Sender: TObject);
begin
  IMenu.Picture.LoadFromFile('grafika\BUTTON\BUTTON_MENU.jpg');
end;

procedure TFOkruh.IMenuMouseLeave(Sender: TObject);
begin
  IMenu.Picture.Assign(nil);
end;

procedure TFOkruh.IPokracovatClick(Sender: TObject);
begin
  FPneumatiky.Visible:=True;
  FOkruh.Visible:=False;
end;

procedure TFOkruh.IPokracovatMouseEnter(Sender: TObject);
begin
  IPokracovat.Picture.LoadFromFile('grafika\BUTTON\BUTTON_POKRACOVAT.jpg');
end;

procedure TFOkruh.IPokracovatMouseLeave(Sender: TObject);
begin
  IPokracovat.Picture.Assign(nil);
end;

end.
