unit Unit2;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;
  i, p, s, u: double;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Label1Click(Sender: TObject);
begin

end;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if (edit1.text ='') or (edit2.text ='') or (edit3.text ='') then
    exit
    else
      begin
      i:=strtoint(Edit1.Text);
      p:=strtoint(Edit2.Text);
      s:=strtoint(Edit3.Text);
      u:=(i*p*(s/12))/100;
      Edit4.Text:=floattostr(u);
      end;
end;

procedure TForm2.Edit4Change(Sender: TObject);
begin

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
edit1.clear;
edit2.clear;
edit3.clear;
edit4.clear;
end;

end.

