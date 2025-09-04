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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Label2Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Edit1Change(Sender: TObject);
begin

end;

procedure TForm1.Button1Click(Sender: TObject);
var c:integer;
  h,a,s,y:real;
begin
   c:=strtoint(edit1.text);
   y:=strtoint(edit2.text);
   y:=y*pi/180;
   h:=(c/2)*tan(y);
   a:=c/(2*cos(y));
   s:=1/2*c*h;
   edit4.text:=floattostr(s);
   edit5.text:=floattostr(a);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  edit1.clear;
  edit2.clear;
  edit4.clear;
  edit5.clear;
  edit1.setfocus;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin

end;

end.

