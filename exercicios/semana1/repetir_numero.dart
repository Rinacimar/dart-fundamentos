void main() {
  var count = 1;
  while (count <= 20) {
    var mult_3 = count%3;
    var mult_5 = count%5;
    if (mult_3 == 0 && mult_5 != 0 ) {
      print("Fizz");
    } else if (mult_3 != 0 && mult_5 == 0) {
      print("Buzz");
    } else if (mult_3 == 0 && mult_5 == 0) {
      print("FizzBuzz");
    } else {
      print(count);
    }
    count += 1;
  }
}