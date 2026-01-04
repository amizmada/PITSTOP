program PITSTOP;

uses
  Forms,
  UOpen in 'UOpen.pas' {FOpen},
  UMenu in 'UMenu.pas' {FMenu},
  UTym in 'UTym.pas' {FTym},
  UVyberHry in 'UVyberHry.pas' {FVyberHry},
  UPneumatiky in 'UPneumatiky.pas' {FPneumatiky},
  UZavod in 'UZavod.pas' {FZavod},
  UOkruh in 'UOkruh.pas' {FOkruh},
  ULights in 'ULights.pas' {FLights},
  UVysledkyZavodu in 'UVysledkyZavodu.pas' {FVysledkyZavodu},
  UNapovedaPneumatiky in 'UNapovedaPneumatiky.pas' {FNapovedaPneumatiky},
  UNapovedaTym in 'UNapovedaTym.pas' {FNapovedaTym},
  UNapovedaLights in 'UNapovedaLights.pas' {FNapovedaLights},
  UNapovedaVyberHry in 'UNapovedaVyberHry.pas' {FNapovedaVyberHry},
  UJakHrat in 'UJakHrat.pas' {FJakHrat},
  UVysledkySezony in 'UVysledkySezony.pas' {FVysledkySezony},
  UMenu2 in 'UMenu2.pas' {FMenu2},
  UJakHrat2 in 'UJakHrat2.pas' {FJakHrat2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFOpen, FOpen);
  Application.CreateForm(TFMenu, FMenu);
  Application.CreateForm(TFTym, FTym);
  Application.CreateForm(TFVyberHry, FVyberHry);
  Application.CreateForm(TFPneumatiky, FPneumatiky);
  Application.CreateForm(TFZavod, FZavod);
  Application.CreateForm(TFOkruh, FOkruh);
  Application.CreateForm(TFLights, FLights);
  Application.CreateForm(TFVysledkyZavodu, FVysledkyZavodu);
  Application.CreateForm(TFNapovedaPneumatiky, FNapovedaPneumatiky);
  Application.CreateForm(TFNapovedaTym, FNapovedaTym);
  Application.CreateForm(TFNapovedaLights, FNapovedaLights);
  Application.CreateForm(TFNapovedaVyberHry, FNapovedaVyberHry);
  Application.CreateForm(TFJakHrat, FJakHrat);
  Application.CreateForm(TFVysledkySezony, FVysledkySezony);
  Application.CreateForm(TFMenu2, FMenu2);
  Application.CreateForm(TFJakHrat2, FJakHrat2);
  Application.Run;
end.
