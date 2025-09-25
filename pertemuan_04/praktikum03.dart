void main(){
  var gifts = {
  // Key:    Value
  'first': 'partridge',
  'second': 'turtledoves',
  'fifth': 1
};

var nobleGases = {
  2: 'helium',
  10: 'neon',
  18: 2,
};
  // Map kosong tipe Map<String, String>
  var mhs1 = Map<String, String>();
  gifts['nama'] = 'Faishal';
  gifts['nim'] = '2341720218';

  // Map kosong rtipe Map<int, String>
  var mhs2 = Map<int, String>();
  nobleGases[99] = 'Faishal';
  nobleGases[100] = '2341720218';

  // Tambahkan data ke mhs1 dan mhs2
  mhs1['nama'] = 'Faishal';
  mhs1['nim'] = '2341720218';

  mhs2[1] = 'Faishal';
  mhs2[2] = '2341720218';

  // Cetak hasil
  print('Gifts: $gifts');
  print('Noble Gases: $nobleGases');
  print('Mhs1: $mhs1');
  print('Mhs2: $mhs2');
}