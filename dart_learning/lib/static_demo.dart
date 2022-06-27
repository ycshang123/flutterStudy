class Person {
  static String name = "张三";
  int age = 20;

  static void show() {
    print(name);
  }

  void printInfo() {
    /**
     * 非静态方法可以访问静态成员以及非静态成员
     */
    //访问静态属性
    print(name);
    //访问非静态属性
    print(age);
    //调用静态方法
    show();
  }

  static void printUserInfo() {
    //  静态方法
    print(name); //静态属性

    show(); //静态方法
  }
}

main() {
  //张三
  print(Person.name);
  // print(name);
  // print(a)
  //张三
  Person.show();

  Person p = Person();
  p.printInfo();

  Person.printUserInfo();
}
