unit Unit3;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Math;

type

  { TForm3 }

  TForm3 = class(TForm)
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
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
  private
    procedure CalculateResult;
  public

  end;

var
  Form3: TForm3;

implementation

{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
begin
  if (edit1.text ='') or (edit2.text ='') or (edit3.text ='') or (edit4.text ='') then
    exit
    else
        CalculateResult;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  Edit1.SetFocus; // Устанавливаем фокус на первое поле после очистки
end;

procedure TForm3.Label4Click(Sender: TObject);
begin

end;

procedure TForm3.CalculateResult;
var
  i, p, n, t, u: Double;
begin
  try
    // Преобразуем введенные значения в числа
    i := StrToFloat(Edit1.Text);
    p := StrToFloat(Edit2.Text);
    n := StrToFloat(Edit3.Text);
    t := StrToFloat(Edit4.Text);

    // Проверяем допустимость значений
    if n = 0 then
      raise Exception.Create('Количество начислений не может быть нулевым');

    if t < 0 then
      raise Exception.Create('Срок не может быть отрицательным');

    // Вычисляем по формуле сложных процентов
    u := i * Power(1 + p/(100*n), n*(t/12));

    // Форматируем результат с 2 знаками после запятой
    Edit5.Text := Format('%.2f', [u]);

  except
    on E: EConvertError do
      ShowMessage('Ошибка: Введите корректные числовые значения');
    on E: Exception do
      ShowMessage('Ошибка: ' + E.Message);
  end;
end;

end.
