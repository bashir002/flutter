import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:my_new_project/screen/weather.dart';

class HttpHelper {
  // https://api.openweathermap.org/data/2.5/weather?q=London&appid=3622fe33f36a31b41830deb2a4b96790
  //https://api.openweathermap.org/data/2.5/weather?q=Nigeria&appid=3622fe33f36a31b41830deb2a4b96790
  final String authority = 'api.openweathermap.org';
  final String path = 'data/2.5/weather';
  final String apiKey = '3622fe33f36a31b41830deb2a4b96790';

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parameters = {'q': location, 'appId': apiKey };
    Uri uri = Uri.https(authority, path, parameters);
    http.Response result = await http.get(uri);
Map<String, dynamic> data = json.decode(result.body);
Weather weather = Weather.fromJson(data);
    return weather;

  }
}
