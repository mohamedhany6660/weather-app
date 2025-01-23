
import 'package:flutter/material.dart';
import 'package:h_first/view/home_view.dart';
class nooo extends StatelessWidget {
  const nooo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text("Weather App"),
        actions: [
          IconButton(onPressed: (){
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => view(),));
          }, icon:Icon(Icons.search_off_outlined))

        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center( child: Text("what the country you want to you the weather state",style: TextStyle(fontSize: 30),),)
          ],
        ),
      ),
    );
  }
}

