void main() {
  var listNum = [10, 20, 30];
  for (var items in listNum) {
    factorial(items);
  }
}

void factorial(int numFac) {
  print("------------------Start of $numFac!----------------");
  var baseFactorial = 1.0;
  for (var i = 1; i <= numFac; i++) {
    baseFactorial *= i;
    print("$i! -> ${baseFactorial.round()} ($baseFactorial)");
  }
  print("Nilai faktorial dari $numFac! adalah ${baseFactorial.round()} ($baseFactorial)");
}
