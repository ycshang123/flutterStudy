void varDemo() {
  // var str = 'this is var';
  // String str1 = 'this is string';
  // int str2 = 123;
  // print(str);
  // print(str1);
  // print(str2);

  // 用数据类型定义变量
  // 字符串类型
  String str = '你好dart';
  print(str);
  //数字类型
  int myNum = 123;
  print(myNum);
  //用var定义变量，dart有类型推导
  var str1 = '';
  // str1 = 123; !"报错，只能接收字符串
  print(str1);
  var str2 = "123123";
  print(str2);
  var myNum1 = 123321;
  print(myNum1);
  //命名规则，以下变量名非法
  // var 2str = '123'; 错误
  // var if = 123; 错误
  // 变量名字区分大小写
  var age = 20;
  var Age = 30;
  print(age);
  print(Age);
  // const常量
  const PI = 3.14159; //正确，const常量可以在声明的时候接受赋值
  //PI = 123.1243; //错误, const常量不能再被赋值
  // final 常量
  final age1 = age * 2; //正确，final常量可以接受变量赋值，但是只能设置一次!
  //age1 = age * 3; //错误，final常量只能设置1次
  final date = DateTime.now();
  print(date); //输出：2022-06-26 17:18:15.884583
  // const date1 = DateTime.now(); //报错,const常量只能接收常量值
}

// const值不变一开始就得赋值
// final 可以开始不赋值只能赋一次
// 而final不仅有const的编译时常量的特性，最重要的它是运行时常量，并且final是惰性初始化，即在运行时第一次使用前才初始化
// 永远不改量的量，请使用final或const修饰它，而不是使用var或其他变量类型。
final name = 'Bob';
final String nickname = 'Bobby';
const bar = 1000000;
const double atm = 1.01325 * bar;
