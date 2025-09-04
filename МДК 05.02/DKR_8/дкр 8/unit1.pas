unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Unit2, Unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
begin
      Form2.Show;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
   ShowMessage('Простые проценты начисляются только на первоначальную сумму вклада.'+sLineBreak+'Формула расчета:'+sLineBreak+'Проценты = (Основная сумма × Процентная ставка × Срок) / 100'+sLineBreak+''+sLineBreak+'Сложные проценты начисляются на сумму с уже начисленными процентами'+sLineBreak+'Формула расчёта:'+sLineBreak+'Будущая сумма = Начальная сумма × (1 + Процентная ставка/(100 × Кол-во начислений))^(Кол-во начислений × период/12))');
end;

procedure TForm1.FormClick(Sender: TObject);
begin

end;

procedure TForm1.FormCreate(Sender: TObject);
begin

end;

end.

