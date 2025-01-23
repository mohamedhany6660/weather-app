import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:h_first/cubit/get_weather_cubit/get_weather_stats.dart';
import 'package:h_first/cubit/get_weather_cubit/getweather_cubit.dart';
import 'package:h_first/model/weathermodul.dart';
import 'package:h_first/view/home_view.dart';
import 'package:h_first/wagid/active.dart';
import 'package:h_first/wagid/nooo.dart';
class noactive extends StatefulWidget {
  const noactive({super.key});

  @override
  State<noactive> createState() => _noactiveState();
}

class _noactiveState extends State<noactive> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body:BlocBuilder<getweathercubit,statee>(
        builder: (context, state) {

          if(state is noweatherstate){
            return nooo();
          }else if(state is weatherstate){
            return active();
          }else{

return Text("oops");
          }

          
        },




      )
    );
  }
}