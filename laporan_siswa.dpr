program laporan_siswa;

uses
  Forms,
  Tabelkelas in 'Tabelkelas.pas' {Form1},
  Tabelwalikelas in 'Tabelwalikelas.pas' {Form2};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
