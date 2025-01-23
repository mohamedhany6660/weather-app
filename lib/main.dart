

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:h_first/cubit/get_weather_cubit/get_weather_stats.dart';
import 'package:h_first/cubit/get_weather_cubit/getweather_cubit.dart';
import 'package:h_first/view/home_view.dart';
import 'package:h_first/wagid/active.dart';
import 'package:h_first/wagid/noactive.dart';


void main() {
  runApp(BlocProvider(
    create: (context) => getweathercubit(noweatherstate()),
    child: custommaterialapp(),
  )
    )
  ;

 
}

class custommaterialapp extends StatelessWidget {
  const custommaterialapp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<getweathercubit,statee>(
      builder:(context, state) => MaterialApp (
        theme: ThemeData(
          primarySwatch: getThemeColor(BlocProvider.of<getweathercubit>(context).weathermod1?.weacongation)
        ),
      
        debugShowCheckedModeBanner: false,
        home: 
        const noactive()
      
      ),
    );
  }
}

 
   
MaterialColor getThemeColor(String? condition) {

  if(condition==null){
    return Colors.blue;
  }
  switch (condition) {
    case "Sunny":
      return Colors.orange;
    case "Partly cloudy":
      return Colors.blue;
    case "Cloudy":
      return Colors.grey;
    case "Overcast":
      return Colors.grey;
    case "Mist":
      return Colors.grey;
    case "Patchy rain possible":
      return Colors.lightBlue;
    // Add more cases for other conditions as needed
    case "Blowing snow":
      case "Blizzard":
    case "Fog":
      return Colors.blue;
    case "Freezing fog":
      return Colors.grey;
    case "Patchy light drizzle":
      return Colors.lightBlue;
    case "Light drizzle":
      return Colors.lightBlue;
    case "Freezing drizzle":
      return Colors.lightBlue;
    case "Heavy freezing drizzle":
      return Colors.blueGrey;
    case "Patchy light rain":
      return Colors.lightGreen;
    case "Light rain":
      return Colors.lightGreen;
    case "Moderate rain at times":
      return Colors.green;
    case "Moderate rain":
      return Colors.blue;
    case "Heavy rain at times":
      return Colors.green;
    case "Heavy rain":
      return Colors.blue;
    case "Light freezing rain":
      return Colors.blueGrey;
    case "Moderate or heavy freezing rain":
      return Colors.blueGrey;
    case "Light sleet":
      return Colors.blueGrey;
    case "Moderate or heavy sleet":
      return Colors.blueGrey;
    case "Patchy light snow":
      return Colors.blueGrey;
    case "Light snow":
      return Colors.blueGrey;
    case "Patchy moderate snow":
      return Colors.blueGrey;
    case "Moderate snow":
      return Colors.blueGrey;
    case "Patchy heavy snow":
      return Colors.blueGrey;
    case "Heavy snow":
      return Colors.blueGrey;
    case "Ice pellets":
      return Colors.blueGrey;
    case "Light rain shower":
      return Colors.cyan;
    case "Moderate or heavy rain shower":
      return Colors.cyan;
    case "Torrential rain shower":
      return Colors.cyan;
    case "Light sleet showers":
      return Colors.blueGrey;
    case "Moderate or heavy sleet showers":
      return Colors.blueGrey;
    case "Light snow showers":
      return Colors.blueGrey;
    case "Moderate or heavy snow showers":
      return Colors.blueGrey;
    case "Light showers of ice pellets":
      return Colors.blueGrey;
    case "Moderate or heavy showers of ice pellets":
      return Colors.blueGrey;
    case "Patchy light rain with thunder":
      return Colors.amber;
    case "Moderate or heavy rain with thunder":
      return Colors.red;
    case "Patchy light snow with thunder":
      return Colors.deepPurple;
    case "Moderate or heavy snow with thunder":
      return Colors.deepPurple;
    default:
      return Colors.blue; // Default color if the condition is not matched
  }
}
  