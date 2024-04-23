import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:whatsapp_app/database/database.dart';
import 'package:whatsapp_app/pages/audiocall.dart';
import 'package:whatsapp_app/pages/hive.dart';
import 'package:whatsapp_app/pages/videocall.dart';

// class PersonalChat extends StatefulWidget {
//   final String userImages;
//   final String userName;

//   const PersonalChat({super.key, required this.userImages, required this.userName});

//   @override
//   // ignore: library_private_types_in_public_api
//   _PersonalChatState createState() => _PersonalChatState();
// }

// class _PersonalChatState extends State<PersonalChat> {
//   final List<String> _messages = [];
//   final TextEditingController _textEditingController = TextEditingController();

 
// late Box<MessageModel> messageBox;

// @override
// void initState() {
//   super.initState();
//   // Open the message box
//   messageBox = Hive.box<MessageModel>('messages');
// }
// List<MessageModel> getMessages() {
//   return messageBox.values.toList();
// }

//  void _sendMessage(String message) {
//   if (message.isNotEmpty) {
//     setState(() {
//       _messages.add(message);
//     });
//     _textEditingController.clear();
     
//      final box= await
//     // Store message in Hive box
//      messageBox = Hive.box<MessageModel>('messages');
//   }
// }
class PersonalChat extends StatefulWidget {
  PersonalChat({super.key, required this.index});

  final int index;
  
  get userName => null;
  
  get userImages => null;

  @override
  _PersonalChatState createState() => _PersonalChatState();
}

class _PersonalChatState extends State<PersonalChat> {
  List<String> messages = [];
  final TextEditingController _textEditingController = TextEditingController();
  
  get index => null;

  @override
  void initState() {
    super.initState();
    _loadMessages();
  }

 void _loadMessages() async {
    final box = await Hive.openBox<List<String>>('messages_box');
    messages = List<String>.from(box.get(widget.index.toString()) ?? []);
    setState(() {});
  }

  void _sendMessage(String message) async {
    if (message.isNotEmpty) {
      messages.add(message);
      _textEditingController.clear();

      final box = await Hive.openBox<List<String>>('messages_box');
      box.put(widget.index.toString(), messages);

      setState(() {});
    }
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 36, 36),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 25, 26, 25),
        title: Row(
          children: [
            CircleAvatar(
              backgroundImage: NetworkImage(database[widget.index]['dp']),
              radius: 20,
            ),
            const SizedBox(width: 8.0),
            Text(
             database [widget.index]['name'],
              style: const TextStyle(fontStyle: FontStyle.italic, fontSize: 18, color: Colors.white),
            ),
            
          ],
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => VideocallWidget(name:database[ widget.index]['name'] ,image: database[widget.index], index: index,),
                  ));
            },
            icon: const Icon(Icons.videocam_outlined, color: Colors.blue),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => AudioCall(name: widget.userName, image: widget.userImages, index: index,),
                  ));
            },
            icon: const Icon(Icons.call, color: Colors.blue),
          ),
          
        ],
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: messages.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Container(
                    
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 44, 45, 44),
                      borderRadius: BorderRadius.circular(7.0),
                    ),
                    child: Text(
                      messages[index],
                      style: const TextStyle(color: Colors.white),
                    ),
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    color: const Color.fromARGB(255, 31, 31, 31),
                    height: 50,
                    child: 
                    TextField(
                      style: const TextStyle(color: Colors.white),
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        labelStyle: const TextStyle(color: Colors.white),
                        labelText: 'Message...',
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        suffixIcon: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                color: Colors.blue,
                                Icons.photo),
                            ),
                           
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 8.0),
                 IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                color: Colors.blue,
                                Icons.currency_rupee_rounded),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                color: Colors.blue,
                                Icons.photo_camera_outlined),
                            ),
                IconButton(
                  icon: const Icon(Icons.send_rounded),
                  color: Colors.blue,
                  onPressed: () {
                    _sendMessage(_textEditingController.text);
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}