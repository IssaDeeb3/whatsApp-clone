class MessageModel {
  final String id;
  final String chatId; // to know which chat it belongs to
  final String text;
  final DateTime time;
  final bool isMe;

  MessageModel({
    required this.id,
    required this.chatId,
    required this.text,
    required this.time,
    this.isMe = false,
  });
}
