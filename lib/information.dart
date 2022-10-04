import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget informations(
    String vent, String humidite, String pression, String visibilite) {
  return Container(
    // width: double.infinity,
    // padding: EdgeInsets.all(35.0),
    child: Card(
      color: Colors.blue,
      margin: EdgeInsets.all(100.0),
      elevation: 12,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "   Vent",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "   humidite",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "   Pression",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "   Visibilite",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.white),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  // Text("Pluie",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                  // SizedBox(height: 18.0,),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "$vent ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.yellow),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "$humidite ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.yellow),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "$pression ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.yellow),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  Text(
                    "$visibilite ",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.normal,color: Colors.yellow),
                  ),
                  SizedBox(
                    height: 18.0,
                  ),
                  // Text("$pluie",style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal),),
                  // SizedBox(height: 18.0,),
                ],
              ),
            ],
          ),
        ],
      ),
    ),
  );
}
