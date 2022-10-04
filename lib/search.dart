import 'package:flutter/material.dart';
import 'package:meteo/meteoItem.dart';
import 'package:meteo/model/meteo_model.dart';
import 'package:meteo/service/meteo_api.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:meteo/information.dart';
import 'main.dart';
class CitySearch extends StatefulWidget {
  @override
  _CitySearchState createState() => _CitySearchState();
}

class _CitySearchState extends State<CitySearch> {
  String ville ='';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        
        child: SafeArea(
            child: Column(
          children: <Widget>[
            Row(
              children: <Widget>[
                Container(
                  child: Icon(Icons.arrow_back_ios),
                  margin: EdgeInsets.only(left: 10.0, top: 10.0),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.only(left: 8.0, right: 30.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  TextField(
                    onChanged: (inputValue) {
                      ville = inputValue;
                    },
                    style: TextStyle(
                      color: Colors.black,
                    ),
                 
                  ),
                  // FlatButton(
                      /* pop to home screen */
                      // onPressed: () {
                        // Navigator.pop(context, ville);
                      // },
                      // child: Container(
                        // margin: EdgeInsets.only(left: 40.0),
                        // child: Text(
                          // "Get weather",
                          // textAlign: TextAlign.center,
                          
                        // ),
                      // ))
                ],
              ),
            ),
          ],
        )),
      ),
    );
  }
}