import 'package:ecommer/models/person_model.dart';
import 'package:get/get.dart';
import 'package:http/http.dart';
import 'dart:convert';

class HttpModel extends GetxController {
  // final String id;
  // final String email;
  // final String firstName;
  // final String lastName;

  PersonModelResponse? model;
  var isLoading = true.obs;

  Future<PersonModelResponse> connectToAPi() async {
    var response = await get(Uri.parse('https://reqres.in/api/users/'));

    PersonModelResponse model =
        PersonModelResponse.fromJson(jsonDecode(response.body));

    return model;
  }

  void getApi() async {
    model = await connectToAPi();
    isLoading.value = false;
  }

  @override
  void onInit() {
    // TODO: implement onInit
    super.onInit();
    getApi();
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
