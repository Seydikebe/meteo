import 'package:flutter/material.dart';
import 'package:meteo/meteoItem.dart';
import 'package:meteo/model/meteo_model.dart';
import 'package:meteo/service/meteo_api.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:meteo/information.dart';
import 'search.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  weatherApiClient client = weatherApiClient();
  Meteo? data;
  // @override
  // void initState() {
  //   // TODO: implement initState
  //   super.initState();
  //   client.getCurrentWeather("Dakar");
  // }

  Future<void> getData() async {
    data = await client.getCurrentWeather("Malika");
  }

  // TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(
        title: Text("Jawwu ji"),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              // method to show the search bar
              showSearch(
                  context: context,
                  // delegate to customize the search bar
                  delegate: CustomSearchDelegate());
            },
            icon: const Icon(Icons.search),
          )
        ],
      ),
      //bar de navigation
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            UserAccountsDrawerHeader(
              accountName: Text(
                'Jawwu Ji',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),
              accountEmail: Text('Votre météo en temps réel'),
            ),
            ListTile(
              leading: Icon(Icons.mail, color: Colors.redAccent),
              title: Text('E-mail'),
              onTap: () => launch('mailto:kebeseydina56@gmail.com'),
            ),
            ListTile(
              leading: Icon(Icons.speaker, color: Colors.black),
              title: Text('Apropos'),
              onTap: () => launch('mailto:kebeseydina56@gmail.com'),
            ),
            ListTile(
              // leading: Icon(Icons.mail, color: Colors.redAccent),
              title: Text('  Version 1.0'),
            ),
          ],
        ),
      ),
      // barre de recherche
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('images/pluie.jpg')
            
            ),
        ),
        
        child:  FutureBuilder(
          future: getData(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.done) {
              return Column(
      
                // mainAxisAlignment: MainAxisAlignment.center,
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //search bar
                  // wideget actuel meteo
                  ActuelMeteo(Icons.wb_sunny_rounded, "${data!.temp}°",
                      "${data!.cityName}"),
                  SizedBox(
                    height: 10.0,
                  ),
                  // Divider(),
                  // SizedBox(
                  //   height: 10.0,
                  // ),
                  Text(
                    "Informations :",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),

                  informations(
                    "${data!.vent} km/h",
                    "${data!.humidite} %",
                    "${data!.pression} mb",
                    "${data!.visibilite} km",
                    // "${data!.pluie} %"
                  ),
                ],
              );
            }
            return Container();
          }),

      ),
    );
  }
}

class CustomSearchDelegate extends SearchDelegate {
// Demo list to show querying
  List<String> searchTerms = [
    // "Dakar",
    // "Bamako",
    // "Tunis",
    // "Rome",
    // "Addis Abeba",
    // "Caire",
  ];

// first overwrite to
// clear the search text
  @override
  List<Widget>? buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = '';
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

// second overwrite to pop out of search menu
  @override
  Widget? buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        close(context, null);
      },
      icon: Icon(Icons.arrow_back),
    );
  }

// third overwrite to show query result
  @override
  Widget buildResults(BuildContext context) {
    List<String> matchQuery = [];
    for (var villes in searchTerms) {
      if (villes.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(villes);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }

// last overwrite to show the
// querying process at the runtime
  @override
  Widget buildSuggestions(BuildContext context) {
    List<String> matchQuery = [];
    for (var villes in searchTerms) {
      if (villes.toLowerCase().contains(query.toLowerCase())) {
        matchQuery.add(villes);
      }
    }
    return ListView.builder(
      itemCount: matchQuery.length,
      itemBuilder: (context, index) {
        var result = matchQuery[index];
        return ListTile(
          title: Text(result),
        );
      },
    );
  }
}
