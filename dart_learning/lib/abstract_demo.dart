abstract class Animal {
  //抽象方法
  eat();

  //抽象方法
  run();

  printInfo() {
    print("我是一个抽象类里面的普通方法");
  }
}

class Dog extends Animal{
  @override
  eat() {
    // TODO: implement eat
    print('小狗在吃骨头');
  }

  @override
  run(){
    print("小狗在跑");
  }
}

class Cat extends Animal{

  @override
  eat() {
    // TODO: implement eat
    print('小猫在吃老鼠');
  }

  @override
  run(){
    print("小猫在跑");
  }

}

main(){
  Dog d = Dog();
  // 小狗在吃骨头
  // 我是一个抽象类里面的普通方法
  d.eat();
  d.printInfo();

  Cat c = Cat();
  // 小猫在吃老鼠
  // 我是一个抽象类里面的普通方法
  c.eat();
  c.printInfo();


}
