

import 'package:dio/dio.dart';
import 'package:h_first/model/weathermodul.dart';

class weatherst {
  final Dio dio;
  final String apikey='5d2b757a2a5047f2b3d182305242402';
   final String url='http://api.weatherapi.com/v1';
   weatherst(this.dio);



    
  Future<weathermod> getweather({required String cname}) async {
 
  try {
  Response respwather = await dio.get('$url/forecast.json?key=$apikey&q=$cname&days=1');
  
  weathermod wwathermod =weathermod.fromJson(respwather.data);
  
  return wwathermod;
}  on DioException  catch (e) {
  final String eromasage=e.response ?.data['error']['message']?? "ooops programe fill";

throw Exception(eromasage);
}catch(e){
  throw Exception("filllll");
}

  }



 
}
//5d2b757a2a5047f2b3d182305242402