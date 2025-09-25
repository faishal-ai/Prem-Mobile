// Langkah awal: menggunakan spread operator
void main() {
  var list = [1, 2, 3];
  var list2 = [0, ...list];
  print(list);
  print(list2);
  print(list2.length);

  // Langkah 3: menggunakan null-aware spread operator
  var list1 = [1, 2, null];
  print(list1);

  var list3 = [0, ...?list1];
  print(list3);
  print(list3.length);

  // Menambahkan NIM menggunakan spread operator
  var nimDigits = [2, 3, 4, 1, 7, 2, 0, 2, 1, 8];
  var nimList = [...nimDigits];
  print(nimList);

    // Langkah 4: menggunakan collection if
  bool promoActive = false;
  var nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print('Hasil jika promoActive false: $nav');

    promoActive = true;
  nav = ['Home', 'Furniture', 'Plants', if (promoActive) 'Outlet'];
  print('Hasil jika promoActive true: $nav');

  //lagkah 6
  var listOfInts = [1, 2, 3];
  var listOfStrings = ['#0', for (var i in listOfInts) '#$i'];
  assert(listOfStrings[1] == '#1');
  print(listOfStrings);
}
