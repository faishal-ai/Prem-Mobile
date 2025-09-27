(int, int) tukar((int, int) record) {
  var (a, b) = record;
  return (b, a);
}

void main() {
  var record = ('first', a: 2, b: true, 'last');
  print("Langkah 1: $record");

  var angka = (10, 20);
  print("Sebelum tukar: $angka");
  print("Sesudah tukar: ${tukar(angka)}");

  (String, int) mahasiswa;
  mahasiswa = ('Faishal Harist Rahmawan', 2341720218);
  print("Data mahasiswa: $mahasiswa");

  var mahasiswa2 = ('Faishal Harist Rahmawan', a: 2341720218, b: true, 'Teknik Informatika');
  print("Posisi pertama (\$1): ${mahasiswa2.$1}");
  print("Field a (NIM): ${mahasiswa2.a}");
  print("Field b: ${mahasiswa2.b}");
  print("Posisi kedua (\$2): ${mahasiswa2.$2}");
}
