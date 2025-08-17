import 'package:whatsapp_clone/core/shared/model/user_model.dart';
import 'package:whatsapp_clone/features/chat/models/message_model.dart';

class ChatModel {
  final UserModel user;
  final String lastMessage;
  final DateTime lastMessageTime;
  final bool isUnread;
  final bool isPinned;
  final List<MessageModel> messages;

  ChatModel({
    required this.user,
    required this.lastMessage,
    required this.lastMessageTime,
    this.isUnread = false,
    this.isPinned = false,
    this.messages = const [],
  });

  bool get hasUnreadMessages => isUnread;

  static List<ChatModel> get chatList => [
    ChatModel(
      user: UserModel(
        id: 1,
        name: 'John Doe',
        phoneNumber: '+1234567890',
        profilePictureUrl: "https://randomuser.me/api/portraits/men/1.jpg",
      ),
      lastMessage: 'Hey, how are you?',
      lastMessageTime: DateTime.now().subtract(const Duration(minutes: 5)),
      isUnread: true,
      isPinned: true,
      messages: [
        MessageModel(
          id: 'm1',
          chatId: '1',
          text: "Hey, how are you?",
          time: DateTime.now().subtract(const Duration(minutes: 5)),
          isMe: false,
        ),
        MessageModel(
          id: 'm2',
          chatId: '1',
          text: "I’m good, you?",
          time: DateTime.now().subtract(const Duration(minutes: 4)),
          isMe: true,
        ),
      ],
    ),
  ];
}
