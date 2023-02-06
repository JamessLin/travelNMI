import 'package:http/http.dart' as http;
import 'package:app/config.dart'; 
import 'dart:convert' as convert;

class LocationService {
  
  Future<String> getPlaceID(String input) async {
    final String url = 'https://maps.googleapis.com/maps/api/place/findplacefromtext/json?input=$input&inputtype=textquery&key=$APIkey';
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var placeId = json['candidates'][0]['place_id'] as String;
    return placeId;
  }

  Future<Map<String, dynamic>> getPlace(String input) async {
    final pid = await getPlaceID(input);
    final String url = "https://maps.googleapis.com/maps/api/place/details/json?place_id=$pid&key=$APIkey";
    var response = await http.get(Uri.parse(url));
    var json = convert.jsonDecode(response.body);
    var results = json['result'] as Map<String, dynamic>;
    return results;
  }
}
