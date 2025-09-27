void main() {
  // ===== Langkah 1 =====
  var list = [1, 2, 3];
  assert(list.length == 3);
  assert(list[1] == 2);
  print("=== Langkah 1 ===");
  print(list.length); // 3
  print(list[1]);     // 2

  list[1] = 1;
  assert(list[1] == 1);
  print(list[1]);     // 1

  // ===== Langkah 3 =====
  final List<String?> listFinal = List.filled(5, null, growable: false);
  listFinal[1] = "Faishal Harist Rahmawan";
  listFinal[2] = "2341720218";

  print("\n=== Langkah 3 ===");
  print(listFinal);
}
