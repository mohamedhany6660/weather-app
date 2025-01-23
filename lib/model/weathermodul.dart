

class weathermod{
  final String country ;
  final String updatetime ;
  final String? image ;
  final double temp ;
  final double maxtemp ;
  final double mintemp;
  final String weacongation ;

  weathermod( { required  this.country,
  required this.updatetime,
   this.image,
   required this.temp,
   required this.maxtemp,
   required this.mintemp,
   required this.weacongation
   });

  factory weathermod.fromJson(json)
  {
    return weathermod(
      image: json ['forecast']['forecastday'][0]['day']['condition']['icon'],
      country: json['location']['name'],
       updatetime:json['current']['last_updated'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c'],
         maxtemp: json ['forecast']['forecastday'][0]['day']['mintemp_f'],
          mintemp: json ['forecast']['forecastday'][0]['day']['maxtemp_f'],
           weacongation: json ['forecast']['forecastday'][0]['day']['condition']['text']
           );
  }
}