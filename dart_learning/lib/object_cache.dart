abstract class ObjectCache {
  getByKey(String key);

  void setByKey(String key, Object value);
}

abstract class StringCache {
  getByKey(String key);

  void setByKey(String key, String value);
}

abstract class Cache<T> {
  getByKey(String key);

  void setByKey(String key, T value);
}

class FileCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("内存缓存把key=$key，value=$value写到了内存中");
  }
}

class MemoryCache<T> implements Cache<T> {
  @override
  getByKey(String key) {
    return null;
  }

  @override
  void setByKey(String key, T value) {
    print("内存缓存把key=$key，value=$value写到了内存中");
  }
}

void main() {
  MemoryCache m = MemoryCache<String>();
  //内存缓存把key=index，value=首⻚数据写到了内存中
  m.setByKey('index', '首⻚数据');
  MemoryCache m1 = MemoryCache<Map>();
  //内存缓存把key=index，value={name: 张三, age: 20}写到了内存中
  m1.setByKey('index', {"name": "张三", "age": 20});
}
