void main() {
  List riwayat = [];

  print("--Simulasi Input Kalkulator---");

  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  print("Input berhasil diterima");
}

void hitungBMI(double tinggiCm, double beratKg, List riwayat) {
  // Konversi tinggi dari cm ke meter
  double tinggiM = tinggiCm / 100;

  // Hitung BMI
  double bmi = beratKg / (tinggiM * tinggiM);
  //menentukan kategori menggunakan percabangan
  String kategori;
  if (bmi < 18.5) {
    kategori = "Kurus";
  } else if (bmi < 25) {
    kategori = "Normal";
  } else if (bmi < 30) {
    kategori = "Gemuk";
  } else {
    kategori = "Obesitas";
  }

  riwayat.add({
    "tinggi": tinggiCm,
    "berat": beratKg,
    "bmi": bmi,
    "kategori": kategori
  });

  print("Data masuk -> Tinggi: $tinggiCm cm, Berat: $beratKg kg");

}