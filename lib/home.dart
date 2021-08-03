import 'package:route_finder_final/path/kot_gongabu.dart';
import 'package:route_finder_final/ui/show_route.dart';
import 'package:route_finder_final/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:latlong2/latlong.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_mapbox_autocomplete/flutter_mapbox_autocomplete.dart';

final apikey =
    'pk.eyJ1IjoibWFuaXNoZGFoYWwiLCJhIjoiY2tpYWJkdDB6MGFqbTJzcnRpMmE4OWFlNiJ9.yW5q2POpsb9rkIZetl1omw';
class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _startPointController = TextEditingController();
  final _destinationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    List initialCoordinate = [85.30, 27.700];
    List destinationCoordinate = [85.30, 27.700];

    return Scaffold(
      appBar: AppBar(
        title: Text("Route Finder"),
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(initialCoordinate[1], initialCoordinate[0]),
              zoom: 13.0,
              maxZoom: 18.0,
            ),
            layers: [
              TileLayerOptions(
                  urlTemplate:
                  "https://api.mapbox.com/styles/v1/manishdahal/ckjfdjp13n3j81at47rwkya4n/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoibWFuaXNoZGFoYWwiLCJhIjoiY2tpYWJkdDB6MGFqbTJzcnRpMmE4OWFlNiJ9.yW5q2POpsb9rkIZetl1omw",
                  additionalOptions: {
                    'accessToken': '$apikey',
                    'id': 'mapbox.mapbox-streets-v8'
                  }),
            ],
          ),
          Positioned(
            top: 10.0,
            right: 15.0,
            left: 15.0,
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 5.0),
                      blurRadius: 10,
                      spreadRadius: 3)
                ],
              ),
              child: TextField(
                cursorColor: Colors.black,
                controller: _startPointController,
                decoration: InputDecoration(
                  icon: Container(
                    margin: EdgeInsets.only(left: 20, top: 5),
                    width: 10,
                    height: 10,
                    child: Icon(
                      Icons.location_on,
                      color: Colors.black,
                    ),
                  ),
                  hintText: "Source",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15.0, top: 16.0),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MapBoxAutoCompleteWidget(
                        location: Location(lat: 27.700, lng: 85.30),
                        apiKey: "$apikey",
                        hint: "Select starting point",
                        onSelect: (place) {
                          _startPointController.text = place.placeName!;
                          initialCoordinate = place.geometry!.coordinates!;
                          print(initialCoordinate);
                          print(_startPointController.text);
                        },
                        limit: 10,
                        // country: "nepal" ,
                      ),
                    ),
                  );
                },
              ),
            ),
          ),
          Positioned(
            top: 70.0,
            right: 15.0,
            left: 15.0,
            child: Container(
              height: 50.0,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3.0),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey,
                      offset: Offset(1.0, 5.0),
                      blurRadius: 10,
                      spreadRadius: 3)
                ],
              ),
              child: TextField(
                cursorColor: Colors.black,
                controller: _destinationController,
                textInputAction: TextInputAction.go,
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MapBoxAutoCompleteWidget(
                        apiKey: "$apikey",
                        hint: "Select starting point",
                        onSelect: (place) {
                          _destinationController.text = place.placeName!;
                          destinationCoordinate = place.geometry!.coordinates!;
                          print(destinationCoordinate);
                          print(_destinationController.text);
                        },
                        limit: 10,
                      ),
                    ),
                  );
                },
                decoration: InputDecoration(
                  icon: Container(
                    margin: EdgeInsets.only(left: 20, top: 5),
                    width: 10,
                    height: 10,
                    child: Icon(
                      Icons.local_taxi,
                      color: Colors.black,
                    ),
                  ),
                  hintText: "destination?",
                  border: InputBorder.none,
                  contentPadding: EdgeInsets.only(left: 15.0, top: 16.0),
                ),
              ),
            ),
          ),
          Positioned(
              top: 130.0,
              left: 170.0,
              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Colors.white,
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        offset: Offset(1.0, 5.0),
                        blurRadius: 10,
                        spreadRadius: 3)
                  ],
                ),
                child: IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    if (_startPointController.text ==
                        "Lagankhel, Lalitpur, Lalitpur District, Bagmati, Nepal" &&
                        _destinationController.text ==
                            "Jawlakhel, Lalitpur, Bagmati, Nepal") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => ShowRoute()),
                      );
                    } else if (_startPointController.text ==
                        "Koteshwor, Kathmandu, Kathmandu District, Bagmati, Nepal" &&
                        _destinationController.text ==
                            "Gongabu, Gonggabu, Kathmandu District, Bagmati, Nepal") {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => KotToGong()),
                      );
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Home()),
                      );
                    }
                  },
                ),
              )),
          //
        ],
      ),
    );
  }
}
