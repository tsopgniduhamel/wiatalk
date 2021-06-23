class ChatModel {
  int id;
  String name;
  String icon = "assets/person.svg";
  bool isGroup;
  String time;
  String status;
  String currentMessage;
  bool select = false;

  ChatModel(
      {this.id,
      this.name,
      this.icon = "assets/person.svg",
      this.isGroup,
      this.time,
      this.status,
      this.currentMessage,
      this.select = false});
}
