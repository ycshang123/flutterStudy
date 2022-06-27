class Person1 {
  String name;
  num age;

  Person1(this.name, this.age);

  void printInfo() {
    print("$name --- $age");
  }
}

void main() {
  Person1 p1 = Person1('张三', 20);
  //张三 --- 20
  p1.printInfo();

  Person1 p2 = Person1("张三", 20);
  if (p2 is Person1) {
    p2.name = '李四';
  }
  //李四 --- 20
  p2.printInfo();
  //true
  print(p2 is Object);

  Person1 p3 = Person1('张三111', 20);
  //张三111 --- 20
  p3.printInfo();
  p3.name = '张三222';
  p3.age = 40;
  //张三222 --- 40
  p3.printInfo();

  Person1 p4 = Person1("张三", 20);
  //张三 --- 20
  p4.printInfo();
  p4
    ..name = "李四"
    ..age = 30
    ..printInfo();
}
