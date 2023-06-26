program laporan_siswa;

uses
  Forms,
  Tabelkelas in 'Tabelkelas.pas' {Form1},
  Tabelwalikelas in 'Tabelwalikelas.pas' {Form2},
  Tabelortu in 'Tabelortu.pas' {Form3},
  Tabelpoin in 'Tabelpoin.pas' {Form4},
  Tabeluser in 'Tabeluser.pas' {Form5},
  Tabelsiswa in 'Tabelsiswa.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
