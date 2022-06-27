class Person {
  // String name = "张三";
  // int age = 23;
  String name;
  int age;


  //默认构造函数的简写
  Person(this.name,this.age);

  Person.now(this.name,this.age){
    print("我是命名构造函数");
  }

  Person.setInfo(this.name,this.age);


  void getInfo() {
    print("$name ---- $age");
  }

  void setInfo(int age) {
    this.age = age;
  }

//自定义默认构造函数
//   Person() {
//     print("这是构造函数里面的内容，这个方法在实例化的时候触发");
//   }

  void printInfo() {
    print("$name ---- $age");
  }
}

void main() {
  // //先触发构造函数
  // Person p1 = new Person();
  // // 张三
  // print(p1.name);
  // p1.setInfo(28);
  // // 张三 ---- 28
  // p1.getInfo();
  // //张三 ---- 28
  // p1.printInfo();


  //默认实例化类的时候调用的是 默认构造函数
  Person p1 = Person("张三", 20);
  //调用命名构造函数
  Person p2 = Person.now("李四",22);
  Person p3 = Person.setInfo("王五", 24);
  // 我是命名构造函数
  // 张三 ---- 20
  p1.printInfo();
  //李四 ---- 22
  p2.printInfo();
  //王五 ---- 24
  p3.printInfo();
}
