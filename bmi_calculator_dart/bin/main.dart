void main() {
  List riwayat = [];

  print("--Simulasi Input Kalkulator---");

  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  print("Input berhasil diterima");
}

void hitungBMI(double tinggiCm, double beratKg, List riwayat) {
  print("Data masuk -> Tinggi: $tinggiCm cm, Berat: $beratKg kg");
}