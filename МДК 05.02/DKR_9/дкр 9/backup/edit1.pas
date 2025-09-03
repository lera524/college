unit edit1;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Buttons;

type

  { TfEdit }

  TfEdit = class(TForm)
    bSave: TBitBtn;
    bCancel: TBitBtn;
    CBTime: TComboBox;
    CBStatus: TComboBox;
    eAdress: TEdit;
    eS: TEdit;
    eTip: TEdit;
    eNomber: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    procedure eAdressChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private

  public

  end;

var
  fEdit: TfEdit;

implementation

{$R *.lfm}

{ TfEdit }

procedure TfEdit.FormCreate(Sender: TObject);
begin

end;

procedure TfEdit.FormShow(Sender: TObject);
begin
  eTip.SetFocus;
end;

procedure TfEdit.Label1Click(Sender: TObject);
begin

end;

procedure TfEdit.eAdressChange(Sender: TObject);
begin

end;

end.

