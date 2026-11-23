void main() {
  // for loop

  for (int i = 0; i < 10; i++) {

    if (i == 5) {
      print('skip when i = 5');
      continue;
    }

    if (i == 9) {
      print('break when i = 9');
      break;
    }
    print("operating for loop : $i");
  }
  int stop = 10;
  int start = 1;
  //while loop
  while (start < stop) {
    print("travarsing while lopp: $start");
    start++;
  }

  //do while loop
  int j = 1;

  do {
    print(j);
    j++;
  } while (j <= 5);


}
