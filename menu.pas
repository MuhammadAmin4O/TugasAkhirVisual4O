unit menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, frxpngimage, ExtCtrls;

type
  TForm9 = class(TForm)
    mm1: TMainMenu;
    FORM1: TMenuItem;
    Kelas1: TMenuItem;
    WaliKelas1: TMenuItem;
    ORTU1: TMenuItem;
    Poin1: TMenuItem;
    User1: TMenuItem;
    Siswa1: TMenuItem;
    Hubungan1: TMenuItem;
    Semester1: TMenuItem;
    LOGOUT1: TMenuItem;
    EXIT1: TMenuItem;
    EXIT2: TMenuItem;
    img1: TImage;
    procedure Kelas1Click(Sender: TObject);
    procedure WaliKelas1Click(Sender: TObject);
    procedure ORTU1Click(Sender: TObject);
    procedure Poin1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure Siswa1Click(Sender: TObject);
    procedure Hubungan1Click(Sender: TObject);
    procedure Semester1Click(Sender: TObject);
    procedure LOGOUT1Click(Sender: TObject);
    procedure EXIT2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Tabelkelas, Tabelwalikelas, Tabelortu, Tabeluser, Tabelsemester,
  Tabelhubungan, Tabelsiswa, Tabelpoin, login;

{$R *.dfm}


procedure TForm9.Kelas1Click(Sender: TObject);
begin
formkelas.showmodal;
end;

procedure TForm9.WaliKelas1Click(Sender: TObject);
begin
Form2.ShowModal;
end;

procedure TForm9.ORTU1Click(Sender: TObject);
begin
Form3.ShowModal;
end;

procedure TForm9.Poin1Click(Sender: TObject);
begin
Form4.ShowModal;
end;

procedure TForm9.User1Click(Sender: TObject);
begin
Form5.ShowModal;
end;

procedure TForm9.Siswa1Click(Sender: TObject);
begin
Form6.ShowModal;
end;

procedure TForm9.Hubungan1Click(Sender: TObject);
begin
Form7.ShowModal;
end;

procedure TForm9.Semester1Click(Sender: TObject);
begin
Form8.ShowModal;
end;

procedure TForm9.LOGOUT1Click(Sender: TObject);
begin
hide;
form10.show;
end;

procedure TForm9.EXIT2Click(Sender: TObject);
begin
if MessageDlg('APAKAH INGIN MENUTUP APLIKASI INI ?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
Application.Terminate;
end else
begin
hide;
form9.Show;
end;
end;

end.
