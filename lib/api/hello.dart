import 'package:http/http.dart' as http;

const String baseUrl = "https://lovelive-music-1716821-1310234348.ap-shanghai.run.tcloudbase.com";

Future<String> sayHello() async{
  final response = await http.get(Uri.parse(baseUrl + '/hello'));
  if (response.statusCode == 200) {
    //如果服务器确实返回了200 OK响应，然后解析JSON。
    return response.body;
  } else {
    //如果服务器没有返回200 OK响应，然后抛出一个异常。
    throw Exception('请求错误');
  }
}
