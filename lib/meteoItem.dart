import 'package:flutter/material.dart';
import 'package:meteo/information.dart';
import 'package:meteo/model/meteo_model.dart';
import 'package:meteo/service/meteo_api.dart';
import 'package:meteo/main.dart';
Widget ActuelMeteo(IconData icon,String temp,String localisation){
  return Center(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        
        Icon(icon,color: Colors.yellow,size: 65,),
        SizedBox(height: 20.0,),
        Text("$temp",style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
        SizedBox(height: 10.0,),
        Text("$localisation",style: TextStyle(color: Color.fromARGB(255, 0, 26, 255),fontSize: 30,fontWeight: FontWeight.normal),),
        SizedBox(height: 20.0,),
        
      ],
    ),
  );
}
