import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:shared_preferences/shared_preferences.dart';

part 'contact_event.dart';
part 'contact_state.dart';

class ContactBloc extends Bloc<ContactEvent, ListContact> {
  List<Contact> _listItems = [];
  late SharedPreferences _sharedPref;

  ContactBloc() : super(ListContact()) {
    on<InitSharedPref>((event, emit) {
      _sharedPref = event.sharedPref;
      var listPhone = _sharedPref.getString('list');
      _listItems = listPhone != null ? contactFromJson(listPhone) : [];
      emit(ListContact(listContact: _listItems));
    });
    on<AddContact>((event, emit) {
      _listItems.add(event.contact);
      _sharedPref.setString('list', contactToJson(_listItems));
      emit(ListContact(listContact: _listItems));
    });
    on<RemoveContact>((event, emit) {
      _listItems.remove(event.contact);
      _sharedPref.setString('list', contactToJson(_listItems));
      emit(ListContact(listContact: _listItems));
    });
  }
}
