void main() {
    var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
print(halogens);
  var names1 = <String>[];
  Set<String> names2 = {}; 
  var names3 = {}; 

  // tambah nama dan NIM ke dalam Set
  names2.add('Faishal');
  names2.addAll({'2341720218'});

  // Menampilkan hasil
  print('List: $names1');
  print('Set: $names2');
  print('Map: $names3');

}