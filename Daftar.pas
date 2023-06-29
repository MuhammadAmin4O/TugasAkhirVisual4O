unit Daftar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm11 = class(TForm)
    l1: TLabel;
    l2: TLabel;
    l3: TLabel;
    l4: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    b2: TButton;
    b3: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    c1: TComboBox;
    c2: TComboBox;
    l5: TLabel;
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure posisiawal;
    procedure l5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses login;

{$R *.dfm}

procedure TForm11.b2Click(Sender: TObject);
begin
if (Edit1.Text= '')or (Edit2.Text ='')or(c1.Text= '')or (c2.Text ='')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('username',Edit1.Text,[])) and (zqry1.Locate('password',Edit2.Text,[])) then
begin
ShowMessage('DATA USER SUDAH DIGUNAKAN');
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tabel_user values (null,"'+Edit1.Text+'","'+Edit2.Text+'","'+c1.Text+'","'+c2.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tabel_user');
zqry1.Open;
ShowMessage('PENDAFTARAN BERHASIL !');

end;
posisiawal;
end;


procedure TForm11.b3Click(Sender: TObject);
begin
posisiawal;
end;

procedure TForm11.posisiawal;
begin
Edit1.Clear;
Edit2.Clear;
c1.text:= '';
c2.text:= '';
end;

procedure TForm11.l5Click(Sender: TObject);
begin
  close;
Form10.show;
end;

end.
