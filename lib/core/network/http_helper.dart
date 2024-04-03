import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:http/http.dart' as http;

import '../errors/exceptions.dart';
import '../service/service_locator.dart';
import 'api_constant.dart';

final httpHelper = sl<HTTPHelper>();

class HTTPHelper {
  // Future get({
  //   required String path,
  //   String? token,
  //   Map<String, dynamic>? queryParameters,
  //   Map<String, dynamic>? body,
  //   Map<String, String>? headers,
  // }) async {
  //   try {
  //     final response = await http.get(Uri.parse(ApiConstant.baseURL + path),
  //       headers: headers ??  {
  //         "Authorization": "Bearer ${AppLocalStorage.getToken}",
  //         "Content-Type": "application/json",
  //         "App-Language": AppLocalStorage.getLanguage()
  //       },
  //     );
  //     return _returnResponse(response);
  //   } on SocketException {
  //     throw NoInternetException('No Internet connection');
  //   }
  // }

  Future post({
    required String path,
    Map<String, dynamic>? queryParameters,
    body,
    Map<String, String>? headers,
  }) async {
    try {
      final response = await http.post(
        Uri.parse(ApiConstant.baseURL + path),
        headers: headers ,
        //     ?? {
        //   "Authorization": "Bearer ${AppLocalStorage.getToken}",
        //   "Content-Type": "application/json",
        // },
        body: body,
      );
      return _returnResponse(response);
    } on SocketException {
      throw NoInternetException();
    }
  }



  dynamic _returnResponse(http.Response response) {
    log(response.body);
    var responseJson;
    if(response.statusCode!=500){
      try{

        responseJson = json.decode(response.body.toString());
      } on FormatException{
        throw FetchDataException(
            'Error occurred in Server try again later');
      }
    }
    if(responseJson.containsKey('error_message')){
      throw FetchDataException(responseJson["error_message"]);
    }
    switch (response.statusCode) {
      case 200:
      case 201:
        return responseJson;
      case 400:
      case 401:
      case 403:
      case 404:
      case 405:
      case 500:
      default:
        throw FetchDataException(
            'Error occurred while Communication with Server with StatusCode : ${response
                .statusCode}');
    }
  }
}
