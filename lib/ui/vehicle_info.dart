import 'package:route_finder_final/ui/vehicle_route_show.dart';
import 'package:flutter/material.dart';

class VehicleInfo extends StatelessWidget {
  // const VehicleInfo({Key key}) : super(key: key);
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: BackButton(onPressed:(){Navigator.pop(context);},),
          title: Text('Vehicle Info'),
        ),
        body: Container(
          child: ListView(
            scrollDirection: Axis.vertical,
            addAutomaticKeepAlives: false,
            children: [
               ListTile(
                 leading: Text("1."),
              trailing: Icon(Icons.directions_transit),
              title: Text('Nepal Yatayat',style: TextStyle(
                    fontSize: 22.0),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VehicleRouteShow()),
                );
              },
            ),
               ListTile(
                 leading: Text("2."),
              trailing: Icon(Icons.directions_transit),
              title: Text('Mahanagar Yatayat',style: TextStyle(
                    fontSize: 22.0),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VehicleRouteShow()),
                );
              },
            ),   ListTile(
                 leading: Text("3."),
              trailing: Icon(Icons.directions_transit),
              title: Text('Saja Yatayat',style: TextStyle(
                    fontSize: 22.0),),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => VehicleRouteShow()),
                );
              },
            ),
             
            ],
          ),
        ),
      ),
    );
  }
}
