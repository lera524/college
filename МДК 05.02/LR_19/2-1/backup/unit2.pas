unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Math, Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
var a,b,c:integer;
  s,p,m,n,k:real;
begin
  a:= strtoint(edit1.text);
  b:= strtoint(edit2.text);
  c:= strtoint(edit3.text);
  s:= sqrt(((a+b+c)/2)*(((a+b+c)/2)-a)*(((a+b+c)/2)-b)*(((a+b+c)/2)-c));
  edit4.text:=floattostr(s);
  p:=a+b+c;
  edit5.text:=floattostr(p);
  m:=arccos((a^2+b^2-c^2)/(2*a*b));
  edit6.text:=floattostr(m);
  n:=arcsin(b/a*sin(m));
  edit7.text:=floattostr(n);
  k:=pi-(m+n);
  edit8.text:=floattostr(k);
end;

end.

