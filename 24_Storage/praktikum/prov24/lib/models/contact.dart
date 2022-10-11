import 'dart:convert';

List<Contact> contactFromJson(String str) =>
    List<Contact>.from(json.decode(str).map((x) => Contact.fromJson(x)));

String contactToJson(List<Contact> data) =>
    json.encode(List<dynamic>.from(data.map((x) => x.toJson())));

class Contact {
  String name;
  String noTelp;

  Contact({this.name = '', this.noTelp = ''});

  factory Contact.fromJson(Map<String, dynamic> json) => Contact(
        name: json["name"],
        noTelp: json["phone"],
      );

  Map<String, dynamic> toJson() => {
        "name": name,
        "phone": noTelp,
      };

  @override
  String toString() {
    return '''Nama : $name, No.Telp : $noTelp''';
  }
}
