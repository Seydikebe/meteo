class Meteo{
  String? cityName;
  double? temp;
  double? vent;
  double? humidite;
  double? visibilite;
  int? pression;
  // String? pluie;
  Meteo({
    this.cityName,
    this.temp,
    this.vent,
    this.humidite,
    this.visibilite,
    this.pression,
    // this.pluie

  });
Meteo.fromJson(Map<String, dynamic> json){
  cityName = json["name"];
  temp = json["main"]["temp"];
  vent = json["wind"]["speed"];
  pression = json["main"]["pressure"];
  humidite = json["main"]["humidity"];
  visibilite = json["main"]["feels_like"];
  // pluie = json["rain"]["feel_like"];
  // precipitation = json["rain"]["precipitation"];
}
}