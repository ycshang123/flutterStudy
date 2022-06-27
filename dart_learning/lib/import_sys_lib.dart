//导入系统内置库
import 'dart:math';
import 'dart:io';
import 'dart:convert';

void main() async {
  //12
  print(min(12, 23));
  //25
  print(max(12, 25));
  var result = await getDataFromZhihuAPI();
  print(result);
}

getDataFromZhihuAPI() async {
  //1、创建HttpClient对象
  var httpClient = HttpClient();
  //2、创建Uri对象
  var uri = Uri.http('news-at.zhihu.com', '/api/3/stories/latest');
  //3、发起请求，等待请求
  var request = await httpClient.getUrl(uri);
  //4、关闭请求，等待响应
  var response = await request.close();
  //5、解码响应的内容
  return await response.transform(utf8.decoder).join();
}
