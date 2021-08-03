import 'package:route_finder_final/raw/data.dart';
import 'package:flutter/material.dart';

class DataSearch extends SearchDelegate<String> {
  
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.menu_arrow,
        progress: transitionAnimation,
      ),
      onPressed: (){},
      // onPressed: () {
      //   close(context);
      // },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
  return Text(query);
  }

  //     ! CALLS SYNC FUNCTIONS WITHOUT AWAIT !
  @override
  Widget buildSuggestions(BuildContext context) {
    final myPlace = query.isEmpty
        ? loadRawData()
        : loadRawData().where((p) => p.place.startsWith(query)).toList();

    return myPlace.isEmpty? Text('No Result Found...'): ListView.builder(
      itemCount: myPlace.length,
      itemBuilder: (context, index) {
        final RawData listitem = myPlace[index];
        return ListTile(
         
          title: Column(
            children: [
              
              Text(
                listitem.place,
                style: TextStyle(fontSize: 20),
              ),
              Divider(),
            ],
          ),
          onTap: (){
            query=listitem.place;
          },
        );
        
      },
    );
  }
}
