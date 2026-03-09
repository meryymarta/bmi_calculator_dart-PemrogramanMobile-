void main() {
  List riwayat = [];

  print("--Simulasi Input Kalkulator---");

  hitungBMI(170, 65, riwayat);
  hitungBMI(165, 75, riwayat);
  hitungBMI(180, 85, riwayat);

  print("Input berhasil diterima\n");

  tampilkanRiwayat(riwayat);
}

void hitungBMI(double tinggiCm, double beratKg, List riwayat) {
  // Konversi tinggi dari cm ke meter
  double tinggiM = tinggiCm / 100;

  // Hitung BMI
  double bmi = beratKg / (tinggiM * tinggiM);
  
  // Menentukan kategori menggunakan percabangan
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
} 

// menampilkan riwayat dengan perulangan
void tampilkanRiwayat(List riwayat) {
  print("--- Riwayat Perhitungan BMI ---");
  
  // Menggunakan perulangan untuk membaca isi List riwayat
  for (int i = 0; i < riwayat.length; i++) {
    var data = riwayat[i];
    
    // toStringAsFixed(2) dipakai agar angka di belakang koma tidak terlalu panjang
    String bmiFormat = data["bmi"].toStringAsFixed(2); 
    
    print("${i + 1}. Tinggi: ${data["tinggi"]} cm, Berat: ${data["berat"]} kg | BMI: $bmiFormat -> ${data["kategori"]}");
  }
}