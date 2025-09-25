void main() {
  // Langkah 1: Buat list final dengan panjang 5 dan nilai default null
  final List<dynamic> list = List.filled(5, null);

  // Isi nama dan NIM
  list[1] = 'Faishal Haist Rahmawan'; 
  list[2] = '2341720218'; 

  // Cetak
  print(list.length); 
  print(list[1]);     
  print(list[2]);     
}
// void main() {
// var list = [1, 2, 3];
// assert(list.length == 3);
// assert(list[1] == 2);
// print(list.length);
// print(list[1]);

// list[1] = 1;
// assert(list[1] == 1);
// print(list[1]);
// }