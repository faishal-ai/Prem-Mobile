# **Laporan Praktikum Week 4**

**Identitas Mahasiswa:**

| Nama | Kelas | Absen |
|------|-------|-----|
| Faishal Harist Rahmawan | TI-3H | 10 |
 
## **Praktikum 1: Eksperimen Tipe Data List**
**Kode Program:**
~~~Dart
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

~~~
**Output:**

![img](./img/Praktikum_01/P1.png)

**Deskripsi:** 
Langkah 1: Menunjukkan cara membuat list biasa (var list = [1, 2, 3]), membaca panjang list (length), mengambil nilai berdasarkan indeks (list[1]), dan mengubah elemen list.

Langkah 3: Menunjukkan cara membuat list dengan ukuran tetap (List.filled), dengan nilai awal null, lalu mengisi elemen tertentu. Karena tipe data String?, maka list bisa menyimpan string atau null..

## **Praktikum 2: Eksperimen Tipe Data Set**
**Kode Program:**
~~~Dart
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
~~~
**Output:**

![img](./img/Praktikum_02/P2.png)

**Deskripsi**
{fluorine, chlorine, ...} → Set berisi nama halogen.
var names1 = <String>[]; → List kosong ([]).
Set<String> names2 = {}; → Set kosong, lalu ditambah "Faishal" dan "2341720218".
var names3 = {}; → default-nya Map kosong ({}).

Jadi outputnya:
List: []
Set: {Faishal, 2341720218}
Map: {}
Perbedaan: List = berurutan, bisa duplikat. Set = unik, tanpa duplikat. Map = pasangan key:value.

## **Praktikum 3: Eksperimen Tipe Data Maps**
**Kode Program:**
~~~Dart
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
~~~
**Output:**

![img](./img/Praktikum_03/P3_L3.png)

**Deskripsi:** 
Program ini menunjukkan penggunaan Map di Dart (struktur data key–value).

- gifts awalnya berisi pasangan key–value dengan key berupa String (first, second, fifth), lalu ditambah data nama dan nim, hasilnya {first: partridge, second: turtledoves, fifth: 1, nama: Faishal, nim: 2341720218}.
- nobleGases berisi key berupa int (2, 10, 18), lalu ditambah key 99 dan 100 dengan value string, hasilnya {2: helium, 10: neon, 18: 2, 99: Faishal, 100: 2341720218}.
- mhs1 adalah Map<String, String> yang diisi nama dan nim, hasilnya {nama: Faishal, nim: 2341720218}.
- mhs2 adalah Map<int, String> yang diisi 1: Faishal dan 2: 2341720218, hasilnya {1: Faishal, 2: 2341720218}.

## **Praktikum 4: Eksperimen Tipe Data List: Spread dan Control-flow Operators**
**Kode Program:**
~~~Dart
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
~~~

**Output:**

![img](./img/Praktikum_04/P4_L6.png)

**Deskripsi:**
- ... (spread operator) dipakai untuk menyalin isi list ke list lain → contoh [0, ...list] hasilnya [0, 1, 2, 3].
- ...? (null-aware spread) dipakai agar penyalinan tetap aman meskipun ada null di list → hasil [0, 1, 2, null].
- Spread juga dipakai untuk menyalin list NIM → [2, 3, 4, 1, 7, 2, 0, 2, 1, 8].
- Collection if: elemen dimasukkan hanya jika kondisi benar → promoActive=false hasil [Home, Furniture, Plants], kalau true hasil [Home, Furniture, Plants, Outlet].
- Collection for: membuat elemen dari perulangan → ['#0', '#1', '#2', '#3'].

Intinya: kode ini mendemonstrasikan cara membangun list secara fleksibel dengan spread, if, dan for di Dart.

## **Praktikum 5: Eksperimen Tipe Data Records**
**Kode Program:**
~~~Dart
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
~~~

**Output:**
![img](./img/Praktikum_05/P5.png)

**Deskripsi**
Program ini mendemonstrasikan records di Dart:

Fungsi tukar menerima record (int, int) lalu menukar posisi nilainya.
Contoh: input (10, 20) → output (20, 10).

Record campuran:
- var record = ('first', a: 2, b: true, 'last');
- Record bisa berisi nilai posisi ('first', 'last') dan juga field bernama (a, b).
- Record angka: (10, 20) dicetak sebelum dan sesudah dipanggil fungsi tukar.
- Record mahasiswa: (String, int) berisi nama dan NIM → ('Faishal Harist Rahmawan', 2341720218).
- Record mahasiswa2: Campuran field posisi dan field bernama → ('Faishal Harist Rahmawan', a: 2341720218, b: true, 'Teknik Informatika').
- Akses posisi pakai $1, $2, dst.
- Akses field bernama pakai .a, .b.

 Intinya: kode ini menunjukkan cara membuat, menukar, dan mengakses record (baik posisi maupun bernama) di Dart.

## **Tugas Praktikum**
### 2. Jelaskan yang dimaksud Functions dalam bahasa Dart!
**Jawab:** Dalam bahasa Dart, sebuah function adalah blok kode yang dapat digunakan kembali untuk melakukan tugas tertentu. Fungsi diberi nama, bisa menerima masukan data melalui parameter, dan dapat mengembalikan sebuah nilai sebagai hasil eksekusinya. Tujuan utama penggunaan fungsi adalah untuk memecah program besar menjadi bagian-bagian yang lebih kecil dan terkelola, menghindari penulisan kode yang berulang, dan membuat alur program lebih mudah dibaca.

### 3. Jelaskan jenis-jenis parameter di Functions beserta contoh sintaksnya!
**Jawab:**
- **Positional Parameter (Wajib)** Parameter yang harus diisi sesuai urutan.

~~~Dart
//Parameter Posisional (Positional Parameters)
void greet({required String name, int? age}) {
  print("Halo $name, umurmu ${age ?? 'tidak diketahui'}");
}

void main() {
  greet(name: "Faishal", age: 20);
}
~~~

**Output:**

![img](./img/Tugas/tp3.png)

- **Optional Positional Parameter** Ditulis dengan [ ]. Parameternya boleh tidak diisi, dan bisa diberi nilai default.

~~~Dart
void salam(String nama, [String? pesan]) {
  print("Halo $nama");
  if (pesan != null) {
    print("Pesan: $pesan");
  }
}

void main() {
  salam("Faishal");                 // tanpa pesan
  salam("Faishal", "Selamat Pagi"); // dengan pesan
}
~~~

**Output:**

![img](./img/Tugas/tp32.png)


### 4. Jelaskan maksud Functions sebagai first-class objects beserta contoh sintaknya!
**Jawab:**
Di Dart, function diperlakukan seperti data biasa (object).
Artinya:
- Bisa disimpan ke variabel.
- Bisa dikirim sebagai parameter ke function lain.
- Bisa dikembalikan (return) dari function lain.
- Inilah yang disebut first-class objects → fungsi diperlakukan setara dengan tipe data lain (int, String, List, dsb).

**Contoh Penerapan:**
~~~Dart
void sapa(String nama) {
  print("Halo, $nama!");
}

void main() {
  // simpan function ke variabel
  var f = sapa;
  f("Faishal"); // memanggil lewat variabel
}
~~~

**Output:**

![img](./img/Tugas/tp32.png)

- Function sapa disimpan ke variabel f dan bisa dipanggil seperti biasa.

### 5. Apa itu Anonymous Functions? 
**Jawab:** Anonymous function adalah sebuah fungsi yang tidak memiliki nama. Fungsi ini sering disebut juga sebagai lambda atau closure. Kegunaan utamanya adalah untuk membuat fungsi "sekali pakai" yang ringkas, biasanya untuk diberikan sebagai argumen ke fungsi lain (seperti dalam metode forEach atau map pada sebuah List). Karena tidak memiliki nama, fungsi ini didefinisikan langsung di tempat ia akan digunakan, membuat kode lebih pendek dan fokus pada tujuannya.

**Contoh Penerapan:**
~~~Dart
void main() {
  var angka = [1, 2, 3, 4];

  // Anonymous function di dalam forEach
  angka.forEach((n) {
    print("Angka: $n");
  });
}
~~~

**Output:**

![img](img/Tugas/tp5.png)

### 6. Jelaskan perbedaan Lexical scope dan Lexical closures! Berikan contohnya!
**Jawab:** 
- **Lexical scope** adalah aturan di mana jangkauan (scope) sebuah variabel ditentukan oleh lokasinya di dalam kode. Artinya, sebuah fungsi yang berada di dalam fungsi lain (inner function) dapat mengakses variabel yang ada di fungsi luarnya (parent function). Sederhananya, ini adalah tentang "di mana" sebuah variabel bisa terlihat dan diakses berdasarkan struktur blok kode {}.

- **Lexical closure**, di sisi lain, adalah sebuah fungsi yang "mengingat" variabel-variabel dari lingkungan tempat ia dibuat (lexical scope-nya), bahkan ketika fungsi tersebut dieksekusi di luar lingkungannya. Sebuah closure adalah objek fungsi yang "menutup" atau membawa serta variabel-variabel dari scope induknya.

**Contoh Penerapan:**
~~~Dart
Function buatCounter() {
  var hitung = 0;

  // fungsi di dalam mengikat (capture) variabel 'hitung'
  return () {
    hitung++;
    return hitung;
  };
}

void main() {
  var counter1 = buatCounter();
  var counter2 = buatCounter();

  print(counter1()); 
  print(counter1()); 
  print(counter2()); 
}
~~~

**Output:**

![img](img/Tugas/tp6.png)

### 7. Jelaskan dengan contoh cara membuat return multiple value di Functions!
**Jawab:**
~~~Dart
// Fungsi mengembalikan 2 nilai dalam bentuk Record
(int, String) getData() {
  return (10, "Halo");
}

void main() {
  var (angka, teks) = getData(); // destructuring
  print("Angka: $angka");
  print("Teks: $teks");
}
~~~

**Output:**

![img](img/Tugas/tp7.png)