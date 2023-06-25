import 'package:mp12cuaca/model/model_cuaca.dart';
import 'package:dio/dio.dart';

class CuacaService {
  final dio = Dio();

  Future<CuacaModel> getCurrentWeather(String cityName) async {
    final response = await dio.get(
        'https://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=36985a8872ba531fee7e2b8ede9296b8&units=metric');
    print(response.requestOptions.path);

    return CuacaModel.fromJson(response.data);
  }
}
