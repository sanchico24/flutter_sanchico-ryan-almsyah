import 'package:dio/dio.dart';

import '../models/contact.dart';

class APIClient {
  final _basePath =
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/contacts';

  final _dio = Dio();

  Future<Contact> postContact() async {
    var response = await _dio.post(_basePath);
    return Contact.fromJson(response.data);
  }

  Future<Contact> getContact({int id = 2}) async {
    var response = await _dio.get('$_basePath/$id');
    var cp = Contact.fromJson(response.data);
    return response.statusCode == 200 ? cp : Contact();
  }
}
