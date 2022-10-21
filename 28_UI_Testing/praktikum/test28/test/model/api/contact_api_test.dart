import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
import 'package:test28/data/api_client.dart';
import 'package:test28/models/contact.dart';
import 'package:test28/models/contact_response.dart';
import 'package:test28/models/food.dart';

import 'contact_api_test.mocks.dart';

@GenerateMocks([ApiClient])
void main() {
  group('Get Data Contact & Food', () {
    ApiClient apiClient = MockApiClient();

    test('get Response contact & food returns data', () async {
      when(apiClient.getData()).thenAnswer(
        (_) async => ContactResponse(
            contacts: [Contact(id: 0, name: 'a', phone: '0')],
            foods: [Food(id: 0, name: '')]),
      );
    });
    test('get All contact returns data', () async {
      var contacts = await apiClient.getData();
      expect(contacts.contacts.isNotEmpty, true);
    });

    test('get All food returns data', () async {
      var contacts = await apiClient.getData();
      expect(contacts.foods.isNotEmpty, true);
    });
  });
}
