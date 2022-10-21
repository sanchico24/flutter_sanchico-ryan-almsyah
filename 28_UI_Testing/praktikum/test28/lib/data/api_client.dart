import 'package:http/http.dart' as http;

import '../models/contact_response.dart';

class ApiClient {
  final _basePath =
      'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/db';

  Future<ContactResponse> getData() async {
    var url = Uri.parse(_basePath);
    var response = await http.get(url);
    return contactResponseFromJson(response.body);
  }
}
