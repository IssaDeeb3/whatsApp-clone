import 'package:whatsapp_clone/features/chat/models/message_model.dart';

class ChatModel {
  final String id;
  final String name;
  final String phoneNumber;
  final String imageUrl;
  final String lastMessage;
  final DateTime lastMessageTime;
  final bool isUnread;
  final bool isPinned;
  final List<MessageModel> messages;

  ChatModel({
    required this.id,
    required this.name,
    required this.phoneNumber,
    required this.imageUrl,
    required this.lastMessage,
    required this.lastMessageTime,
    this.isUnread = false,
    this.isPinned = false,
    this.messages = const [],
  });

  bool get hasUnreadMessages => isUnread;

  static List<ChatModel> get chatList => [
    ChatModel(
      id: '1',
      name: 'John Doe',
      phoneNumber: '+1234567890',
      imageUrl: "https://randomuser.me/api/portraits/men/1.jpg",
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
    ChatModel(
      id: '2',
      name: 'Sarah Wilson',
      phoneNumber: '+0987654321',
      imageUrl: "https://randomuser.me/api/portraits/women/2.jpg",
      lastMessage: 'Thanks for the help!',
      lastMessageTime: DateTime.now().subtract(const Duration(minutes: 15)),
      isUnread: true,
      messages: [
        MessageModel(
          id: 'm3',
          chatId: '2',
          text: "Can you send me the file?",
          time: DateTime.now().subtract(const Duration(minutes: 20)),
          isMe: false,
        ),
        MessageModel(
          id: 'm4',
          chatId: '2',
          text: "Sure, check your email.",
          time: DateTime.now().subtract(const Duration(minutes: 18)),
          isMe: true,
        ),
        MessageModel(
          id: 'm5',
          chatId: '2',
          text: "Thanks for the help!",
          time: DateTime.now().subtract(const Duration(minutes: 15)),
          isMe: false,
        ),
      ],
    ),
    ChatModel(
      id: '3',
      name: 'Mike Johnson',
      phoneNumber: '+1122334455',
      imageUrl: "https://randomuser.me/api/portraits/men/3.jpg",
      lastMessage: 'See you tomorrow',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 1)),
      messages: [
        MessageModel(
          id: 'm6',
          chatId: '3',
          text: "Don’t forget the meeting tomorrow.",
          time: DateTime.now().subtract(const Duration(hours: 2)),
          isMe: false,
        ),
        MessageModel(
          id: 'm7',
          chatId: '3',
          text: "Got it. See you tomorrow",
          time: DateTime.now().subtract(const Duration(hours: 1)),
          isMe: true,
        ),
      ],
    ),
    ChatModel(
      id: '4',
      name: 'Emma Davis',
      phoneNumber: '+2233445566',
      imageUrl: "https://randomuser.me/api/portraits/women/4.jpg",
      lastMessage: 'Good morning!',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 2)),
      messages: [
        MessageModel(
          id: 'm8',
          chatId: '4',
          text: "Good morning!",
          time: DateTime.now().subtract(const Duration(hours: 2)),
          isMe: false,
        ),
        MessageModel(
          id: 'm9',
          chatId: '4',
          text: "Morning 🌞",
          time: DateTime.now().subtract(const Duration(hours: 2)),
          isMe: true,
        ),
      ],
    ),
    ChatModel(
      id: '5',
      name: 'Alex Green',
      phoneNumber: '+9988776655',
      imageUrl: "https://randomuser.me/api/portraits/men/5.jpg",
      lastMessage: 'Let’s catch up later!',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 3)),
      messages: [
        MessageModel(
          id: 'm10',
          chatId: '5',
          text: "Free this evening?",
          time: DateTime.now().subtract(const Duration(hours: 3)),
          isMe: false,
        ),
        MessageModel(
          id: 'm11',
          chatId: '5',
          text: "Yes, let’s catch up later!",
          time: DateTime.now().subtract(const Duration(hours: 3)),
          isMe: true,
        ),
      ],
    ),
    ChatModel(
      id: '6',
      name: 'Olivia Brown',
      phoneNumber: '+4433221100',
      imageUrl: "https://randomuser.me/api/portraits/women/6.jpg",
      lastMessage: 'Okay, noted.',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 4)),
      messages: [
        MessageModel(
          id: 'm12',
          chatId: '6',
          text: "Don’t forget the documents.",
          time: DateTime.now().subtract(const Duration(hours: 4)),
          isMe: false,
        ),
        MessageModel(
          id: 'm13',
          chatId: '6',
          text: "Okay, noted.",
          time: DateTime.now().subtract(const Duration(hours: 4)),
          isMe: true,
        ),
      ],
    ),
    ChatModel(
      id: '7',
      name: 'David Clark',
      phoneNumber: '+6677889900',
      imageUrl: "https://randomuser.me/api/portraits/men/7.jpg",
      lastMessage: 'Cool!',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 5)),
      messages: [
        MessageModel(
          id: 'm14',
          chatId: '7',
          text: "Wanna play later?",
          time: DateTime.now().subtract(const Duration(hours: 5)),
          isMe: false,
        ),
        MessageModel(
          id: 'm15',
          chatId: '7',
          text: "Sure, let’s do it.",
          time: DateTime.now().subtract(const Duration(hours: 5)),
          isMe: true,
        ),
        MessageModel(
          id: 'm16',
          chatId: '7',
          text: "Cool!",
          time: DateTime.now().subtract(const Duration(hours: 5)),
          isMe: false,
        ),
      ],
    ),
    ChatModel(
      id: '8',
      name: 'Sophia Turner',
      phoneNumber: '+7788990011',
      imageUrl: "https://randomuser.me/api/portraits/women/8.jpg",
      lastMessage: 'Will do!',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 6)),
      messages: [
        MessageModel(
          id: 'm17',
          chatId: '8',
          text: "Can you remind me later?",
          time: DateTime.now().subtract(const Duration(hours: 6)),
          isMe: false,
        ),
        MessageModel(
          id: 'm18',
          chatId: '8',
          text: "Will do!",
          time: DateTime.now().subtract(const Duration(hours: 6)),
          isMe: true,
        ),
      ],
    ),
    ChatModel(
      id: '9',
      name: 'James White',
      phoneNumber: '+3344556677',
      imageUrl: "https://randomuser.me/api/portraits/men/9.jpg",
      lastMessage: 'Alright!',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 7)),
      messages: [
        MessageModel(
          id: 'm19',
          chatId: '9',
          text: "Let’s meet at 7?",
          time: DateTime.now().subtract(const Duration(hours: 7)),
          isMe: false,
        ),
        MessageModel(
          id: 'm20',
          chatId: '9',
          text: "Alright!",
          time: DateTime.now().subtract(const Duration(hours: 7)),
          isMe: true,
        ),
      ],
    ),
    ChatModel(
      id: '10',
      name: 'Isabella Hall',
      phoneNumber: '+4455667788',
      imageUrl: "https://randomuser.me/api/portraits/women/10.jpg",
      lastMessage: 'Perfect 👍',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 8)),
      messages: [
        MessageModel(
          id: 'm21',
          chatId: '10',
          text: "I booked the tickets.",
          time: DateTime.now().subtract(const Duration(hours: 8)),
          isMe: false,
        ),
        MessageModel(
          id: 'm22',
          chatId: '10',
          text: "Perfect 👍",
          time: DateTime.now().subtract(const Duration(hours: 8)),
          isMe: true,
        ),
      ],
    ),
    ChatModel(
      id: '11',
      name: 'Daniel Lee',
      phoneNumber: '+5566778899',
      imageUrl: "https://randomuser.me/api/portraits/men/11.jpg",
      lastMessage: 'Okay bro',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 9)),
      messages: [
        MessageModel(
          id: 'm23',
          chatId: '11',
          text: "Don’t forget gym tomorrow.",
          time: DateTime.now().subtract(const Duration(hours: 9)),
          isMe: false,
        ),
        MessageModel(
          id: 'm24',
          chatId: '11',
          text: "Okay bro",
          time: DateTime.now().subtract(const Duration(hours: 9)),
          isMe: true,
        ),
      ],
    ),
    ChatModel(
      id: '12',
      name: 'Mia King',
      phoneNumber: '+6677990011',
      imageUrl: "https://randomuser.me/api/portraits/women/12.jpg",
      lastMessage: 'See you soon!',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 10)),
      messages: [
        MessageModel(
          id: 'm25',
          chatId: '12',
          text: "When are you coming?",
          time: DateTime.now().subtract(const Duration(hours: 10)),
          isMe: false,
        ),
        MessageModel(
          id: 'm26',
          chatId: '12',
          text: "Soon, see you soon!",
          time: DateTime.now().subtract(const Duration(hours: 10)),
          isMe: true,
        ),
      ],
    ),
    ChatModel(
      id: '13',
      name: 'Chris Evans',
      phoneNumber: '+9988112233',
      imageUrl: "https://randomuser.me/api/portraits/men/13.jpg",
      lastMessage: 'Alright, done.',
      lastMessageTime: DateTime.now().subtract(const Duration(hours: 11)),
      messages: [
        MessageModel(
          id: 'm27',
          chatId: '13',
          text: "Did you finish the report?",
          time: DateTime.now().subtract(const Duration(hours: 11)),
          isMe: false,
        ),
        MessageModel(
          id: 'm28',
          chatId: '13',
          text: "Alright, done.",
          time: DateTime.now().subtract(const Duration(hours: 11)),
          isMe: true,
        ),
      ],
    ),
  ];
}
