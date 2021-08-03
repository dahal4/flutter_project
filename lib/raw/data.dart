class RawData {
  final String place;
  final double long;
  final double lat;
  RawData({required this.place, required this.long, required this.lat});
}

List<RawData> loadRawData() {
  var rd = <RawData>[
    RawData(place: "Lagankhel", lat: 30.999, long: 84.848),
    RawData(place: "Sathdobato", lat: 30.999, long: 84.848),
    RawData(place: "Jawlakhel", lat: 30.999, long: 84.848),
    RawData(place: "Ekantakuna", lat: 30.999, long: 84.848),
    RawData(place: "Dhobighat", lat: 30.999, long: 84.848),
    RawData(place: "Balkhu", lat: 30.999, long: 84.848),
    RawData(place: "Kalanki", lat: 30.999, long: 84.848),
    RawData(place: "Swyambhu", lat: 30.999, long: 84.848),
    RawData(place: "Balaju", lat: 30.999, long: 84.848),
    RawData(place: "Basundhara", lat: 30.999, long: 84.848),
    RawData(place: "Ratnapark", lat: 30.999, long: 84.848),
    RawData(place: "Gaushala", lat: 30.999, long: 84.848),
    RawData(place: "Airport", lat: 30.999, long: 84.848),
    RawData(place: "Koteshwor", lat: 30.999, long: 84.848),
    RawData(place: "Gwarko", lat: 30.999, long: 84.848),

  ];
  return rd;
}
