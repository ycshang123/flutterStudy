// ?.
// A?.B
// 如果 A 等于 null，那么 A?.B 为 null
// 如果 A 不等于 null，那么 A?.B 等价于 A.B

// ??
// A??B
// 如果 A 等于 null，那么 A??B 为 B
// 如果 A 不等于 null，那么 A??B 为 A

// ?.??
// A?.b??'为空'
// A为空返回b 如果b为空返回字符----为空
// A.xxx??b
// A.xxx为空则返回b的值

// void main() {
//   Animal animal = new Animal('cat');
//   Animal empty;
//   // animal ⾮空，返回 animal.name 的值 cat
//   print(animal?.name);
//   // empty 为空，返回 null
//   print(empty?.name);
//   // animal ⾮空，可以直接访问 animal.name 的值 cat
//   print(animal.name);
//   // empty 为空，抛出异常
//   print(empty.name);
// }
//
// class Animal {
//   final String name;
//
//   Animal(this.name);
// }
