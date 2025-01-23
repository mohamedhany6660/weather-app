


import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:h_first/cubit/get_weather_cubit/getweather_cubit.dart';
import 'package:h_first/model/weathermodul.dart';

class view extends StatelessWidget {
  const view({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onSubmitted: (value) async {
    var getweathercubit1 = BlocProvider.of<getweathercubit>(context);
    getweathercubit1.getweather(cityname: value);

      Navigator.of(context).pop();
              },
              decoration: InputDecoration(
                label:Text("weather"),
                hintText: "country",
                contentPadding: EdgeInsets.all(30),
                //prefixIcon: Icon(Icons.search),
                suffixIcon:  Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: BorderSide(width: 200)
                )
                
              ),
            )
          ],
        ),
      )
    );
  }
}

 weathermod? weathermod1 ;