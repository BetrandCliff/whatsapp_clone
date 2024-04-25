class ChatModel {
  ChatModel({
    required this.name,
    required this.icon,
    required this.isGroup,
    required this.time,
    required this.currentMessage
  });
  String name;
  String icon;
  bool isGroup;
  String time;
  String currentMessage;
}
