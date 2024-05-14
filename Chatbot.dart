import 'package:flutter/material.dart';
class Chatbot extends StatefulWidget {
  @override
  _ChatbotPageState createState() => _ChatbotPageState();
}

class _ChatbotPageState extends State<Chatbot> {
  final TextEditingController _controller = TextEditingController();
  List<String> _messages = [];

  void _sendMessage() {
    setState(() {
      String message = _controller.text;
      _messages.add('You: $message');
      _controller.clear();
      // Here you can add logic to respond to the user's message
      // For simplicity, let's just echo the message
      _messages.add('Bot: $message');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0x99a5bde1),
        title:
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Text(
            'Chat bot',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
      ),
      body: Column(
        children: <Widget>[
          Expanded(
            child: ListView.builder(
              reverse: true,
              itemCount: _messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(_messages[index]),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: 'Write your question...',
                    ),
                  ),
                ),
                SizedBox(width: 8.0),
                ElevatedButton(
                  onPressed: _sendMessage,
                  child: Text('Send'),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}