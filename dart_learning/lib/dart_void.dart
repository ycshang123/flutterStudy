int getSum(int n) {
  var sum = 0;
  for (var i = 1; i <= n; i++) {
    sum += i;
  }
  return sum;
}

// void main() {
//   var n1 = getSum(5);
//   print(n1);
//   var n2 = getSum(100);
//   print(n2);
// }

//定义一个方法然后打印用戶信息
// String printUserInfo(String username, int age) {
//   return "姓名:$username---年龄:$age";
// }

// void main() {
//   print(printUserInfo('张三', 20));
// }

// 定义一个带可选参数的方法输出
// String printUserInfo(String username, [age]) {
//   if (age != null) {
//     return "姓名:$username---年龄:$age";
//   }
//   return "姓名:$username---年龄:保密";
// }

// void main() {
//   print(printUserInfo('张三', 21));
//   print(printUserInfo('张三'));
// }

// 定义一个带默认参数的方法
// String printUserInfo(String username, [String sex = '男', int age = 20]) {
//   return "姓名:$username!!-性别:$sex!!-年龄:$age";
// }
//
// void main() {
//   print(printUserInfo('张三'));
//   print(printUserInfo('小李', '女'));
//   print(printUserInfo('小李', '女', 30));
// }

//定义一个命名参数的方法输出
String printUserInfo3(String username, {required int age, String sex = '男'}) {
  return "姓名:$username!!-性别:$sex!1年龄:$age";
}

// void main() {
//   print(printUserInfo3('张三', age: 20, sex: '未知'));
// }

// 实现一个把方法当做参数的方法
// var fn = () {
//   print('我是一个匿名方法');
// };
//
// fn1() {
//   print('fn1');
// }
//
// fn2(fn) {
//   fn();
// }
//
// void main() {
//   fn();
//   //调用fn2方法把fn1方法当做参数传入
//   fn2(fn1);
// }

//使用foreach打印list
fn3() {
  List list = ['苹果', '香蕉', '⻄瓜'];
  list.forEach((value) {
    print(value);
  });
  print('************');
  list.forEach((value) => print(value));
  print('************');
  list.forEach((value) => {print(value)});
}

//修改list里 大数据 让数组中大于2的值乘以2
fn4() {
  List list = [4, 1, 2, 3, 4];
  var newList = list.map((value) {
    if (value > 2) {
      return value * 2;
    }
    return value;
  });
  print(newList.toList());
  var newList1 = list.map((value) => value > 2 ? value * 2 : value);
  print(newList1.toList());
}

//定义一个方法判断一个数是否是偶数
//定义一个方法打印1-n以内的所有偶数
bool isEvenNumber(int n) {
  if (n % 2 == 0) {
    return true;
  }
  return false;
}

printNum(int n) {
  for (var i = 1; i <= n; i++) {
    if (isEvenNumber(i)) {
      print(i);
    }
  }
}

// void main() {
//   fn3();
//   fn4();
//   isEvenNumber(22);
//   printNum(10);
// }

// 匿名方法 自执行方法
int getNum(int n) {
  return n;
}

// void main() {
//   print(getNum(12));
//   //匿名方法
//   var printNum = () {
//     print(123);
//   };
//   printNum();
//   var printNum1 = (int n) {
//     print(n + 2);
//   };
//   printNum1(12);
//   //自执行方法
//   ((int n) {
//     print(n);
//     print('我是自执行方法');
//   })(12);
// }

// 方法递归 求1-100的和
// getSum(int n) {
//   if (n == 0) {
//     return 0;
//   }
//   return n + getSum(n - 1);
// }

// void main() {
//   var
//   res = getSum(100);
//   print(res);
// }

//闭包
//全局变量
var a = 123;

void main() {
  print(a); //123
  fn() {
    a++;
    print(a); //124
  }

  fn();

  //局部变量
  printInfo() {
    var myNum = 123;
    myNum++;
    print(myNum); // 124
  }

  printInfo(); //124

  // 闭包
  // 不会污染全局常驻内存
  fn1() {
    var a = 123;
    return () {
      a++;
      print(a);
    };
  }

  var b = fn1();
  b(); // 124
}
