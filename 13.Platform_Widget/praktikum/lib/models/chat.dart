class Chat {
  String name;
  String message;
  String time;
  bool status;
  bool isGroup;
  String lastChat;
  int messNum;

  Chat(
      {this.name = '-',
      this.message = '-',
      this.time = '-',
      this.isGroup = false,
      this.lastChat = '-',
      this.status = false,
      this.messNum = 0});
}
