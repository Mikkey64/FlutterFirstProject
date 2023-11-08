import 'package:flutter/material.dart';
import 'package:flutter_chat_ui/flutter_chat_ui.dart';
import 'package:flutter_chat_types/flutter_chat_types.dart' as types;

class MessagePage extends StatefulWidget {
  const MessagePage({Key? key});

  @override
  State<MessagePage> createState() => _MessagePageState();
}

class _MessagePageState extends State<MessagePage> {
  final List<types.Message> _messages = [];
  final _user = types.User(
    id: '82091008-a484-4a89-ae75-a22bf8d6f3ac',
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Chat(
        theme: const DefaultChatTheme(
          backgroundColor: Color.fromARGB(255, 47, 53, 92),
          inputBackgroundColor: Color.fromARGB(255, 31, 35, 59),
          inputMargin: EdgeInsets.all(1),
          systemMessageTheme: SystemMessageTheme(
            margin: EdgeInsets.all(5),
            textStyle: TextStyle(
              color: Color.fromARGB(255, 224, 224, 226),
            ),
          ),
          inputBorderRadius: BorderRadius.all(
            Radius.circular(40),
          ),
        ),
        messages: _messages,
        onSendPressed: _handleSendPressed,
        user: _user,
      ),
    );
  }

  void _handleSendPressed(types.PartialText message) {
    final textMessage = types.TextMessage(
      author: _user,
      createdAt: DateTime.now().millisecondsSinceEpoch,
      id: "id",
      text: message.text,
    );

    _addMessage(textMessage);
  }

  void _addMessage(types.Message message) {
    setState(() {
      _messages.insert(0, message);
    });
  }
}
