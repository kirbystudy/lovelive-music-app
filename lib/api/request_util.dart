import 'dart:convert';

import 'package:http/http.dart' as http;

class RequestUtil {
  static RequestUtil? _instance;

  static const String baseUrl =
      "https://lovelive-music-1716821-1310234348.ap-shanghai.run.tcloudbase.com";

  RequestUtil._internal() {
    _instance = this;
  }

  factory RequestUtil() => _instance ?? RequestUtil._internal();

  static Future<T> get<T>(String uri) async {
    final response = await http.get(Uri.parse(baseUrl + uri));
    if (response.statusCode == 200) {
      return jsonDecode(utf8.decode(response.bodyBytes));
    } else {
      throw Exception("请求错误");
    }
  }
}
