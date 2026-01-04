unit UVysledkyZavodu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, Math;

type
  TFVysledkyZavodu = class(TForm)
    IBackground: TImage;
    LT1: TLabel;
    LT5: TLabel;
    LT6: TLabel;
    LT7: TLabel;
    LT8: TLabel;
    LT2: TLabel;
    LT4: TLabel;
    LT3: TLabel;
    IMenu: TImage;
    IPokracovat: TImage;
    LT9: TLabel;
    LT10: TLabel;
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
    procedure IMenuClick(Sender: TObject);
    procedure IPokracovatMouseEnter(Sender: TObject);
    procedure IPokracovatMouseLeave(Sender: TObject);
    procedure IMenuMouseEnter(Sender: TObject);
    procedure IMenuMouseLeave(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure IPokracovatClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FVysledkyZavodu: TFVysledkyZavodu;
  IALFAROMEO, IALPHATAURI, IALPINE, IASTONMARTIN, IFERRARI, IHAAS, IMCLAREN, IMERCEDES, IREDBULL, IWILLIAMS: integer;
  ALFAROMEOtop, ALFAROMEObot, ALPHATAURItop, ALPHATAURIbot, ALPINEtop, ALPINEbot, ASTONMARTINtop, ASTONMARTINbot, FERRARItop, FERRARIbot, HAAStop, HAASbot, MCLARENtop, MCLARENbot, MERCEDEStop, MERCEDESbot, REDBULLtop, REDBULLbot, WILLIAMStop, WILLIAMSbot: integer;
  SALFAROMEO, SALPHATAURI, SALPINE, SASTONMARTIN, SFERRARI, SHAAS, SMCLAREN, SMERCEDES, SREDBULL, SWILLIAMS: integer;
  tym, hrubost, pocasi, pneu, lightsout: integer;


implementation

uses UMenu, UVyberHry, UOkruh, UVysledkySezony, UPneumatiky, UMenu2, UTym,
  ULights;

{$R *.dfm}

procedure TFVysledkyZavodu.FormShow(Sender: TObject);
var
b: array[0..9] of Integer;
a: array[0..9] of Integer;
lab: TLabel;
img: TImage;
I: integer;
H: integer;
begin
randomize;

  ALFAROMEOtop := 500;                               //definuje pøednstavené rozmezí skóre pro jednotlivé týmy
  ALFAROMEObot := 0;
  ALPHATAURItop := 500;
  ALPHATAURIbot := 100;
  ALPINEtop := 400;
  ALPINEbot := 200;
  ASTONMARTINtop := 850;
  ASTONMARTINbot := 600;
  FERRARItop := 900;
  FERRARIbot := 500;
  HAAStop := 500;
  HAASbot := 200;
  MCLARENtop := 900;
  MCLARENbot := 400;
  MERCEDEStop := 850;
  MERCEDESbot := 500;
  REDBULLtop := 1000;
  REDBULLbot := 800;
  WILLIAMStop := 500;
  WILLIAMSbot := 0;

  IALFAROMEO := RandomRange(ALFAROMEObot, ALFAROMEOtop);
  IALPHATAURI := RandomRange(ALPHATAURIbot, ALPHATAURItop);
  IALPINE := RandomRange(ALPINEbot, ALPINEtop);
  IASTONMARTIN := RandomRange(ASTONMARTINbot, ASTONMARTINtop);
  IFERRARI := RandomRange(FERRARIbot, FERRARItop);
  IHAAS := RandomRange(HAASbot, HAAStop);
  IMCLAREN := RandomRange(MCLARENbot, MCLARENtop);
  IMERCEDES := RandomRange(MERCEDESbot, MERCEDEStop);
  IREDBULL := RandomRange(REDBULLbot, REDBULLtop);
  IWILLIAMS := RandomRange(WILLIAMSbot, WILLIAMStop);


case tym of

  1: begin                                  //ALFA ROMEO
    case hrubost of                         //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IALFAROMEO := IALFAROMEO + 100;
        2: IALFAROMEO := IALFAROMEO + 0;
        3: IALFAROMEO := IALFAROMEO - 50;
        4: IALFAROMEO := IALFAROMEO + 0;
        5: IALFAROMEO := IALFAROMEO + 0;
        end;

     2: case pneu of
        1: IALFAROMEO := IALFAROMEO + 50;
        2: IALFAROMEO := IALFAROMEO + 50;
        3: IALFAROMEO := IALFAROMEO - 50;
        4: IALFAROMEO := IALFAROMEO + 0;
        5: IALFAROMEO := IALFAROMEO + 0;
        end;

     3: case pneu of
        1: IALFAROMEO := IALFAROMEO + 0;
        2: IALFAROMEO := IALFAROMEO + 100;
        3: IALFAROMEO := IALFAROMEO + 0;
        4: IALFAROMEO := IALFAROMEO + 0;
        5: IALFAROMEO := IALFAROMEO + 0;
        end;

     4: case pneu of
        1: IALFAROMEO := IALFAROMEO - 50;
        2: IALFAROMEO := IALFAROMEO + 50;
        3: IALFAROMEO := IALFAROMEO + 50;
        4: IALFAROMEO := IALFAROMEO + 0;
        5: IALFAROMEO := IALFAROMEO + 0;
        end;

     5: case pneu of
        1: IALFAROMEO := IALFAROMEO - 50;
        2: IALFAROMEO := IALFAROMEO + 0;
        3: IALFAROMEO := IALFAROMEO + 100;
        4: IALFAROMEO := IALFAROMEO + 0;
        5: IALFAROMEO := IALFAROMEO + 0;
        end;

     end;

    case pocasi of

     1: case pneu of
        1: IALFAROMEO := IALFAROMEO + 100;
        2: IALFAROMEO := IALFAROMEO + 100;
        3: IALFAROMEO := IALFAROMEO + 100;
        4: IALFAROMEO := IALFAROMEO - 100;
        5: IALFAROMEO := IALFAROMEO - 200;
        end;

     2: case pneu of
        1: IALFAROMEO := IALFAROMEO + 100;
        2: IALFAROMEO := IALFAROMEO + 100;
        3: IALFAROMEO := IALFAROMEO + 100;
        4: IALFAROMEO := IALFAROMEO - 100;
        5: IALFAROMEO := IALFAROMEO - 200;
        end;

     3: case pneu of
        1: IALFAROMEO := IALFAROMEO + 100;
        2: IALFAROMEO := IALFAROMEO + 100;
        3: IALFAROMEO := IALFAROMEO + 100;
        4: IALFAROMEO := IALFAROMEO - 50;
        5: IALFAROMEO := IALFAROMEO - 200;
        end;

     4: case pneu of
        1: IALFAROMEO := IALFAROMEO - 100;
        2: IALFAROMEO := IALFAROMEO - 100;
        3: IALFAROMEO := IALFAROMEO - 100;
        4: IALFAROMEO := IALFAROMEO + 200;
        5: IALFAROMEO := IALFAROMEO + 100;
        end;

     5: case pneu of
        1: IALFAROMEO := IALFAROMEO - 200;
        2: IALFAROMEO := IALFAROMEO - 200;
        3: IALFAROMEO := IALFAROMEO - 200;
        4: IALFAROMEO := IALFAROMEO - 50;
        5: IALFAROMEO := IALFAROMEO + 200;
        end;

    end;

    case lightsout of
    1: IALFAROMEO := IALFAROMEO + 50;
    2: IALFAROMEO := IALFAROMEO + 20;
    3: IALFAROMEO := IALFAROMEO + 0;
    4: IALFAROMEO := IALFAROMEO - 100;
    end;

  end;

  2: begin                                    //ALPHATAURI
    case hrubost of                           //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IALPHATAURI := IALPHATAURI + 100;
        2: IALPHATAURI := IALPHATAURI + 0;
        3: IALPHATAURI := IALPHATAURI - 50;
        4: IALPHATAURI := IALPHATAURI + 0;
        5: IALPHATAURI := IALPHATAURI + 0;
        end;

     2: case pneu of
        1: IALPHATAURI := IALPHATAURI + 50;
        2: IALPHATAURI := IALPHATAURI + 50;
        3: IALPHATAURI := IALPHATAURI - 50;
        4: IALPHATAURI := IALPHATAURI + 0;
        5: IALPHATAURI := IALPHATAURI + 0;
        end;

     3: case pneu of
        1: IALPHATAURI := IALPHATAURI + 0;
        2: IALPHATAURI := IALPHATAURI + 100;
        3: IALPHATAURI := IALPHATAURI + 0;
        4: IALPHATAURI := IALPHATAURI + 0;
        5: IALPHATAURI := IALPHATAURI + 0;
        end;

     4: case pneu of
        1: IALPHATAURI := IALPHATAURI - 50;
        2: IALPHATAURI := IALPHATAURI + 50;
        3: IALPHATAURI := IALPHATAURI + 50;
        4: IALPHATAURI := IALPHATAURI + 0;
        5: IALPHATAURI := IALPHATAURI + 0;
        end;

     5: case pneu of
        1: IALPHATAURI := IALPHATAURI - 50;
        2: IALPHATAURI := IALPHATAURI + 0;
        3: IALPHATAURI := IALPHATAURI + 100;
        4: IALPHATAURI := IALPHATAURI + 0;
        5: IALPHATAURI := IALPHATAURI + 0;
        end;

    end;

    case pocasi of

     1: case pneu of
        1: IALPHATAURI := IALPHATAURI + 100;
        2: IALPHATAURI := IALPHATAURI + 100;
        3: IALPHATAURI := IALPHATAURI + 100;
        4: IALPHATAURI := IALPHATAURI - 100;
        5: IALPHATAURI := IALPHATAURI - 200;
        end;

     2: case pneu of
        1: IALPHATAURI := IALPHATAURI + 100;
        2: IALPHATAURI := IALPHATAURI + 100;
        3: IALPHATAURI := IALPHATAURI + 100;
        4: IALPHATAURI := IALPHATAURI - 100;
        5: IALPHATAURI := IALPHATAURI - 200;
        end;

     3: case pneu of
        1: IALPHATAURI := IALPHATAURI + 100;
        2: IALPHATAURI := IALPHATAURI + 100;
        3: IALPHATAURI := IALPHATAURI + 100;
        4: IALPHATAURI := IALPHATAURI - 50;
        5: IALPHATAURI := IALPHATAURI - 200;
        end;

     4: case pneu of
        1: IALPHATAURI := IALPHATAURI - 100;
        2: IALPHATAURI := IALPHATAURI - 100;
        3: IALPHATAURI := IALPHATAURI - 100;
        4: IALPHATAURI := IALPHATAURI + 200;
        5: IALPHATAURI := IALPHATAURI + 100;
        end;

     5: case pneu of
        1: IALPHATAURI := IALPHATAURI - 200;
        2: IALPHATAURI := IALPHATAURI - 200;
        3: IALPHATAURI := IALPHATAURI - 200;
        4: IALPHATAURI := IALPHATAURI - 50;
        5: IALPHATAURI := IALPHATAURI + 200;
        end;

    end;

    case lightsout of
    1: IALPHATAURI := IALPHATAURI + 50;
    2: IALPHATAURI := IALPHATAURI + 20;
    3: IALPHATAURI := IALPHATAURI + 0;
    4: IALPHATAURI := IALPHATAURI - 100;
    end;

  end;        

  3: begin                                 //ALPINE
    case hrubost of                        //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IALPINE := IALPINE + 100;
        2: IALPINE := IALPINE + 0;
        3: IALPINE := IALPINE - 50;
        4: IALPINE := IALPINE + 0;
        5: IALPINE := IALPINE + 0;
        end;

     2: case pneu of
        1: IALPINE := IALPINE + 50;
        2: IALPINE := IALPINE + 50;
        3: IALPINE := IALPINE - 50;
        4: IALPINE := IALPINE + 0;
        5: IALPINE := IALPINE + 0;
        end;

     3: case pneu of
        1: IALPINE := IALPINE + 0;
        2: IALPINE := IALPINE + 100;
        3: IALPINE := IALPINE + 0;
        4: IALPINE := IALPINE + 0;
        5: IALPINE := IALPINE + 0;
        end;

     4: case pneu of
        1: IALPINE := IALPINE - 50;
        2: IALPINE := IALPINE + 50;
        3: IALPINE := IALPINE + 50;
        4: IALPINE := IALPINE + 0;
        5: IALPINE := IALPINE + 0;
        end;

     5: case pneu of
        1: IALPINE := IALPINE - 50;
        2: IALPINE := IALPINE + 0;
        3: IALPINE := IALPINE + 100;
        4: IALPINE := IALPINE + 0;
        5: IALPINE := IALPINE + 0;
        end;

    end;

    case pocasi of

     1: case pneu of
        1: IALPINE := IALPINE + 100;
        2: IALPINE := IALPINE + 100;
        3: IALPINE := IALPINE + 100;
        4: IALPINE := IALPINE - 100;
        5: IALPINE := IALPINE - 200;
        end;

     2: case pneu of
        1: IALPINE := IALPINE + 100;
        2: IALPINE := IALPINE + 100;
        3: IALPINE := IALPINE + 100;
        4: IALPINE := IALPINE - 100;
        5: IALPINE := IALPINE - 200;
        end;

     3: case pneu of
        1: IALPINE := IALPINE + 100;
        2: IALPINE := IALPINE + 100;
        3: IALPINE := IALPINE + 100;
        4: IALPINE := IALPINE - 50;
        5: IALPINE := IALPINE - 200;
        end;

     4: case pneu of
        1: IALPINE := IALPINE - 100;
        2: IALPINE := IALPINE - 100;
        3: IALPINE := IALPINE - 100;
        4: IALPINE := IALPINE + 200;
        5: IALPINE := IALPINE + 100;
        end;

     5: case pneu of
        1: IALPINE := IALPINE - 200;
        2: IALPINE := IALPINE - 200;
        3: IALPINE := IALPINE - 200;
        4: IALPINE := IALPINE - 50;
        5: IALPINE := IALPINE + 200;
        end;

    end;

    case lightsout of
    1: IALPINE := IALPINE + 50;
    2: IALPINE := IALPINE + 20;
    3: IALPINE := IALPINE + 0;
    4: IALPINE := IALPINE - 100;
    end;

  end;

  4: begin                                     //ASTONMARTIN
    case hrubost of                            //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IASTONMARTIN := IASTONMARTIN + 100;
        2: IASTONMARTIN := IASTONMARTIN + 0;
        3: IASTONMARTIN := IASTONMARTIN - 50;
        4: IASTONMARTIN := IASTONMARTIN + 0;
        5: IASTONMARTIN := IASTONMARTIN + 0;
        end;

     2: case pneu of
        1: IASTONMARTIN := IASTONMARTIN + 50;
        2: IASTONMARTIN := IASTONMARTIN + 50;
        3: IASTONMARTIN := IASTONMARTIN - 50;
        4: IASTONMARTIN := IASTONMARTIN + 0;
        5: IASTONMARTIN := IASTONMARTIN + 0;
        end;

     3: case pneu of
        1: IASTONMARTIN := IASTONMARTIN + 0;
        2: IASTONMARTIN := IASTONMARTIN + 100;
        3: IASTONMARTIN := IASTONMARTIN + 0;
        4: IASTONMARTIN := IASTONMARTIN + 0;
        5: IASTONMARTIN := IASTONMARTIN + 0;
        end;

     4: case pneu of
        1: IASTONMARTIN := IASTONMARTIN - 50;
        2: IASTONMARTIN := IASTONMARTIN + 50;
        3: IASTONMARTIN := IASTONMARTIN + 50;
        4: IASTONMARTIN := IASTONMARTIN + 0;
        5: IASTONMARTIN := IASTONMARTIN + 0;
        end;

     5: case pneu of
        1: IASTONMARTIN := IASTONMARTIN - 50;
        2: IASTONMARTIN := IASTONMARTIN + 0;
        3: IASTONMARTIN := IASTONMARTIN + 100;
        4: IASTONMARTIN := IASTONMARTIN + 0;
        5: IASTONMARTIN := IASTONMARTIN + 0;
        end;

    end;

    case pocasi of

     1: case pneu of
        1: IASTONMARTIN := IASTONMARTIN + 100;
        2: IASTONMARTIN := IASTONMARTIN + 100;
        3: IASTONMARTIN := IASTONMARTIN + 100;
        4: IASTONMARTIN := IASTONMARTIN - 100;
        5: IASTONMARTIN := IASTONMARTIN - 200;
        end;

     2: case pneu of
        1: IASTONMARTIN := IASTONMARTIN + 100;
        2: IASTONMARTIN := IASTONMARTIN + 100;
        3: IASTONMARTIN := IASTONMARTIN + 100;
        4: IASTONMARTIN := IASTONMARTIN - 100;
        5: IASTONMARTIN := IASTONMARTIN - 200;
        end;

     3: case pneu of
        1: IASTONMARTIN := IASTONMARTIN + 100;
        2: IASTONMARTIN := IASTONMARTIN + 100;
        3: IASTONMARTIN := IASTONMARTIN + 100;
        4: IASTONMARTIN := IASTONMARTIN - 50;
        5: IASTONMARTIN := IASTONMARTIN - 200;
        end;

     4: case pneu of
        1: IASTONMARTIN := IASTONMARTIN - 100;
        2: IASTONMARTIN := IASTONMARTIN - 100;
        3: IASTONMARTIN := IASTONMARTIN - 100;
        4: IASTONMARTIN := IASTONMARTIN + 200;
        5: IASTONMARTIN := IASTONMARTIN + 100;
        end;

     5: case pneu of
        1: IASTONMARTIN := IASTONMARTIN - 200;
        2: IASTONMARTIN := IASTONMARTIN - 200;
        3: IASTONMARTIN := IASTONMARTIN - 200;
        4: IASTONMARTIN := IASTONMARTIN - 50;
        5: IASTONMARTIN := IASTONMARTIN + 200;
        end;

    end;

    case lightsout of
    1: IASTONMARTIN := IASTONMARTIN + 50;
    2: IASTONMARTIN := IASTONMARTIN + 20;
    3: IASTONMARTIN := IASTONMARTIN + 0;
    4: IASTONMARTIN := IASTONMARTIN - 100;
    end;

  end;
                                            
  5: begin                                  //FERRARI
    case hrubost of                         //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IFERRARI := IFERRARI + 100;
        2: IFERRARI := IFERRARI + 0;
        3: IFERRARI := IFERRARI - 50;
        4: IFERRARI := IFERRARI + 0;
        5: IFERRARI := IFERRARI + 0;
        end;

     2: case pneu of
        1: IFERRARI := IFERRARI + 50;
        2: IFERRARI := IFERRARI + 50;
        3: IFERRARI := IFERRARI - 50;
        4: IFERRARI := IFERRARI + 0;
        5: IFERRARI := IFERRARI + 0;
        end;

     3: case pneu of
        1: IFERRARI := IFERRARI + 0;
        2: IFERRARI := IFERRARI + 100;
        3: IFERRARI := IFERRARI + 0;
        4: IFERRARI := IFERRARI + 0;
        5: IFERRARI := IFERRARI + 0;
        end;

     4: case pneu of
        1: IFERRARI := IFERRARI - 50;
        2: IFERRARI := IFERRARI + 50;
        3: IFERRARI := IFERRARI + 50;
        4: IFERRARI := IFERRARI + 0;
        5: IFERRARI := IFERRARI + 0;
        end;

     5: case pneu of
        1: IFERRARI := IFERRARI - 50;
        2: IFERRARI := IFERRARI + 0;
        3: IFERRARI := IFERRARI + 100;
        4: IFERRARI := IFERRARI + 0;
        5: IFERRARI := IFERRARI + 0;
        end;

    end;

    case pocasi of

     1: case pneu of
        1: IFERRARI := IFERRARI + 100;
        2: IFERRARI := IFERRARI + 100;
        3: IFERRARI := IFERRARI + 100;
        4: IFERRARI := IFERRARI - 100;
        5: IFERRARI := IFERRARI - 200;
        end;

     2: case pneu of
        1: IFERRARI := IFERRARI + 100;
        2: IFERRARI := IFERRARI + 100;
        3: IFERRARI := IFERRARI + 100;
        4: IFERRARI := IFERRARI - 100;
        5: IFERRARI := IFERRARI - 200;
        end;

     3: case pneu of
        1: IFERRARI := IFERRARI + 100;
        2: IFERRARI := IFERRARI + 100;
        3: IFERRARI := IFERRARI + 100;
        4: IFERRARI := IFERRARI - 50;
        5: IFERRARI := IFERRARI - 200;
        end;

     4: case pneu of
        1: IFERRARI := IFERRARI - 100;
        2: IFERRARI := IFERRARI - 100;
        3: IFERRARI := IFERRARI - 100;
        4: IFERRARI := IFERRARI + 200;
        5: IFERRARI := IFERRARI + 100;
        end;

     5: case pneu of
        1: IFERRARI := IFERRARI - 200;
        2: IFERRARI := IFERRARI - 200;
        3: IFERRARI := IFERRARI - 200;
        4: IFERRARI := IFERRARI - 50;
        5: IFERRARI := IFERRARI + 200;
        end;

    end;

    case lightsout of
    1: IFERRARI := IFERRARI + 50;
    2: IFERRARI := IFERRARI + 20;
    3: IFERRARI := IFERRARI + 0;
    4: IFERRARI := IFERRARI - 100;
    end;

  end;

  6: begin                                //HAAS
    case hrubost of                       //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IHAAS := IHAAS + 100;
        2: IHAAS := IHAAS + 0;
        3: IHAAS := IHAAS - 50;
        4: IHAAS := IHAAS + 0;
        5: IHAAS := IHAAS + 0;
        end;

     2: case pneu of
        1: IHAAS := IHAAS + 50;
        2: IHAAS := IHAAS + 50;
        3: IHAAS := IHAAS - 50;
        4: IHAAS := IHAAS + 0;
        5: IHAAS := IHAAS + 0;
        end;

     3: case pneu of
        1: IHAAS := IHAAS + 0;
        2: IHAAS := IHAAS + 100;
        3: IHAAS := IHAAS + 0;
        4: IHAAS := IHAAS + 0;
        5: IHAAS := IHAAS + 0;
        end;

     4: case pneu of
        1: IHAAS := IHAAS - 50;
        2: IHAAS := IHAAS + 50;
        3: IHAAS := IHAAS + 50;
        4: IHAAS := IHAAS + 0;
        5: IHAAS := IHAAS + 0;
        end;

     5: case pneu of
        1: IHAAS := IHAAS - 50;
        2: IHAAS := IHAAS + 0;
        3: IHAAS := IHAAS + 100;
        4: IHAAS := IHAAS + 0;
        5: IHAAS := IHAAS + 0;
        end;

    end;

    case pocasi of

     1: case pneu of
        1: IHAAS := IHAAS + 100;
        2: IHAAS := IHAAS + 100;
        3: IHAAS := IHAAS + 100;
        4: IHAAS := IHAAS - 100;
        5: IHAAS := IHAAS - 200;
        end;

     2: case pneu of
        1: IHAAS := IHAAS + 100;
        2: IHAAS := IHAAS + 100;
        3: IHAAS := IHAAS + 100;
        4: IHAAS := IHAAS - 100;
        5: IHAAS := IHAAS - 200;
        end;

     3: case pneu of
        1: IHAAS := IHAAS + 100;
        2: IHAAS := IHAAS + 100;
        3: IHAAS := IHAAS + 100;
        4: IHAAS := IHAAS - 50;
        5: IHAAS := IHAAS - 200;
        end;

     4: case pneu of
        1: IHAAS := IHAAS - 100;
        2: IHAAS := IHAAS - 100;
        3: IHAAS := IHAAS - 100;
        4: IHAAS := IHAAS + 200;
        5: IHAAS := IHAAS + 100;
        end;

     5: case pneu of
        1: IHAAS := IHAAS - 200;
        2: IHAAS := IHAAS - 200;
        3: IHAAS := IHAAS - 200;
        4: IHAAS := IHAAS - 50;
        5: IHAAS := IHAAS + 200;
        end;

    end;

    case lightsout of
    1: IHAAS := IHAAS + 50;
    2: IHAAS := IHAAS + 20;
    3: IHAAS := IHAAS + 0;
    4: IHAAS := IHAAS - 100;
    end;

  end;

  7: begin                                  //MCLAREN
    case hrubost of                         //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IMCLAREN := IMCLAREN + 100;
        2: IMCLAREN := IMCLAREN + 0;
        3: IMCLAREN := IMCLAREN - 50;
        4: IMCLAREN := IMCLAREN + 0;
        5: IMCLAREN := IMCLAREN + 0;
        end;

     2: case pneu of
        1: IMCLAREN := IMCLAREN + 50;
        2: IMCLAREN := IMCLAREN + 50;
        3: IMCLAREN := IMCLAREN - 50;
        4: IMCLAREN := IMCLAREN + 0;
        5: IMCLAREN := IMCLAREN + 0;
        end;

     3: case pneu of
        1: IMCLAREN := IMCLAREN + 0;
        2: IMCLAREN := IMCLAREN + 100;
        3: IMCLAREN := IMCLAREN + 0;
        4: IMCLAREN := IMCLAREN + 0;
        5: IMCLAREN := IMCLAREN + 0;
        end;

     4: case pneu of
        1: IMCLAREN := IMCLAREN - 50;
        2: IMCLAREN := IMCLAREN + 50;
        3: IMCLAREN := IMCLAREN + 50;
        4: IMCLAREN := IMCLAREN + 0;
        5: IMCLAREN := IMCLAREN + 0;
        end;

     5: case pneu of
        1: IMCLAREN := IMCLAREN - 50;
        2: IMCLAREN := IMCLAREN + 0;
        3: IMCLAREN := IMCLAREN + 100;
        4: IMCLAREN := IMCLAREN + 0;
        5: IMCLAREN := IMCLAREN + 0;
        end;

    end;

    case pocasi of

     1: case pneu of
        1: IMCLAREN := IMCLAREN + 100;
        2: IMCLAREN := IMCLAREN + 100;
        3: IMCLAREN := IMCLAREN + 100;
        4: IMCLAREN := IMCLAREN - 100;
        5: IMCLAREN := IMCLAREN - 200;
        end;

     2: case pneu of
        1: IMCLAREN := IMCLAREN + 100;
        2: IMCLAREN := IMCLAREN + 100;
        3: IMCLAREN := IMCLAREN + 100;
        4: IMCLAREN := IMCLAREN - 100;
        5: IMCLAREN := IMCLAREN - 200;
        end;

     3: case pneu of
        1: IMCLAREN := IMCLAREN + 100;
        2: IMCLAREN := IMCLAREN + 100;
        3: IMCLAREN := IMCLAREN + 100;
        4: IMCLAREN := IMCLAREN - 50;
        5: IMCLAREN := IMCLAREN - 200;
        end;

     4: case pneu of
        1: IMCLAREN := IMCLAREN - 100;
        2: IMCLAREN := IMCLAREN - 100;
        3: IMCLAREN := IMCLAREN - 100;
        4: IMCLAREN := IMCLAREN + 200;
        5: IMCLAREN := IMCLAREN + 100;
        end;

     5: case pneu of
        1: IMCLAREN := IMCLAREN - 200;
        2: IMCLAREN := IMCLAREN - 200;
        3: IMCLAREN := IMCLAREN - 200;
        4: IMCLAREN := IMCLAREN - 50;
        5: IMCLAREN := IMCLAREN + 200;
        end;

    end;

    case lightsout of
    1: IMCLAREN := IMCLAREN + 50;
    2: IMCLAREN := IMCLAREN + 20;
    3: IMCLAREN := IMCLAREN + 0;
    4: IMCLAREN := IMCLAREN - 100;
    end;

  end;

  8: begin                                  //MERCEDES
    case hrubost of                         //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IMERCEDES := IMERCEDES + 100;
        2: IMERCEDES := IMERCEDES + 0;
        3: IMERCEDES := IMERCEDES - 50;
        4: IMERCEDES := IMERCEDES + 0;
        5: IMERCEDES := IMERCEDES + 0;
        end;

     2: case pneu of
        1: IMERCEDES := IMERCEDES + 50;
        2: IMERCEDES := IMERCEDES + 50;
        3: IMERCEDES := IMERCEDES - 50;
        4: IMERCEDES := IMERCEDES + 0;
        5: IMERCEDES := IMERCEDES + 0;
        end;

     3: case pneu of
        1: IMERCEDES := IMERCEDES + 0;
        2: IMERCEDES := IMERCEDES + 100;
        3: IMERCEDES := IMERCEDES + 0;
        4: IMERCEDES := IMERCEDES + 0;
        5: IMERCEDES := IMERCEDES + 0;
        end;

     4: case pneu of
        1: IMERCEDES := IMERCEDES - 50;
        2: IMERCEDES := IMERCEDES + 50;
        3: IMERCEDES := IMERCEDES + 50;
        4: IMERCEDES := IMERCEDES + 0;
        5: IMERCEDES := IMERCEDES + 0;
        end;

     5: case pneu of
        1: IMERCEDES := IMERCEDES - 50;
        2: IMERCEDES := IMERCEDES + 0;
        3: IMERCEDES := IMERCEDES + 100;
        4: IMERCEDES := IMERCEDES + 0;
        5: IMERCEDES := IMERCEDES + 0;
        end;

    end;

    case pocasi of

     1: case pneu of
        1: IMERCEDES := IMERCEDES + 100;
        2: IMERCEDES := IMERCEDES + 100;
        3: IMERCEDES := IMERCEDES + 100;
        4: IMERCEDES := IMERCEDES - 100;
        5: IMERCEDES := IMERCEDES - 200;
        end;

     2: case pneu of
        1: IMERCEDES := IMERCEDES + 100;
        2: IMERCEDES := IMERCEDES + 100;
        3: IMERCEDES := IMERCEDES + 100;
        4: IMERCEDES := IMERCEDES - 100;
        5: IMERCEDES := IMERCEDES - 200;
        end;

     3: case pneu of
        1: IMERCEDES := IMERCEDES + 100;
        2: IMERCEDES := IMERCEDES + 100;
        3: IMERCEDES := IMERCEDES + 100;
        4: IMERCEDES := IMERCEDES - 50;
        5: IMERCEDES := IMERCEDES - 200;
        end;

     4: case pneu of
        1: IMERCEDES := IMERCEDES - 100;
        2: IMERCEDES := IMERCEDES - 100;
        3: IMERCEDES := IMERCEDES - 100;
        4: IMERCEDES := IMERCEDES + 200;
        5: IMERCEDES := IMERCEDES + 100;
        end;

     5: case pneu of
        1: IMERCEDES := IMERCEDES - 200;
        2: IMERCEDES := IMERCEDES - 200;
        3: IMERCEDES := IMERCEDES - 200;
        4: IMERCEDES := IMERCEDES - 50;
        5: IMERCEDES := IMERCEDES + 200;
        end;

    end;

    case lightsout of
    1: IMERCEDES := IMERCEDES + 50;
    2: IMERCEDES := IMERCEDES + 20;
    3: IMERCEDES := IMERCEDES + 0;
    4: IMERCEDES := IMERCEDES - 100;
    end;

  end;

  9: begin                                //REDBULL
    case hrubost of                       //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IREDBULL := IREDBULL + 100;
        2: IREDBULL := IREDBULL + 0;
        3: IREDBULL := IREDBULL - 50;
        4: IREDBULL := IREDBULL + 0;
        5: IREDBULL := IREDBULL + 0;
        end;

     2: case pneu of
        1: IREDBULL := IREDBULL + 50;
        2: IREDBULL := IREDBULL + 50;
        3: IREDBULL := IREDBULL - 50;
        4: IREDBULL := IREDBULL + 0;
        5: IREDBULL := IREDBULL + 0;
        end;

     3: case pneu of
        1: IREDBULL := IREDBULL + 0;
        2: IREDBULL := IREDBULL + 100;
        3: IREDBULL := IREDBULL + 0;
        4: IREDBULL := IREDBULL + 0;
        5: IREDBULL := IREDBULL + 0;
        end;

     4: case pneu of
        1: IREDBULL := IREDBULL - 50;
        2: IREDBULL := IREDBULL + 50;
        3: IREDBULL := IREDBULL + 50;
        4: IREDBULL := IREDBULL + 0;
        5: IREDBULL := IREDBULL + 0;
        end;

     5: case pneu of
        1: IREDBULL := IREDBULL - 50;
        2: IREDBULL := IREDBULL + 0;
        3: IREDBULL := IREDBULL + 100;
        4: IREDBULL := IREDBULL + 0;
        5: IREDBULL := IREDBULL + 0;
        end;

    end;

    case pocasi of

     1: case pneu of
        1: IREDBULL := IREDBULL + 100;
        2: IREDBULL := IREDBULL + 100;
        3: IREDBULL := IREDBULL + 100;
        4: IREDBULL := IREDBULL - 100;
        5: IREDBULL := IREDBULL - 200;
        end;

     2: case pneu of
        1: IREDBULL := IREDBULL + 100;
        2: IREDBULL := IREDBULL + 100;
        3: IREDBULL := IREDBULL + 100;
        4: IREDBULL := IREDBULL - 100;
        5: IREDBULL := IREDBULL - 200;
        end;

     3: case pneu of
        1: IREDBULL := IREDBULL + 100;
        2: IREDBULL := IREDBULL + 100;
        3: IREDBULL := IREDBULL + 100;
        4: IREDBULL := IREDBULL - 50;
        5: IREDBULL := IREDBULL - 200;
        end;

     4: case pneu of
        1: IREDBULL := IREDBULL - 100;
        2: IREDBULL := IREDBULL - 100;
        3: IREDBULL := IREDBULL - 100;
        4: IREDBULL := IREDBULL + 200;
        5: IREDBULL := IREDBULL + 100;
        end;

     5: case pneu of
        1: IREDBULL := IREDBULL - 200;
        2: IREDBULL := IREDBULL - 200;
        3: IREDBULL := IREDBULL - 200;
        4: IREDBULL := IREDBULL - 50;
        5: IREDBULL := IREDBULL + 200;
        end;

    end;

    case lightsout of
    1: IREDBULL := IREDBULL + 50;
    2: IREDBULL := IREDBULL + 20;
    3: IREDBULL := IREDBULL + 0;
    4: IREDBULL := IREDBULL - 100;
    end;

  end;

  10: begin                                 //WILLIAMS
    case hrubost of                         //pneumatiky vzhledem k hrubosti

     1: case pneu of
        1: IWILLIAMS := IWILLIAMS + 100;
        2: IWILLIAMS := IWILLIAMS + 0;
        3: IWILLIAMS := IWILLIAMS - 50;
        4: IWILLIAMS := IWILLIAMS + 0;
        5: IWILLIAMS := IWILLIAMS + 0;
        end;

     2: case pneu of
        1: IWILLIAMS := IWILLIAMS + 50;
        2: IWILLIAMS := IWILLIAMS + 50;
        3: IWILLIAMS := IWILLIAMS - 50;
        4: IWILLIAMS := IWILLIAMS + 0;
        5: IWILLIAMS := IWILLIAMS + 0;
        end;

     3: case pneu of
        1: IWILLIAMS := IWILLIAMS + 0;
        2: IWILLIAMS := IWILLIAMS + 100;
        3: IWILLIAMS := IWILLIAMS + 0;
        4: IWILLIAMS := IWILLIAMS + 0;
        5: IWILLIAMS := IWILLIAMS + 0;
        end;

     4: case pneu of
        1: IWILLIAMS := IWILLIAMS - 50;
        2: IWILLIAMS := IWILLIAMS + 50;
        3: IWILLIAMS := IWILLIAMS + 50;
        4: IWILLIAMS := IWILLIAMS + 0;
        5: IWILLIAMS := IWILLIAMS + 0;
        end;

     5: case pneu of
        1: IWILLIAMS := IWILLIAMS - 50;
        2: IWILLIAMS := IWILLIAMS + 0;
        3: IWILLIAMS := IWILLIAMS + 100;
        4: IWILLIAMS := IWILLIAMS + 0;
        5: IWILLIAMS := IWILLIAMS + 0;
        end;

    end;

    case pocasi of

     1: case pneu of
        1: IWILLIAMS := IWILLIAMS + 100;
        2: IWILLIAMS := IWILLIAMS + 100;
        3: IWILLIAMS := IWILLIAMS + 100;
        4: IWILLIAMS := IWILLIAMS - 100;
        5: IWILLIAMS := IWILLIAMS - 200;
        end;

     2: case pneu of
        1: IWILLIAMS := IWILLIAMS + 100;
        2: IWILLIAMS := IWILLIAMS + 100;
        3: IWILLIAMS := IWILLIAMS + 100;
        4: IWILLIAMS := IWILLIAMS - 100;
        5: IWILLIAMS := IWILLIAMS - 200;
        end;

     3: case pneu of
        1: IWILLIAMS := IWILLIAMS + 100;
        2: IWILLIAMS := IWILLIAMS + 100;
        3: IWILLIAMS := IWILLIAMS + 100;
        4: IWILLIAMS := IWILLIAMS - 50;
        5: IWILLIAMS := IWILLIAMS - 200;
        end;

     4: case pneu of
        1: IWILLIAMS := IWILLIAMS - 100;
        2: IWILLIAMS := IWILLIAMS - 100;
        3: IWILLIAMS := IWILLIAMS - 100;
        4: IWILLIAMS := IWILLIAMS + 200;
        5: IWILLIAMS := IWILLIAMS + 100;
        end;

     5: case pneu of
        1: IWILLIAMS := IWILLIAMS - 200;
        2: IWILLIAMS := IWILLIAMS - 200;
        3: IWILLIAMS := IWILLIAMS - 200;
        4: IWILLIAMS := IWILLIAMS - 50;
        5: IWILLIAMS := IWILLIAMS + 200;
        end;

    end;

    case lightsout of
    1: IWILLIAMS := IWILLIAMS + 50;
    2: IWILLIAMS := IWILLIAMS + 20;
    3: IWILLIAMS := IWILLIAMS + 0;
    4: IWILLIAMS := IWILLIAMS - 100;
    end;

  end;

end;

  a[0] := IALFAROMEO;
  a[1] := IALPHATAURI;
  a[2] := IALPINE;
  a[3] := IASTONMARTIN;
  a[4] := IFERRARI;
  a[5] := IHAAS;
  a[6] := IMCLAREN;
  a[7] := IMERCEDES;
  a[8] := IREDBULL;
  a[9] := IWILLIAMS;

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

  SALFAROMEO := SALFAROMEO + IALFAROMEO;            //pøipsání bodù do vysledkù sezóny
  SALPHATAURI := SALPHATAURI + IALPHATAURI;
  SALPINE := SALPINE + IALPINE;
  SASTONMARTIN := SASTONMARTIN + IASTONMARTIN;
  SFERRARI := SFERRARI + IFERRARI;
  SHAAS := SHAAS + IHAAS;
  SMCLAREN := SMCLAREN + IMCLAREN;
  SMERCEDES := SMERCEDES + IMERCEDES;
  SREDBULL := SREDBULL + IREDBULL;
  SWILLIAMS := SWILLIAMS + IWILLIAMS;

end;

procedure TFVysledkyZavodu.IMenuClick(Sender: TObject);
begin
  FMenu2.Visible:=True;
end;

procedure TFVysledkyZavodu.IMenuMouseEnter(Sender: TObject);
begin
  IMenu.Picture.LoadFromFile('grafika\BUTTON\BUTTON_MENU.jpg');
end;

procedure TFVysledkyZavodu.IMenuMouseLeave(Sender: TObject);
begin
  IMenu.Picture.Assign(nil);
end;

procedure TFVysledkyZavodu.IPokracovatClick(Sender: TObject);
begin
if SEZONA = True then
  begin
  if okruh = 9 then                              //poslední závod -> výsledky sezony
    begin
      FVYsledkySezony.Visible := True;
      FVysledkyZavodu.Visible := False;
      okruh := 1;
      pneu := 0;
      lightsout := 0;
    end
  else
    begin                                        //další závod v sezónì
    okruh := okruh + 1;
    FOkruh.Visible := True;
    FVysledkyZavodu.Visible := False;
    pneu := 0;
    lightsout := 0;
    end
  end
  else
    begin                                      //jeden závod -> výsledky závodu
    FMenu.Visible := True;
    FVysledkyZavodu.Visible := False;
    okruh := 1;
    pneu := 0;
    lightsout := 0;
    end;

end;

procedure TFVysledkyZavodu.IPokracovatMouseEnter(Sender: TObject);
begin
  IPokracovat.Picture.LoadFromFile('grafika\BUTTON\BUTTON_POKRACOVAT.jpg');
end;

procedure TFVysledkyZavodu.IPokracovatMouseLeave(Sender: TObject);
begin
  IPokracovat.Picture.Assign(nil);
end;

end.
