import 'package:whatsapp_clone/core/shared/model/user_model.dart';
import 'package:whatsapp_clone/features/chat/models/message_model.dart';

class ChatModel {
  final UserModel user;
  final String lastMessage;
  final DateTime lastMessageTime;
  final bool isUnread;
  final bool isPinned;
  final List<MessageModel> messages;
  final int unreadCount;
  final bool isFromMe;

  ChatModel({
    required this.user,
    required this.lastMessage,
    required this.lastMessageTime,
    this.isUnread = false,
    this.isPinned = false,
    this.messages = const [],
    this.unreadCount = 0,
    this.isFromMe = false,
  });

  bool get hasUnreadMessages => isUnread;

  static List<MessageModel> messagesList = [
    MessageModel(
      text: "Hey bro 👋",
      time: DateTime.now().subtract(const Duration(minutes: 90)),
      isMe: false,
    ),
    MessageModel(
      text: "Hey Mostafa, how are you?",
      time: DateTime.now().subtract(const Duration(minutes: 89)),
      isMe: true,
    ),
    MessageModel(
      text: "I'm good, just finished work. You?",
      time: DateTime.now().subtract(const Duration(minutes: 88)),
      isMe: false,
    ),
    MessageModel(
      text: "Same here, long day 😅",
      time: DateTime.now().subtract(const Duration(minutes: 86)),
      isMe: true,
    ),
    MessageModel(
      text: "Did you finish that Flutter task?",
      time: DateTime.now().subtract(const Duration(minutes: 85)),
      isMe: false,
    ),
    MessageModel(
      text: "Yeah, pushed it to GitHub already ✅",
      time: DateTime.now().subtract(const Duration(minutes: 84)),
      isMe: true,
    ),
    MessageModel(
      text: "Nice! I'll check it out tomorrow",
      time: DateTime.now().subtract(const Duration(minutes: 82)),
      isMe: false,
    ),
    MessageModel(
      text: "Cool, let me know if you need changes",
      time: DateTime.now().subtract(const Duration(minutes: 81)),
      isMe: true,
    ),
    MessageModel(
      text: "By the way, are we meeting Friday?",
      time: DateTime.now().subtract(const Duration(minutes: 80)),
      isMe: false,
    ),
    MessageModel(
      text: "Yes, at the new coffee shop downtown ☕",
      time: DateTime.now().subtract(const Duration(minutes: 79)),
      isMe: true,
    ),
    MessageModel(
      text: "Perfect, 6 pm?",
      time: DateTime.now().subtract(const Duration(minutes: 78)),
      isMe: false,
    ),
    MessageModel(
      text: "Yeah 6 pm works",
      time: DateTime.now().subtract(const Duration(minutes: 77)),
      isMe: true,
    ),
    MessageModel(
      text: "Cool, I’ll bring my laptop too 💻",
      time: DateTime.now().subtract(const Duration(minutes: 76)),
      isMe: false,
    ),
    MessageModel(
      text: "Sure, maybe we can work a bit",
      time: DateTime.now().subtract(const Duration(minutes: 75)),
      isMe: true,
    ),
    MessageModel(
      text: "Exactly 👍",
      time: DateTime.now().subtract(const Duration(minutes: 74)),
      isMe: false,
    ),
    MessageModel(
      text: "Did you see the new Flutter update?",
      time: DateTime.now().subtract(const Duration(minutes: 73)),
      isMe: false,
    ),
    MessageModel(
      text: "Not yet, anything big?",
      time: DateTime.now().subtract(const Duration(minutes: 72)),
      isMe: true,
    ),
    MessageModel(
      text: "Yeah, some cool performance improvements",
      time: DateTime.now().subtract(const Duration(minutes: 71)),
      isMe: false,
    ),
    MessageModel(
      text: "Nice, I’ll check it tonight",
      time: DateTime.now().subtract(const Duration(minutes: 70)),
      isMe: true,
    ),
    MessageModel(
      text: "Okay, send me your thoughts later",
      time: DateTime.now().subtract(const Duration(minutes: 69)),
      isMe: false,
    ),
    MessageModel(
      text: "Sure thing 👌",
      time: DateTime.now().subtract(const Duration(minutes: 68)),
      isMe: true,
    ),
    MessageModel(
      text: "What about the gym? Going tomorrow?",
      time: DateTime.now().subtract(const Duration(minutes: 67)),
      isMe: false,
    ),
    MessageModel(
      text: "Yeah, after lunch around 2 pm",
      time: DateTime.now().subtract(const Duration(minutes: 66)),
      isMe: true,
    ),
    MessageModel(
      text: "Perfect, I’ll join you",
      time: DateTime.now().subtract(const Duration(minutes: 65)),
      isMe: false,
    ),
    MessageModel(
      text: "Don’t forget your shoes this time 😂",
      time: DateTime.now().subtract(const Duration(minutes: 64)),
      isMe: true,
    ),
    MessageModel(
      text: "Haha never again 😅",
      time: DateTime.now().subtract(const Duration(minutes: 63)),
      isMe: false,
    ),
    MessageModel(
      text: "Alright bro, I’ll sleep now",
      time: DateTime.now().subtract(const Duration(minutes: 62)),
      isMe: false,
    ),
    MessageModel(
      text: "Good night ✨",
      time: DateTime.now().subtract(const Duration(minutes: 61)),
      isMe: true,
    ),
    MessageModel(
      text: "Good night, bro ✌️",
      time: DateTime.now().subtract(const Duration(minutes: 60)),
      isMe: false,
    ),
  ];

  static List<ChatModel> get chatList => [
    ChatModel(
      user: UserModel(
        id: 1,
        name: 'Mostafa Elsharkawy',
        phoneNumber: '+1234567890',
        profilePictureUrl: "https://randomuser.me/api/portraits/men/1.jpg",
      ),
      lastMessage: 'Hey, how are you?',
      unreadCount: 3,
      lastMessageTime: DateTime.now().subtract(const Duration(minutes: 5)),
      isUnread: true,
      isPinned: true,
      messages: messagesList,
    ),
    ChatModel(
      user: UserModel(
        id: 2,
        name: 'Salim Mohamed',
        phoneNumber: '+20 1234567890',
        profilePictureUrl: "https://randomuser.me/api/portraits/men/2.jpg",
      ),
      lastMessage: 'Where are you Salim?, I’m waiting for you',
      lastMessageTime: DateTime.now().subtract(const Duration(minutes: 5)),
      isPinned: true,
      isFromMe: true,
      messages: messagesList,
    ),
    ChatModel(
      user: UserModel(
        id: 1,
        name: 'Mohamed Ashraf',
        phoneNumber: '+1234567890',
        profilePictureUrl: "https://randomuser.me/api/portraits/men/4.jpg",
      ),
      lastMessage: 'Can You send me the report?, because I need it now',
      unreadCount: 1,
      lastMessageTime: DateTime.now().subtract(const Duration(minutes: 200)),
      isUnread: true,
      messages: messagesList,
    ),
    ChatModel(
      user: UserModel(
        id: 1,
        name: 'May Ahmed',
        phoneNumber: '+1234567890',
        profilePictureUrl: "https://randomuser.me/api/portraits/women/2.jpg",
      ),
      lastMessage: 'Can You send me the report?, because I need it now',
      unreadCount: 2,
      lastMessageTime: DateTime.now().subtract(const Duration(minutes: 1000)),
      isUnread: true,
      messages: messagesList,
    ),
    ChatModel(
      user: UserModel(
        id: 1,
        name: 'Motaz Hassan',
        phoneNumber: '+1234567890',
        profilePictureUrl: "https://randomuser.me/api/portraits/men/5.jpg",
      ),
      lastMessage: 'Hey Moatz can you call me tomorrow',
      lastMessageTime: DateTime.now().subtract(const Duration(minutes: 1000)),
      isFromMe: true,
      messages: messagesList,
    ),
    ChatModel(
      user: UserModel(
        id: 6,
        name: 'Khaled Youssef',
        phoneNumber: '+201001234567',
        profilePictureUrl: "https://randomuser.me/api/portraits/men/10.jpg",
      ),
      lastMessage: 'Let’s catch up tomorrow after work!',
      lastMessageTime: DateTime.now().subtract(const Duration(minutes: 45)),
      isUnread: false,
      isPinned: false,
      messages: messagesList,
    ),

    ChatModel(
      user: UserModel(
        id: 7,
        name: 'Sarah Ali',
        phoneNumber: '+201112223344',
        profilePictureUrl: "https://randomuser.me/api/portraits/women/11.jpg",
      ),
      lastMessage: 'Don’t forget to bring the documents.',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 3)),
      isUnread: false,
      isPinned: false,
      messages: messagesList,
    ),

    ChatModel(
      user: UserModel(
        id: 8,
        name: 'Omar Nasser',
        phoneNumber: '+201223344556',
        profilePictureUrl: "https://randomuser.me/api/portraits/men/12.jpg",
      ),
      lastMessage: 'See you at the gym later?',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 6)),
      isUnread: false,
      isPinned: false,
      messages: messagesList,
    ),

    ChatModel(
      user: UserModel(
        id: 9,
        name: 'Layla Hassan',
        phoneNumber: '+201334455667',
        profilePictureUrl: "https://randomuser.me/api/portraits/women/13.jpg",
      ),
      lastMessage: 'Thanks for your help earlier!',
      lastMessageTime: DateTime.now().subtract(const Duration(days: 1)),
      isUnread: false,
      isPinned: false,
      messages: messagesList,
    ),
  ];
}
