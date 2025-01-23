import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:h_first/cubit/get_weather_cubit/getweather_cubit.dart';
import 'package:h_first/main.dart';

import '../view/home_view.dart';
class active extends StatefulWidget {
  const active({super.key});

  @override
  State<active> createState() => _activeState();
}

class _activeState extends State<active> {
  @override
  Widget build(BuildContext context) {
    
    var weathermod=BlocProvider.of<getweathercubit>(context).weathermod1;
    return Scaffold(
       appBar: AppBar(
        title: Text("Weather App"),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => view(),));
          }, icon:Icon(Icons.search_off_outlined))

        ],
      ),
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              getThemeColor(weathermod!.weacongation),
              getThemeColor(weathermod.weacongation)[300]!,
               getThemeColor(weathermod.weacongation)[50]!,
            ]
          )
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(weathermod.country,style: TextStyle(fontSize: 27),),
              ],
            ),
             Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("updated at: ${stringtodatatime(weathermod.updatetime).hour}:${stringtodatatime(weathermod.updatetime).minute}",style: TextStyle(fontSize: 21),),
              ],
            ),
          SizedBox(height: 30,),
            Row( children: [
              Container(
                height: 100,
                width: 200,
                child: Image.asset(weathermod.temp>=17?"image/w1.jpg":"image/w3.jpg"),
              ),
               Text("${weathermod.temp}",style: TextStyle(fontSize: 30),),
               SizedBox(width: 24,)
               ,Column(children: [
                Text("max temp ${weathermod.maxtemp}"),
                Text("min temp ${weathermod.mintemp}"),
               ],),
      
            
            ],),
       SizedBox(height: 30,),
              Text("${weathermod.weacongation}",style: TextStyle(fontSize: 34),)
          ],
        ),
      ),
    );
  }
}

DateTime stringtodatatime(String value){
  return DateTime.parse(value);
}