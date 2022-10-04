import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:meteo/model/meteo_model.dart';
class weatherApiClient{
  Future<Meteo>?getCurrentWeather(String? location)async{
    var enPoint = Uri.parse("https://api.openweathermap.org/data/2.5/weather?q=$location&appid=ea181fd7f119607556f0b84d2b5094e9&units=metric");
    var reponse = await http.get(enPoint);
    var body = jsonDecode(reponse.body);
    //Meteo meteo = Meteo.fromJson(body);
    print(Meteo.fromJson(body).cityName);
    return Meteo.fromJson(body);
  }
}
