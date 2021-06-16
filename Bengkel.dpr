program Bengkel;

uses
  Forms,
  menu in 'menu.pas' {Fmenu},
  barang in 'barang.pas' {Fbarang},
  jasaservice in 'jasaservice.pas' {Fjasaservice},
  kasir in 'kasir.pas' {Fkasir},
  mekanik in 'mekanik.pas' {Fmekanik},
  pelanggan in 'pelanggan.pas' {Fpelanggan},
  daftarservice in 'daftarservice.pas' {Fpendaftarservice},
  servicekendaraan in 'servicekendaraan.pas' {Fservicekendaraan},
  penjualansparepart in 'penjualansparepart.pas' {Fpenjualansparepart},
  laporanbarang in 'laporanbarang.pas' {Flaporanbarang},
  laporantransaksiservice in 'laporantransaksiservice.pas' {Flaporanservice},
  laporanjualsparepart in 'laporanjualsparepart.pas' {Flaporanjualsparepart},
  caridatabarang in 'caridatabarang.pas' {Cdatabarang},
  carikodebarang in 'carikodebarang.pas' {Ckodebarang},
  carikodejasa in 'carikodejasa.pas' {Ckodejasa},
  datakoneksi in 'datakoneksi.pas' {DM: TDataModule},
  login in 'login.pas' {Flogin},
  about in 'about.pas' {Fabout},
  ReportNota in 'ReportNota.pas' {NotaService: TQuickRep},
  NotaSparepart in 'NotaSparepart.pas' {NotaSpareepart: TQuickRep},
  Reportbulanansparepart in 'Reportbulanansparepart.pas' {Freportsparepart: TQuickRep},
  NotaReport in 'NotaReport.pas' {Freportservice: TQuickRep},
  RreportBarang in 'RreportBarang.pas' {ReportBarang: TQuickRep},
  Rnomordaftar in 'Rnomordaftar.pas' {RNdaftar: TQuickRep};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFmenu, Fmenu);
  Application.CreateForm(TFlaporanjualsparepart, Flaporanjualsparepart);
  Application.CreateForm(TCkodejasa, Ckodejasa);
  Application.CreateForm(TFbarang, Fbarang);
  Application.CreateForm(TFservicekendaraan, Fservicekendaraan);
  Application.CreateForm(TFpenjualansparepart, Fpenjualansparepart);
  Application.CreateForm(TFkasir, Fkasir);
  Application.CreateForm(TFlaporanservice, Flaporanservice);
  Application.CreateForm(TFmekanik, Fmekanik);
  Application.CreateForm(TFpelanggan, Fpelanggan);
  Application.CreateForm(TFpendaftarservice, Fpendaftarservice);
  Application.CreateForm(TFlaporanbarang, Flaporanbarang);
  Application.CreateForm(TFlogin, Flogin);
  Application.CreateForm(TFjasaservice, Fjasaservice);
  Application.CreateForm(TCdatabarang, Cdatabarang);
  Application.CreateForm(TCkodebarang, Ckodebarang);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TFabout, Fabout);
  Application.CreateForm(TNotaService, NotaService);
  Application.CreateForm(TNotaSpareepart, NotaSpareepart);
  Application.CreateForm(TFreportsparepart, Freportsparepart);
  Application.CreateForm(TFreportservice, Freportservice);
  Application.CreateForm(TReportBarang, ReportBarang);
  Application.CreateForm(TRNdaftar, RNdaftar);
  Application.Run;
end.
