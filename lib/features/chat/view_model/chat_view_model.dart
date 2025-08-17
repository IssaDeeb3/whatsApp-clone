import 'package:flutter/material.dart';
import '../models/message_model.dart';
import '../models/chat_model.dart';

class ChatVM extends ChangeNotifier {
  final ChatModel chat;
  final TextEditingController controller = TextEditingController();
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  final ScrollController scrollController = ScrollController();
  final List<MessageModel> _messages;
  bool _isTyping = false;

  List<MessageModel> get messages => _messages;
  bool get isTyping => _isTyping;

  ChatVM(this.chat) : _messages = List.from(chat.messages);

  void onTextChanged(String value) {
    _isTyping = value.trim().isNotEmpty;
    notifyListeners();
  }

  void sendMessage() {
    if (controller.text.trim().isEmpty) return;
    final message = MessageModel(
      text: controller.text.trim(),
      isMe: true,
      time: DateTime.now(),
    );
    _messages.add(message);
    listKey.currentState?.insertItem(_messages.length - 1);
    controller.clear();
    _isTyping = false;
    notifyListeners();
    Future.delayed(const Duration(milliseconds: 300), () {
      if (scrollController.hasClients) {
        scrollController.animateTo(
          scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 200),
          curve: Curves.easeOut,
        );
      }
    });
  }
}
