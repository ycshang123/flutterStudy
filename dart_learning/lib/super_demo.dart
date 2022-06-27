class Person {
  String name;
  num age;

  Person(this.name, this.age);

  void printInfo() {
    print("$name --- $age");
  }

  work() {
    print("$name在工作...");
  }
}

class Web extends Person {
  Web(String name, num age) : super(name, age);

  // String sex;

  // Web(String name, num age, this.sex) : super(name, age);

  // run() {
  //   print("$name---$age--$sex");
  // }

  run() {
    print('run');
    // 子类调用父类的方法
    super.work();
  }

  @override
  void printInfo() {
    print("姓名:$name --- 年龄: $age");
  }

  @override
  work() {
    // TODO: implement work
    print("$name的工作是写代码");
  }
}

void main() {
  Person p = Person("李四", 20);
  //李四 --- 20
  p.printInfo();

  Person p1 = Person("张三", 20);
  //张三 --- 20
  p1.printInfo();

  // Web w = Web("张三", 12);
  //张三 --- 12
  // w.printInfo();

  // Web w = Web("张三", 12, "男");
  // w.printInfo();
  //张三---12--男
  // w.run();

  Web w = Web("李四", 20);
  //姓名:李四 --- 年龄: 20
  w.printInfo();
  //李四的工作是写代码
  w.work();
  //run
  //李四在工作...
  w.run();
}
