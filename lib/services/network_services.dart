import 'dart:developer';

import 'package:dio/dio.dart';
import 'package:flutter_application_1/common/app_consts.dart';
import 'package:flutter_application_1/models/service_model.dart';
import 'package:flutter_application_1/services/endpoints.dart';

class NetworkServices {
  static   Future<List<Sources> ?>getSources(String catogry) async {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: AppConsts.baseUrl,
        queryParameters: {"apiKey": AppConsts.apiKey},
      ),
    );
    Response response = await dio.get(
      Endpoints.sourcesEndpoints,
      queryParameters: {"category": catogry},
    );
    if (response.statusCode == 200 && response.data != null&&response.data['status'].toString().toLowerCase()=='ok') {
      ServiceModel serviceModel=ServiceModel.fromJson(response.data);
      return serviceModel.sources;
    }
  } //getchanels

  getArticals(String sourceId) {} //getnews
}
