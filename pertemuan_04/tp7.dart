// Fungsi mengembalikan 2 nilai dalam bentuk Record
(int, String) getData() {
  return (10, "Halo");
}

void main() {
  var (angka, teks) = getData(); // destructuring
  print("Angka: $angka");
  print("Teks: $teks");
}
