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
