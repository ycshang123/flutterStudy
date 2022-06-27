class A {
  String info = "this is A";

  void printA() {
    print("A");
  }
}

class B {
  void printB() {
    print("B");
  }
}

class C with A, B {}

void main() {
  var c = C();
  //A
  c.printA();
  //B
  c.printB();
  // this is A
  print(c.info);
}
