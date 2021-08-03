import 'package:route_finder_final/widget/drawer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:latlong2/latlong.dart';

import '../main.dart';

class BusPark extends StatelessWidget {
  // const BusPark({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    var points = <LatLng>[
      LatLng(27.6846999,85.298209), //balkhu
      LatLng(27.6932983501442, 85.2816524449736), //kalanki
      LatLng(27.7056422,85.3143541), //ratnapark
      LatLng(27.7338884,85.3088135), //gongabu
      LatLng(27.6792198131699, 85.3493847604841), //koteshwor
      LatLng(27.672999,85.314722), //jawlakhel
      LatLng(27.66701425774071, 85.32297675794014), //lagankhel
      LatLng(27.688422, 85.335526), //baneshwor
      LatLng(27.6587720088391, 85.3247983753681), //satdobato
    ];

    return Scaffold(
      appBar: AppBar(
        actions: [
          BackButton(
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        title: Text("Bus Stops"),
      ),
      drawer: MyDrawer(),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(27.666810, 85.323345),
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
              MarkerLayerOptions(markers: [
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: points[0],
                  builder: (ctx) {
                    return Container(
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                        color: Colors.red,
                        iconSize: 30.0,
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
                                        Card(
                                          color: Colors.green,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.0)),
                                              Text(
                                                "Koteshwor",
                                                style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.green,
                                                  child: Icon(
                                                      FontAwesomeIcons.car))
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Center(
                                            child: Text(
                                          "Pass By Vehicles",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '1. Aanapurna Yatayat',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '2. Nepal Yatayat',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                      ),
                    );
                  },
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: points[1],
                  builder: (ctx) {
                    return Container(
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                        color: Colors.red,
                        iconSize: 30.0,
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
                                        Card(
                                          color: Colors.green,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.0)),
                                              Text(
                                                "Ratnapark",
                                                style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.green,
                                                  child:
                                                      Icon(FontAwesomeIcons.car))
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Center(
                                            child: Text(
                                          "Pass By Vehicles",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '1. Aanapurna Yatayat',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '2. Nepal Yatayat',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                      ),
                    );
                  },
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: points[2],
                  builder: (ctx) {
                    return Container(
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                        color: Colors.red,
                        iconSize: 30.0,
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
                                        Card(
                                          color: Colors.green,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.0)),
                                              Text(
                                                "Gangabu Buspark",
                                                style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.green,
                                                  child:
                                                      Icon(FontAwesomeIcons.car))
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Center(
                                            child: Text(
                                          "Pass By Vehicles",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '1. Aanapurna Yatayat',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '2. Nepal Yatayat',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                      ),
                    );
                  },
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: points[3],
                  builder: (ctx) {
                    return Container(
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                        color: Colors.red,
                        iconSize: 30.0,
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
                                        Card(
                                          color: Colors.green,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.0)),
                                              Text(
                                                "Koteshwor",
                                                style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.green,
                                                  child:
                                                      Icon(FontAwesomeIcons.car))
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Center(
                                            child: Text(
                                          "Pass By Vehicles",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '1. Aanapurna Yatayat',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '2. Nepal Yatayat',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                      ),
                    );
                  },
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: points[4],
                  builder: (ctx) {
                    return Container(
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                        color: Colors.red,
                        iconSize: 30.0,
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
                                        Card(
                                          color: Colors.green,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.0)),
                                              Text(
                                                "Ratnapark",
                                                style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.green,
                                                  child:
                                                      Icon(FontAwesomeIcons.car))
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Center(
                                            child: Text(
                                          "Pass By Vehicles",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '1. Aanapurna Yatayat',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '2. Nepal Yatayat',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                      ),
                    );
                  },
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: points[5],
                  builder: (ctx) {
                    return Container(
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                        color: Colors.red,
                        iconSize: 30.0,
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
                                        Card(
                                          color: Colors.green,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.0)),
                                              Text(
                                                "Gangabu Buspark",
                                                style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.green,
                                                  child:
                                                      Icon(FontAwesomeIcons.car))
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Center(
                                            child: Text(
                                          "Pass By Vehicles",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '1. Aanapurna Yatayat',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '2. Nepal Yatayat',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                      ),
                    );
                  },
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: points[6],
                  builder: (ctx) {
                    return Container(
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                        color: Colors.red,
                        iconSize: 30.0,
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
                                        Card(
                                          color: Colors.green,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.0)),
                                              Text(
                                                "Koteshwor",
                                                style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.green,
                                                  child:
                                                      Icon(FontAwesomeIcons.car))
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Center(
                                            child: Text(
                                          "Pass By Vehicles",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '1. Aanapurna Yatayat',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '2. Nepal Yatayat',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                      ),
                    );
                  },
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: points[7],
                  builder: (ctx) {
                    return Container(
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                        color: Colors.red,
                        iconSize: 30.0,
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
                                        Card(
                                          color: Colors.green,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.0)),
                                              Text(
                                                "Ratnapark",
                                                style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.green,
                                                  child:
                                                      Icon(FontAwesomeIcons.car))
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Center(
                                            child: Text(
                                          "Pass By Vehicles",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '1. Aanapurna Yatayat',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '2. Nepal Yatayat',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                      ),
                    );
                  },
                ),
                Marker(
                  width: 80.0,
                  height: 80.0,
                  point: points[8],
                  builder: (ctx) {
                    return Container(
                      child: IconButton(
                        icon: Icon(FontAwesomeIcons.mapMarkerAlt),
                        color: Colors.red,
                        iconSize: 30.0,
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
                                        Card(
                                          color: Colors.green,
                                          child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            children: [
                                              Padding(
                                                  padding: EdgeInsets.only(
                                                      left: 30.0)),
                                              Text(
                                                "Gangabu Buspark",
                                                style: TextStyle(
                                                    fontSize: 23.0,
                                                    fontWeight: FontWeight.bold,
                                                    color: Colors.white),
                                              ),
                                              CircleAvatar(
                                                  backgroundColor: Colors.white,
                                                  foregroundColor: Colors.green,
                                                  child:
                                                      Icon(FontAwesomeIcons.car))
                                            ],
                                          ),
                                        ),
                                        Divider(),
                                        Center(
                                            child: Text(
                                          "Pass By Vehicles",
                                          style: TextStyle(
                                            fontSize: 22.0,
                                            color: Colors.green,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        )),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '1. Aanapurna Yatayat',
                                            style: TextStyle(
                                                fontSize: 20.0,
                                                fontWeight: FontWeight.bold,
                                                color: Colors.green),
                                          ),
                                        ),
                                        ListTile(
                                          leading: Icon(FontAwesomeIcons.bus,
                                              color: Colors.green),
                                          title: Text(
                                            '2. Nepal Yatayat',
                                            style: TextStyle(
                                              fontSize: 20.0,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.green,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ));
                              });
                        },
                      ),
                    );
                  },
                ),
              ])
            ],
          ),
        ],
      ),
    );
  }
}
