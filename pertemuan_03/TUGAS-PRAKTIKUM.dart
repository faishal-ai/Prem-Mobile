void main() {
  const String namaLengkap = 'Faishal Harist Rahmawan';
  const String nim = '2341720218';

  for (int i = 0; i <= 201; i++) {
    if (isPrima(i)) {
      print('Bilangan prima: $i');
      print('Nama: $namaLengkap');
      print('NIM: $nim\n');
    } else {
      print('Bukan bilangan prima: $i\n');
    }
  }
}

bool isPrima(int number) {
  if (number < 2) return false;
  for (int i = 2; i <= number ~/ 2; i++) {
    if (number % i == 0) return false;
  }
  return true;
}
