import 'package:route_finder_final/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:route_finder_final/main.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ShowRoute extends StatefulWidget {
  @override
  _ShowRouteState createState() => _ShowRouteState();
}

class _ShowRouteState extends State<ShowRoute> {

  var points = <LatLng>[
    LatLng(27.666811, 85.323345),
    LatLng(27.666875, 85.323062),
    LatLng(27.666881, 85.322693),
    LatLng(27.668264, 85.321678),
    LatLng(27.669336, 85.321976),
    LatLng(27.669754, 85.321863),
    LatLng(27.670026, 85.321601),
    LatLng(27.671561, 85.318533),
    LatLng(27.671975, 85.316947),
    LatLng(27.672203, 85.315552),
    LatLng(27.672608, 85.313971),
    LatLng(27.672708, 85.313467),
  ];

  var anotherRoute = <LatLng>[
    LatLng(27.6670472, 85.3229302),
    LatLng(27.6668858, 85.3227961),
    LatLng(27.6669048, 85.3225976),
    LatLng(27.6662162, 85.3222167),
    LatLng(27.6655847, 85.3218198),
    LatLng(27.6652048, 85.3215784),
    LatLng(27.6655135, 85.3206825),
    LatLng(27.6651193, 85.3205216),
    LatLng(27.6643691, 85.3202158),
    LatLng(27.6640414, 85.3201407),
    LatLng(27.6637043, 85.3200656),
    LatLng(27.6634479, 85.3199422),
    LatLng(27.6632389, 85.3197062),
    LatLng(27.6627356, 85.3193307),
    LatLng(27.6620505, 85.3188211),
    LatLng(27.6615899, 85.3184134),
    LatLng(27.6614047, 85.3182471),
    LatLng(27.6627010, 85.3165573),
    LatLng(27.6638359, 85.3150767),
    LatLng(27.6647530, 85.3140360),
    LatLng(27.6650714, 85.3134352),
    LatLng(27.6653222, 85.3128022),
    LatLng(27.6660412, 85.3103989),
    LatLng(27.6666206, 85.3083926),
    LatLng(27.6666775, 85.3082693),
    LatLng(27.6670147, 85.3084785),
    LatLng(27.6677518, 85.3090310),
    LatLng(27.6685400, 85.3095299),
    LatLng(27.6692627, 85.3100502),
    LatLng(27.6694907, 85.3102112),
    LatLng(27.6696711, 85.3103828),
    LatLng(27.6698895, 85.3107369),
    LatLng(27.6701982, 85.3112036),
    LatLng(27.6705733, 85.3116918),
    LatLng(27.6711535, 85.3121585),
    LatLng(27.6717708, 85.3125072),
    LatLng(27.6723270, 85.3128612),
    LatLng(27.6727015, 85.3131562),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        title: Text("Route"),
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              plugins: [
                // TappablePolylineMapPlugin(),
              ],
              center: points[1],
              zoom: 14.0,
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
                     PolylineLayerOptions(
                polylines: [
                  // Polyline(
                  //   points: kotToRatnaparkPath,
                  //   color: Colors.blue,
                  //   strokeWidth: 3.0,
                  // ),
                  // Polyline(
                  //   points: ratnaparkToGongabuPath,
                  //   color: Colors.orange,
                  //   strokeWidth: 5,
                  // ),
                  // Polyline(
                  //   points: koteshworToGongabuPath,
                  //   color: Colors.green,
                  //   strokeWidth: 6,
                  // ),
                ],
              ),
              MarkerLayerOptions(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point:points[0],
                    builder: (ctx) => Container(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.blue,
                        size: 24.0,
                        semanticLabel: 'Source place',
                      ),
                    ),
                  ),
                  Marker(
                      width: 80.0,
                      height: 80.0,
                      point: points[1],
                      builder: (ctx) {
                        return Container(
                          child: Icon(
                            Icons.favorite,
                            color: Colors.blue,
                            size: 24.0,
                            semanticLabel:
                                'Text to announce in accessibility modes',
                          ),
                        );
                      }),
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: anotherRoute[0],
                    builder: (ctx) => Container(
                      child: Icon(
                        Icons.favorite,
                        color: Colors.orange,
                        size: 24.0,
                        semanticLabel: 'Source place',
                      ),
                    ),
                  ),
                  Marker(
                      width: 80.0,
                      height: 80.0,
                      point: anotherRoute[anotherRoute.length - 1],
                      builder: (ctx) {
                        return Container(
                          child: IconButton(
                            icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                            color: Colors.orange,
                            iconSize: 24.0,
                            onPressed: () {
                              showModalBottomSheet(
                                  context: context,
                                  builder: (context) {
                                    return Container(
                                        color: Colors.white,
                                        child: Column(
                                          // mainAxisAlignment: MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Row(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Padding(
                                                    padding: EdgeInsets.only(
                                                        left: 30.0)),
                                                Text(
                                                  "Jawlakhel Station",
                                                  style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                  ),
                                                ),
                                                CircleAvatar(
                                                    child: Icon(
                                                        FontAwesomeIcons.car))
                                              ],
                                            ),
                                            Divider(),
                                            Center(
                                                child:
                                                    Text("Pass By Vehicles",style: TextStyle(
                                                  fontSize: 22.0,
                                                  fontWeight: FontWeight.bold),)),
                                           ListTile(
                                              leading: Icon(FontAwesomeIcons.bus),
                                              title: Text('1. Aanapurna Yatayat',style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold),),
                                              onTap: () {
                                                // Update the state of the app
                                                // ...
                                                // Then close the drawer
                                                Navigator.pop(context);
                                              },
                                            ),
                                            ListTile(
                                              leading: Icon(FontAwesomeIcons.bus),
                                              title: Text('2. Nepal Yatayat',style: TextStyle(
                                                  fontSize: 20.0,
                                                  fontWeight: FontWeight.bold),),
                                              onTap: () {
                                                // Update the state of the app
                                                // ...
                                                // Then close the drawer
                                                Navigator.pop(context);
                                              },
                                            ),
                                          ],
                                        ));
                                  });
                            },
                          ),
                        );
                      }),
                
                ],
              ),
             
            ],
          ),
        ],
      ),
    );
  }
}
