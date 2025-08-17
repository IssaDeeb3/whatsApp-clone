class MessageModel {
  final String text;
  final DateTime time;
  final bool isMe;

  MessageModel({required this.text, required this.time, this.isMe = false});
}
