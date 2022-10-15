import 'package:http/http.dart' as http;
import 'package:mvvm26/models/contact_response.dart';

class ApiClient {
  static Future<ContactResponse> getData() async {
    const basePath = 'https://my-json-server.typicode.com/hadihammurabi/flutter-webservice/db';
    var url = Uri.parse(basePath);
    var response = await http.get(url);
    return contactResponseFromJson(response.body);
  }
}
