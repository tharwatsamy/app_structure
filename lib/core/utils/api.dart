import 'dart:convert';
import 'dart:developer';
import 'dart:io';
import 'package:app_structure/core/network/network_info.dart';
import 'package:http_parser/http_parser.dart';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';

import '../Error/exceptions.dart';

class Api {
  final _baseUrl = '';

  final NetWrokInfo networkInformation;

  Api(this.networkInformation);

  Future<Response> get({
    required String endPoint,
    userToken,
    String? lang,
  }) async {
    log('Calling $_baseUrl$endPoint , with token $userToken');
    Map<String, dynamic> headers = {};
    headers.addAll({'Accept': 'application/json'});
    if (userToken != null) {
      headers.addAll({'Authorization': 'Bearer $userToken'});
    }
    if (lang != null) {
      headers.addAll({'Accept-Language': lang});
    }
    await checkConnectitvity();
    var response = await Dio()
        .get('$_baseUrl$endPoint', options: Options(headers: headers));

    return response;
  }

  Future<Response> post({
    required endPoint,
    @required dynamic body,
    String? bearerToken,
  }) async {
    log('Calling $_baseUrl$endPoint with body $body  and bearerToken = $bearerToken');

    Map<String, dynamic> headers = {};
    headers.addAll({'accept': 'application/json'});

    if (bearerToken != null) {
      headers.addAll({
        'Authorization': 'Bearer $bearerToken',
      });
    }
    await checkConnectitvity();
    var response = await Dio().post(
      '$_baseUrl$endPoint',
      options: Options(headers: headers),
      data: FormData.fromMap(body),
    );

    log(response.data.toString());
    return response;
  }

  Future<Response> put(
      {required String endUrl, dynamic body, String? bearerToken}) async {
    Map<String, dynamic> headers = {
      'Accept': 'application/json',
    };
    if (bearerToken != null) {
      headers.addAll({'Authorization': 'Bearer $bearerToken'});
    }
    await checkConnectitvity();

    var response = await Dio().put(
      "$_baseUrl$endUrl",
      data: FormData.fromMap(body),
      options: Options(
          headers: headers, contentType: Headers.formUrlEncodedContentType),
    );

    return response;
  }

  Future<void> checkConnectitvity() async {
    bool isConnected = await networkInformation.isConnected;
    if (!isConnected) throw NetWorkException();
  }
}
