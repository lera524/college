unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ExtCtrls, StdCtrls, Buttons, Math;

type

  { TForm1 }

  TForm1 = class(TForm)
    del: TButton;
    but4: TButton;
    but5: TButton;
    but6: TButton;
    butymn: TButton;
    butx: TButton;
    but1: TButton;
    but2: TButton;
    but3: TButton;
    minus: TButton;
    ravno: TButton;
    ce: TButton;
    but0: TButton;
    dot: TButton;
    plus: TButton;
    c: TButton;
    kop: TButton;
    but7: TButton;
    but8: TButton;
    but9: TButton;
    butdiv: TButton;
    butsqr: TButton;
    display: TEdit;
    procedure butsqrClick(Sender: TObject);
    procedure butxClick(Sender: TObject);
    procedure cClick(Sender: TObject);
    procedure ceClick(Sender: TObject);
    procedure clickbut(Sender: TObject);
    procedure delClick(Sender: TObject);
    procedure clickoperation(Sender: TObject);
    procedure dotClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure kopClick(Sender: TObject);

    procedure ravnoClick(Sender: TObject);
  public

  end;

var
  Form1: TForm1;
  a, b, res: real;  // Изменил имя переменной c на res, чтобы не было конфликта с кнопкой c
  operation: string;
implementation

{$R *.lfm}

{ TForm1 }



procedure TForm1.butsqrClick(Sender: TObject);
begin
  if display.text='' then
     exit
     else
     a:=strtofloat(display.text);
     a:=sqr(a);
     display.text:=floattostr(a);
     a:=0;
end;

procedure TForm1.butxClick(Sender: TObject);
begin
   if display.text='' then
     exit
     else
         a:=strtofloat(display.text);
         a:=1/(a);
         display.text:=floattostr(a);
         a:=0;
end;

procedure TForm1.cClick(Sender: TObject);
begin
  display.Clear;
  a := 0;
  b := 0;
  res := 0;
  operation := '';
end;

procedure TForm1.ceClick(Sender: TObject);
begin
  display.Clear;
end;

procedure TForm1.clickbut(Sender: TObject);
begin
  if display.Text<>'0' then
    display.Text := display.Text + (Sender as TButton).Caption
  else
  display.Text := (Sender as TButton).Caption;
end;

procedure TForm1.delClick(Sender: TObject);
var
  s: string;
begin
  s := display.Text;
  if s <> '' then
    Delete(s, Length(s), 1);
  display.Text := s;
end;

procedure TForm1.clickoperation(Sender: TObject);
begin
  if display.text='' then
    exit
    else
     a := StrToFloat(display.Text);
     display.Clear;
     operation := (Sender as TButton).Caption;
end;

procedure TForm1.dotClick(Sender: TObject);
begin
  if (Pos(',', display.Text) <> 0) then
    Exit;
  if display.Text='' then
    display.Text := '0' + dot.Caption
  else
    display.Text := display.Text + dot.Caption;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
   Self.BorderStyle := bsDialog; // Запрещаем изменение размера
  Display.ReadOnly := True;
  Display.Alignment := taRightJustify;
  Display.Font.Size := 24;
  Display.Color := clWhite;
  Display.TabStop := False;
  //Panel1.Color := $00F5F5F5;

  but7.TabOrder := 0;
  but8.TabOrder := 1;
  but9.TabOrder := 2;
  butdiv.TabOrder := 3;

  but4.TabOrder := 4;
  but5.TabOrder := 5;
  but6.TabOrder := 6;
  butymn.TabOrder := 7;

  but1.TabOrder := 8;
  but2.TabOrder := 9;
  but3.TabOrder := 10;
  minus.TabOrder := 11;

  but0.TabOrder := 12;
  dot.TabOrder := 13;
  ravno.TabOrder := 14;
  plus.TabOrder := 15;

  c.TabOrder := 16;
  ce.TabOrder := 17;
  del.TabOrder := 18;
  kop.TabOrder := 19;

  butsqr.TabOrder := 20;
  butx.TabOrder := 21;
end;


procedure TForm1.kopClick(Sender: TObject);
begin
  if display.text='' then
     exit
     else
   a:=strtofloat(display.text);
   a:=sqrt(a);
   display.text:=floattostr(a);
   a:=0;
end;

procedure TForm1.ravnoClick(Sender: TObject);
begin
  if display.Text = '' then
    Exit;
  b := StrToFloat(display.Text);
  display.Clear;
  case operation of
    '+': res := a + b;
    '-': res := a - b;
    '/':
      if b <> 0 then
        res := a / b
      else
      begin
        ShowMessage('Деление на ноль!');
        Exit;
      end;
    '*': res := a * b;
  end;
  display.Text := FloatToStr(res);
end;

end.
