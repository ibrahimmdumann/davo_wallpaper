import 'dart:convert';

import 'package:davodeneme/shared/models/photo_model.dart';
import 'package:davodeneme/shared/services/service_interceptor.dart';
import 'package:dio/dio.dart';

class PhotoService {
  final DioClient _dioClient = DioClient();

  Future<Photo> getPhoto() async {
    Response response = await _dioClient.dio.get('/api.php?home');
    return photoFromJson(response.data);
  }
}
