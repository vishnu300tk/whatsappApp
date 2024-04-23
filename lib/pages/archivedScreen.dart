// ignore: file_names
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class ArchivedScreen extends StatelessWidget {
  ArchivedScreen({super.key});
  List<String> recentChats = [
    "Don't forget, we havem a meeting",
    "Just saw this ",
    "Hey, do you have any plans today",
    "Remember to pick up milk ",
    "I'm so proud of you ",
    "please send me the report ",
    "Let's grab lunch together ",
    "I need your advice ",
    "Sending virtual hugs your way,",
  ];
  List<String> activeUsers = [
    'Srk',
    'Vijay',
    'Allu',
    'Srya',
    'Danush',
    'Mohanlal',
    'Mammootty',
    'Ajith',
    'Dq',
  ];

  List<String> userImages = [
    'https://4.bp.blogspot.com/-CCW346J8k7Y/VwgAIHGxSvI/AAAAAAAAE1o/KMFbHMkgqQkOrgJZGl8V29IYc2eNy2dAA/s1600/Shah-Rukh-Khan-HD-Wallpaper-Download.jpg',
    'https://th.bing.com/th/id/OIP.os0rOpkR4LShqGJKBNmXHQAAAA?rs=1&pid=ImgDetMain',
    'https://1.bp.blogspot.com/-E9BFcqb0XNg/XvNhVJH7YBI/AAAAAAABD4M/Id2OlZSIn-At29Tb7QZTqLjDIy_tE5g7gCK4BGAsYHg/s2048/allu-arjun-unseen-stills-from%2B-dj%2B%25281%2529.jpg',
    'https://th.bing.com/th/id/OIP.jnFj6yB3bi3C-EKuuv8_rwHaHX?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.2JUq1SUxNXI-iK1ncXQQFgAAAA?rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jEKmYi2ojP6lsp8AqmlLzwHaHj?w=1000&h=1020&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.RUUvUHa7dKCTUORor83iRwHaLG?w=533&h=799&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.jq3-CT46TjlXQJuaeYYNbAHaHv?w=1080&h=1130&rs=1&pid=ImgDetMain',
    'https://th.bing.com/th/id/OIP.XDQV7wwEE4SJGZzJkjuEUwAAAA?w=204&h=204&rs=1&pid=ImgDetMain',
  ];

  List<String> times = [
    '2.6 am',
    '3.54 am',
    '5.34 am',
    '6.32 am',
    '9.03 am',
    '12.45 pm',
    '15.45 pm',
    'yesterday',
    'yesterday',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 14, 15, 15),
        leading: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: const Icon(
            Icons.arrow_back_ios,
            color: Colors.white,
          ),
        ),
        title: const Text('Archived',
            style: TextStyle(color: Colors.white, fontSize: 20)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.edit_outlined,
              color: Colors.white,
            ),
          ),
        ],
      ),
      
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              width: double.infinity,

              color: const Color.fromARGB(255, 52, 51, 51),
              child: const Center(
                child: Padding(
                  padding: EdgeInsets.only(left: 10.0,right: 10.0,top: 10.0),
                  child: Text(
                    'These chats stay archived when new messages are received. Tap to change',
                    style: TextStyle(color: Colors.grey),
                  ),
                ),
              ),
            ),
          
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return ListTile(
                  onTap: () {},
                  leading: CircleAvatar(
                    radius: 30,
                    foregroundImage: NetworkImage(userImages[index]),
                  ),
                  title: Text(activeUsers[index],
                      style: const TextStyle(color: Colors.white)),
                  subtitle: Text(recentChats[index],
                      style: const TextStyle(color:Colors.grey)),
                  trailing:  Text(times[index], style: const TextStyle(color: Colors.grey)),
                  minVerticalPadding: 25,
                );
              },
              itemCount: activeUsers.length,
            ),
            const Divider(
              color: Colors.blue,
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(Icons.lock, size: 15, color: Colors.grey),
               
                Text('Your personal messages are',
                    style: TextStyle(
                        color: Colors.grey, fontSize: 11, letterSpacing: 1)),
                Text(' end-to-end encrypted',
                    style: TextStyle(
                        color:Colors.green, fontSize: 11, letterSpacing: 1)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}