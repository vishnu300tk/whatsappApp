import 'package:flutter/material.dart';
import 'package:whatsapp_app/home/calls.dart';
import 'package:whatsapp_app/home/chats.dart';
import 'package:whatsapp_app/home/communities.dart';
import 'package:whatsapp_app/home/settings.dart';
import 'package:whatsapp_app/home/updates.dart';

class BottomPage extends StatelessWidget {
  const BottomPage({super.key, });

  @override
  Widget build(BuildContext context) {
    return 
       BottomNavigationBar(
        iconSize: 25,
        currentIndex: 0,
        elevation: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor:const Color.fromARGB(0, 30, 30, 30),
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme: const IconThemeData(color: Colors.white),
        unselectedIconTheme: const IconThemeData(color: Colors.grey),
        items: [
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.update),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  UpdatesPage()),
                );
              },
            ),
            label: 'Updates',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.call),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => CallsPage()),
                );
              },
            ),
            label: 'Calls',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.groups),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const CommunitiesPage()),
                );
              },
            ),
            label: 'Communities',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.chat),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) =>  ChatsPage()),
                );
              },
            ),
            label: 'Chats',
          ),
          BottomNavigationBarItem(
            icon: IconButton(
              icon: const Icon(Icons.settings),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => const SettingsPage()),
                );
              },
            ),
            label: 'Settings',
          ),
        ],
      );
    
  }
}


