import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../models/contact.dart';

class ContactManager extends ChangeNotifier {
  var _listContact = <Contact>[];
  late SharedPreferences _sharedPref;
  
  List<Contact> get listContact {
    _listContact.sort((a, b) => a.name.compareTo(b.name));
    return List.unmodifiable(_listContact);
  }

  void initSharedPref(SharedPreferences sharedPreferences) {
    _sharedPref = sharedPreferences;
    var listPhone = sharedPreferences.getString('list');
    _listContact = listPhone != null ? contactFromJson(listPhone) : [];
    notifyListeners();
  }


  void addContact(Contact contact) {
    _listContact.add(contact);
    _sharedPref.setString('list',contactToJson(_listContact));
    notifyListeners();
  }
}