void sapa(String nama) {
  print("Halo, $nama!");
}

void main() {
  // simpan function ke variabel
  var f = sapa;
  f("Faishal"); // memanggil lewat variabel
}