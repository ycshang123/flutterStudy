abstract class Animal {
  //抽象方法
  eat();
}

class Dog extends Animal{
  @override
  eat() {
    // TODO: implement eat
    print('小狗在吃骨头');
  }

  run(){
    print("run");
  }
}

class Cat extends Animal{

  @override
  eat() {
    // TODO: implement eat
    print('小猫在吃老鼠');
  }
  run(){
    print("run");
  }

}

main(){
  Animal d = Dog();
  // 小狗在吃骨头
  d.eat();
  Animal c = Cat();
  // 小猫在吃老鼠
  c.eat();
}
