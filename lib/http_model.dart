import 'package:http/http.dart';
import 'dart:convert';

class HttpModel {
  // final String id;
  // final String email;
  // final String firstName;
  // final String lastName;
  // final String avatar;

  int? id;
  String? email;
  String? fullName;
  String? avatar;

  HttpModel({this.id, this.email, this.fullName, this.avatar});

  static Future<HttpModel> connectToAPi(int id) async {
    Response response = await get(Uri.parse('https://reqres.in/api/users/$id'));

    var data = json.decode(response.body);

    return HttpModel(
      id: data['data']['id'],
      email: data['data']['email'],
      fullName: data['data']['first_name'] + "" + data['data']['last_name'],
      avatar: data['data']['avatar'],
    );
  }

//   factory HttpModel.fromJson(Map<String, dynamic> json) {
//     return HttpModel(
//       id: data['id'],
//       email: json['email'],
//       fullName: json['first_name'] + json['last_name'],
//       avatar: json['avatar'],
//     );
//   }
// }

// Future<List<HttpModel>> fetchData() async {
//   Response response = await get(Uri.parse('https://reqres.in/api/users/'));
//   List<dynamic> listJson = json.decode(response.body)['data'];
//   return listJson.map((e) => HttpModel.fromJson(e)).toList();
// }
}
