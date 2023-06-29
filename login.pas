unit login;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection;

type
  TForm10 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    con1: TZConnection;
    zqry1: TZQuery;
    b1: TButton;
    l1: TLabel;
    l2: TLabel;
    b2: TButton;
    b3: TButton;
    l3: TLabel;
    procedure b1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses menu, Daftar;

{$R *.dfm}

procedure TForm10.b1Click(Sender: TObject);
begin
with zqry1 do begin
SQL.Clear;
SQL.Add('select * from tabel_user where username='+QuotedStr(edit1.Text));
open;
end;

if zqry1.RecordCount=0
then
Application.MessageBox('Maaf user name tidak ditemukan','informasi',MB_OK or MB_ICONINFORMATION)
else
begin
if zqry1.FieldByName('password').AsString<>Edit2.Text
then
Application.MessageBox('Pastikan password yang anda masukkan benar','error',MB_OK or MB_ICONERROR)
else
begin
hide;
Form9.Show;
end;
end;
end;

procedure TForm10.FormShow(Sender: TObject);
begin
Edit1.Text:='';
Edit2.Text:='';
end;

procedure TForm10.b2Click(Sender: TObject);
begin
close;
end;

procedure TForm10.b3Click(Sender: TObject);
begin
form11.showmodal;
end;

end.
