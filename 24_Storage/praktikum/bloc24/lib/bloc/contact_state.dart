part of 'contact_bloc.dart';

abstract class ContactState {
  const ContactState();
}

List<Contact> contactFromJson(String str) =>
    List<Contact>.from(json.decode(str).map((x) => Contact.fromJson(x)));

String contactToJson(List<Contact> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Contact extends ContactState {
  String name;
  String noTelp;

  Contact({this.name = '', this.noTelp = ''});

  List<Object> get props => [name, noTelp];

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        name: json["name"],
        noTelp: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": noTelp,
      };

  @override
  String toString() => 'Contact(name : $name, noTelp: $noTelp)';
}

class ListContact extends ContactState {
  final List<Contact> listContact;

  ListContact({this.listContact = const []});

  List<Contact> get newListContact {
    if (listContact.isNotEmpty) {
      listContact.sort((a, b) => a.name.compareTo(b.name));
    }
    return List.unmodifiable(listContact);
  }

  List<Object> get props => [listContact];

  @override
  String toString() => 'List Contact : $listContact';
}

class ListFavorite extends ContactState {
  final List<String> listFavorite;

  ListFavorite({this.listFavorite = const []});

  List<Object> get props => [listFavorite];

  @override
  String toString() => 'List Contact : $listFavorite';
}
