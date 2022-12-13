import 'dart:convert';
//import 'package:api/model/todo.dart';
import 'package:http/http.dart' as http;

class TodoApi {
  getAll() async {
    const url =
        "https://www.foodchow.com/api/FoodChowWD/AllRestaurantsWDOfferApp?Country=India&city=Surat&area=&longitude=&latitude=&deliveryMethod=&cuisineId=2,1&clientid=&startlimit=0&endlimit=1000&onoffflag";

    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      final response_data = json.decode(response.body);

      final data = json.decode(response_data["data"]);

      return data[0];
    } else {
      return [];
    }
  }
}
