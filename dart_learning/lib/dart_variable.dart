// var
// 如果没有初始值可以变成任何类型
// var a;
// a = 'abcde';
// a = 123;
// a = true;
// a = {'key': 'val123'};
// a = ['abc'];
// 如果有初始值，那么其类型将会被锁定，下⾯语句将会报错
// var a = 'abcde';
// a = 123;

// object
// 动态任意类型，编译阶段检查类型
// Object a = 'abcde';
// a = 123;
// a = [2222];

// dynamic
// 动态任意类型，编译阶段不检查类型
// dynamic a = 'abcde';
// a = 123;
// a = [1111]

// var 初始化确定类型后不可更改类型， Object 以及 dynamic 可以更改类型
// Object 编译阶段检查类型, ⽽ dynamic 编译阶段不检查类型