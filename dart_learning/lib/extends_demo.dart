class Person {
  String name = "张三";
  num age = 20;

  void printInfo() {
    print("$name --- $age");
  }
}

class Web extends Person {}

main() {
  Web w = Web();
  //张三
  print(w.name);
  //张三 --- 20
  w.printInfo();
}
