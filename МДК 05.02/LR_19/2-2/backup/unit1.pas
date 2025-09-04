unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Math, Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var a,b,c,p:integer;
alfa,betta,gamma,s,r:real;
begin
    a:=strtoint(edit1.text);
    b:=strtoint(edit2.text);
    c:=strtoint(edit3.text);
    p:= a+b+c;
    r:=p/2;
    s:=sqrt(r*(r-a)*(r-b)*(r-c));
    alfa:=arccos((sqr(a)+sqr(b)-sqr(c))/(2*b*a));
    betta:=arcsin(b/a*sin(alfa));
    gamma:=pi-(alfa+betta);
    alfa:=alfa*180/pi;
    betta:=betta*180/pi;
    gamma:=gamma*180/pi;
    Label6.caption:='alfa='+floattostr(alfa);
    Label7.caption:='betta='+floattostr(betta);
    Label8.caption:='gamma='+floattostr(gamma);
    Edit4.text:=inttostr(p);
    Edit5.text:=floattostr(s);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.clear;
edit2.clear;
edit3.clear;
edit4.clear;
edit5.clear;
edit1.setfocus;
label6.caption:='alfa=';
label7.caption:='betta=';
label8.caption:='gamma=';
end;

end.

