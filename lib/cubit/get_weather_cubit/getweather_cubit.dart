import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:h_first/cubit/get_weather_cubit/get_weather_stats.dart';
import 'package:h_first/model/weathermodul.dart';

import '../../servise/weather_api.dart';
import '../../view/home_view.dart';

class getweathercubit extends Cubit<statee>
{
  getweathercubit(super.noweatherstate);

    weathermod?  weathermod1;

getweather({required cityname}) async{

  try {
    weathermod1 = await   weatherst(Dio()).getweather(cname: cityname);

  emit(weatherstate());

} catch (e) {

  
  emit(weatherfaildstats());
  
}
}
}



 
