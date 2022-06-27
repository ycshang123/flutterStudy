import 'interface_demo.dart';

class MySQL implements Db {
  @override
  late String uri;

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
}
