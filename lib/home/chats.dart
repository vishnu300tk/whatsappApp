import 'package:flutter/material.dart';
import 'package:whatsapp_app/bottomBar.dart';
import 'package:whatsapp_app/customWidgets/appbarwidget1.dart';
import 'package:whatsapp_app/database/database.dart';
import 'package:whatsapp_app/pages/archivedScreen.dart';
import 'package:whatsapp_app/pages/personalchat.dart';

// ignore: must_be_immutable
class ChatsPage extends StatelessWidget {
  ChatsPage({super.key});
  List<String> activeUsers = [
   
    'poul walker',
    'prethiraj',
    'tovino',
    'jaan',
    'dulqer salman',
    'dileep',
    'win diesel',
    'varsha',
    'arya',
    'anjana',
  ];
  
  List<String> recentChats = [
    "Don't forget, we havem a meeting",
    "Just saw this ",
    "Hey, do you have any plans today",
    "Remember to pick up milk ",
    "I'm so proud of you ",
    "please send me the report ",
    "Let's grab lunch together ",
    "I need your advice ",
    "Sending virtual hugs your way",
    "hi how are you",
  ];
  List<String> userImages = [
     'https://th.bing.com/th/id/OIP.VGNFxtdrjBUJ0LxAq1AUNQHaKq?w=195&h=280&c=7&r=0&o=5&dpr=1.5&pid=1.7',
    'https://th.bing.com/th/id/OIP.OCHfqIsYDirH7KuhDhfIIQHaHa?pid=ImgDet&w=192&h=192&c=7&dpr=1.5',
    'https://th.bing.com/th/id/OIP.hWj32l6kqvto4PXQM_gbKQHaGY?pid=ImgDet&w=192&h=165&c=7&dpr=1.5',
    'https://th.bing.com/th/id/OIP.p9EQxRxAsbGNKPz1Sb-61gHaJd?pid=ImgDet&w=192&h=245&c=7&dpr=1.5',
    'https://th.bing.com/th/id/OIP.rhZQQC33kA-z-mmNlXoVDwHaHa?pid=ImgDet&w=196&h=196&c=7&dpr=1.5',
    'https://th.bing.com/th/id/OIP.av8yVypJSPgA__UQf604HQHaG_?pid=ImgDet&w=192&h=181&c=7&dpr=1.5',
    'https://th.bing.com/th/id/OIP.inh3tA6XJSLGrFNEnlVazQHaH_?w=195&h=210&c=7&r=0&o=5&dpr=1.5&pid=1.7',
    'https://th.bing.com/th/id/OIP.uClTD1wtQeo7UnNf1z5RYAHaKx?w=195&h=284&c=7&r=0&o=5&dpr=1.5&pid=1.7',
    'https://th.bing.com/th/id/OIP.VZ6DZxlfb9iEaMHxaL_chgHaKG?w=195&h=265&c=7&r=0&o=5&dpr=1.5&pid=1.7',
    'https://th.bing.com/th/id/OIP.OEF_EAjGFtFzFWe4hJaZJgHaLK?w=195&h=294&c=7&r=0&o=5&dpr=1.5&pid=1.7',
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
    'Todays',

  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       bottomNavigationBar: const BottomPage(),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const AppBarWidgetOne(),
            const Positioned(right: 0,
              
              child:  Text('Chats',style: TextStyle(
              fontWeight: FontWeight.bold,fontSize: 30,color: Colors.white
            ),),),

            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 31, 31, 57)),
                  child:const Center(child: Text('All',style: TextStyle(color: Colors.white,fontSize: 20),))
                 ),
                 const SizedBox(
                  width: 15,
                 ),
                 Container(
                  height: 40,
                  width: 80,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 31, 31, 57)),
                  child:const Center(child: Text('Unread',style: TextStyle(color: Colors.white,fontSize: 20),))
                 ),const SizedBox(
                  width: 15,
                 ),
                  Container(
                  height: 40,
                  width: 90,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 31, 31, 57)),
                  child:const Center(child: Text('Contacts',style: TextStyle(color: Colors.white,fontSize: 20),))
                 ),
                 const SizedBox(
                  width: 15,
                 ),
                 Container(
                  height: 40,
                  width: 70,
                  decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: const Color.fromARGB(255, 31, 31, 57)),
                  child:const Center(child: Text('Groups',style: TextStyle(color: Colors.white,fontSize: 20),))
                 ),
                  
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color: Colors.black),
              height: 50,
              width: double.infinity,
              child:ListTile(
                title: Row(
                  children: [
                    IconButton(onPressed: (){
                    
                        Navigator.of(context).push(MaterialPageRoute(
                          builder: (context) => ArchivedScreen(),
                          
                        )
                        
                      
                      );
                    },
                     icon: const Icon(Icons.archive_rounded,size: 29,
                     ),
                    ),const Text('Archived',
                    style: TextStyle(fontSize: 28,fontWeight: FontWeight.normal,
                    color: Colors.white),)
                  ],
                ),
                trailing: const Text('29',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold,color: Colors.white),),
              ) ,
            ),

            ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context, index) {
                  return ListTile(
                    onTap: () {
                      Navigator.of(context).push(MaterialPageRoute(
                        builder: (context) => PersonalChat( index: index,),
                      ));
                    },
                    leading: CircleAvatar(
                      radius: 30,
                      foregroundImage: NetworkImage(database[index]['dp']),
                    ),
                    title: Text(database[index]['name'],
                        style: const TextStyle(color: Colors.white,fontSize: 20)),
                    subtitle: Text(database[index]['recentChats'],
                        style: const TextStyle(color: Colors.grey)),
                    trailing:
                         Text(times[index],
                         style: const TextStyle(color: Colors.grey,fontSize: 14)),
                    minVerticalPadding: 25,
                  );
                },
                itemCount: database.length),
          ],
        ),
      ),
    );
  }
}