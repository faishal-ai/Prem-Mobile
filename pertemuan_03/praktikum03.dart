void main() {
for (int index = 10; index < 27; index++) {
  if (index == 21)
    break;
  if (index < 7 || index > 20)
    continue;

  print(index);
}

}
