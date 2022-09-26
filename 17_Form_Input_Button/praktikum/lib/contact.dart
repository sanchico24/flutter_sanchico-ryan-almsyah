class Contact {
  String name;
  String noTelp;
  List<Contact> listContact = [];
  Contact({this.name = '', this.noTelp = ''});

  void addContact(Contact contact) {
    listContact.add(contact);
  }

  @override
  String toString() {
    return '''Nama : $name\nNo.Telp : $noTelp''';
  }
}
