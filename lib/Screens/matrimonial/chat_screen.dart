

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:grouped_list/grouped_list.dart';
import 'package:intl/intl.dart';



class Chat extends StatefulWidget {
  const Chat({Key? key}) : super(key: key);

  @override
  State<Chat> createState() => _ChatState();
}

class Message {
  final String text;
  final DateTime date;
  final bool isSendByMe;

  Message({
    required this.text,
    required this.date,
    required this.isSendByMe,
  });
}

class _ChatState extends State<Chat> {
  List<Message> messages = [
    // Your message data here
  ];

  TextEditingController _textEditingController = TextEditingController();

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
       // automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: Colors.pinkAccent,
        systemOverlayStyle: SystemUiOverlayStyle.dark,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: Colors.white, // Change this color to the desired color
        ),
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: AssetImage('assets/sonu.jpg'), //
            ),
            SizedBox(
              width: 8,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Vivek Sharma",
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w400,
                      color: Colors.white70),
                ),
                Wrap(
                  children: [
                    Text(
                      "1767 Messages",
                      style: TextStyle(fontSize: 12,color: Colors.grey),

                    ),
                  ],
                )
              ],
            ),
            Spacer(),
            Icon(Icons.video_call,color:Colors.white ,size: 28,),
            SizedBox(width: 10),
            Icon(Icons.phone,color:Colors.white ,size: 22,),
          ],
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GroupedListView<Message, DateTime>(
              elements: messages,
              groupBy: (message) => DateTime(
                message.date.year,
                message.date.month,
                message.date.day,
              ),
              groupSeparatorBuilder: (DateTime date) => SizedBox(
                height: 40,
                child: Center(
                  child: Card(
                    color: Colors.pinkAccent,
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        DateFormat.yMMMd().format(date),
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ),
              ),
              itemBuilder: (context, Message message) => Align(
                alignment: message.isSendByMe
                    ? Alignment.centerRight
                    : Alignment.centerLeft,
                child: Card(
                  elevation: 2,
                  child: Padding(
                    padding: EdgeInsets.all(12),
                    child: Text(message.text),
                  ),
                ),
              ),
            ),
          ),
          Container(
            color: Colors.grey.shade100,
            height: 80,
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                      contentPadding: EdgeInsets.all(12),
                      hintText: 'Type your message here....',
                      border: OutlineInputBorder(),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 8),
                IconButton(
                  onPressed: () {
                    final newMessage = Message(
                      text: _textEditingController.text,
                      date: DateTime.now(),
                      isSendByMe: true,
                    );
                    setState(() {
                      messages.add(newMessage);
                    });
                    _textEditingController.clear();
                  },
                  icon: Icon(
                    Icons.send,
                    color: Colors.pinkAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
