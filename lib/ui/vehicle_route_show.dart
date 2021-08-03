import 'package:route_finder_final/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:route_finder_final/main.dart';

class VehicleRouteShow extends StatelessWidget {
  get nepalYatayat => <LatLng>[
        // LatLng(initialCoordinate[1], initialCoordinate[0]),
        LatLng(27.6943884, 85.3668818),
        LatLng(27.6944845, 85.3667575),
        LatLng(27.6946103, 85.3667763),
        LatLng(27.6948904, 85.3668916),
        LatLng(27.6959917, 85.3668675),
        LatLng(27.6965946, 85.3668621),
        LatLng(27.6967014, 85.3667790),
        LatLng(27.6967537, 85.3666154),
        LatLng(27.6967370, 85.3664383),
        LatLng(27.6966872, 85.3663096),
        LatLng(27.6962433, 85.3657490),
        LatLng(27.6958921, 85.3647593),
        LatLng(27.6951049, 85.3625894),
        LatLng(27.6941270, 85.3621924),
        LatLng(27.6929435, 85.3617471),
        LatLng(27.6926089, 85.3613555),
        LatLng(27.6920036, 85.3613046),
        LatLng(27.6914837, 85.3612804),
        LatLng(27.6911016, 85.3614146),
        LatLng(27.6908927, 85.3614414),
        LatLng(27.6906007, 85.3613260),
        LatLng(27.6892788, 85.3603873),
        LatLng(27.6881156, 85.3594458),
        LatLng(27.6850589, 85.3569567),
        LatLng(27.6780892, 85.3533411),
        LatLng(27.6770541, 85.3528905),
        LatLng(27.6760665, 85.3528154),
        LatLng(27.6753543, 85.3527832),
        LatLng(27.6754588, 85.3513455),
        LatLng(27.6763609, 85.3500795),
        LatLng(27.6779622, 85.3496289),
        LatLng(27.6785794, 85.3496182),
        LatLng(27.6799943, 85.3495002),
        LatLng(27.6821902, 85.3493822),
        LatLng(27.6835195, 85.3490710),
        LatLng(27.6840323, 85.3487599),
        LatLng(27.6848679, 85.3480411),
        LatLng(27.6852762, 85.3475261),
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
        title: Text("Final Customization"),
      ),
      drawer: MyDrawer(),
     
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(27.666811, 85.323345),
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
              // MarkerLayerOptions(
              //   markers: [
              //     Marker(
              //       width: 80.0,
              //       height: 80.0,
              //       point: points[6],
              //       builder: (ctx) => Container(
              //         child: Icon(
              //           Icons.favorite,
              //           color: Colors.pink,
              //           size: 24.0,
              //           semanticLabel: 'Source place',
              //         ),
              //       ),
              //     ),
              //     Marker(
              //         width: 80.0,
              //         height: 80.0,
              //         point:points[0],
              //         builder: (ctx) {
              //           return Container(
              //             child: Icon(
              //               Icons.favorite,
              //               color: Colors.pink,
              //               size: 24.0,
              //               semanticLabel:
              //                   'Text to announce in accessibility modes',
              //             ),
              //           );
              //         }),
              //   ],
              // ),
              PolylineLayerOptions(polylines: [
                Polyline(
                    points: nepalYatayat, color: Colors.blue, strokeWidth: 3.0)
              ])
            ],
          ),
        ],
      ),
   
    );
  }
}
