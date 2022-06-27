abstract class Db {
  // 当作接口
  late String uri;
  //数据库的链接地址
  add(String data);
  save();
  delete();
}
class MySQL implements Db {
  @override
  String uri;

  MySQL(this.uri);

  @override
  add(String data) {
    // TODO: implement add
    print("这是MySQL 的add 方法,$data");
  }

  @override
  delete() {
    // TODO: implement delete
    return null;
  }

  @override
  save() {
    // TODO: implement delete
    return null;
  }

  remove() {}
}
main() {
  MySQL mysql = MySQL("localost:3306");
  //这是MySQL 的add 方法,插入的一条记录
  mysql.add("插入的一条记录");
}
