import 'package:route_finder_final/ui/bus_park.dart';
import 'package:route_finder_final/ui/vehicle_info.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            child: Text('Menu'),
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
          ),
          ListTile(
            leading: Icon(Icons.directions_transit),
            title: Text('Vehicle route'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => VehicleInfo()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.bus_alert),
            title: Text('Bus Stops'),
            onTap: () {
               Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BusPark()),
              );
            },
          ),
          ListTile(
            leading: Icon(Icons.info),
            title: Text('About'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
