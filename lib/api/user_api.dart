import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:http/http.dart' as http;

class Places {
  final String name;

  const Places({
    required this.name,
  });

  static Places fromJson(Map<String, dynamic> json) => Places(
    name: json['name'],
  );
}

class PlacesApi {

  static Future<List<Places>> getUserSuggestions(String query) async {
    final String response = await rootBundle.loadString('api/place.json');


      final List users = json.decode(response);

      return Places.map((json) => Places.fromJson(json)).where((Places) {
        final nameLower = Places.name.toLowerCase();
        final queryLower = query.toLowerCase();

        return nameLower.contains(queryLower);
      }).toList();
    }
  }
}