import 'dart:convert';
import 'dart:developer';
import 'dart:io';

import 'package:http/http.dart' as http;
import 'package:upcareer/model/api_model.dart';

import '../constant/openAiConstants.dart';

class ApiService {
  // This method send us response from the server
  Future<List<ApiModel>> getModels() async {
    try {
      // get method give data from the server
      final response = await http.get(Uri.parse("$BASE_URL/models"),
          headers: {"Authorization": "Bearer $API_KEY"});
// decode response from the server
      Map jsonResponse = jsonDecode(response.body);
      // print('decode response: $jsonResponse');  [[Working correctly]]

      //If any error occur then this if condition will work
      if (jsonResponse['error'] != null) {
        print("jsonResponse['error']: ${jsonResponse['error']['message']}");
        throw HttpException(jsonResponse['error']['message']);
      }
      List temp = [];
      for (int i in jsonResponse["data"]) {
        temp.add(i);
        log("Temp value is: ${temp[i]}");
      }
      return ApiModel.modelList(temp);
// print("json response $jsonResponse");
    } catch (e) {
      log("Error from api service file: $e");
      rethrow;
    }
  }
}
