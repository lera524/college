unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Math, Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TForm1 }

  TForm1 = class(TForm)
    BitBtn1: TBitBtn;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Memo1: TMemo;
    procedure BitBtn1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.BitBtn1Click(Sender: TObject);
var a,b,h,t:real;
begin
  a:=strtofloat(edit1.Text);
  b:=strtofloat(edit2.text);
  h:=strtofloat(edit3.text);

  while a<=b do
begin
  t:=sqr(a);
  memo1.lines.add(floattostr(a)+'^2 = '+floattostr(t));
  a:=a+h;
end;
end;
end.

