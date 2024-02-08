import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ApiClient extends http.BaseClient {

  @override
  Future<http.StreamedResponse> send(http.BaseRequest request) {
    debugPrint('${request.method} => ${request.url} \n ${request.headers}');
    return request.send().then((value) {
      debugPrint('${value.statusCode} <= ${value.reasonPhrase}');
      return value;
    }).catchError((error) {
      debugPrint(error.toString());
      return http.StreamedResponse(
          Stream.fromIterable([error.toString().codeUnits]), 500);
    });
  }

  @override
  Future<http.Response> get(url, {Map<String, String>? headers}) {
    return super.get(url, headers: headers).then((value) {
      debugPrint(value.body);
      return value;
    }).catchError((error) {
      debugPrint(error.toString());
    });
  }

  @override
  Future<http.Response> post(url,
      {Map<String, String>? headers, body, Encoding? encoding}) {
    return super
        .post(url, headers: headers, body: body, encoding: encoding)
        .then((value) {
      debugPrint(value.body);
      return value;
    }).catchError((error) {
      debugPrint(error.toString());
    });
  }
}
