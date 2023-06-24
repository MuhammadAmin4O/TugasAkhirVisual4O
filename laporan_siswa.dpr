program laporan_siswa;

uses
  Forms,
  Tabelkelas in 'Tabelkelas.pas' {Form1};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
