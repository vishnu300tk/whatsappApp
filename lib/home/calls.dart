import 'package:flutter/material.dart';
import 'package:whatsapp_app/bottomBar.dart';
import 'package:whatsapp_app/pages/audiocall.dart';

// ignore: must_be_immutable
class CallsPage extends StatelessWidget {
  CallsPage({super.key});
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
  List<String> times =[
    '11s ago',
    '2m ago',
    '13m ago',
    '45m ago',
    '54m ago',
    '1h ago',
    '2h ago',
    '4h ago',
    '7h ago',
    '12h ago',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: Text('Edit',style: TextStyle(fontSize: 23,color: Colors.blue),),
        ),
        title: Center(
          child: Row(
            children: [
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                   color: const Color.fromARGB(255, 39, 39, 40),),
                child: const Center(child: Text('All',style: TextStyle(
                  fontSize: 20,color: Colors.white
                ),)),
              ),
              Container(
                height: 30,
                width: 100,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
                   color: const Color.fromARGB(255, 39, 39, 40),),
                child: const Center(child: Text('Missed',style: TextStyle(
                  fontSize: 20,color: Colors.white
                ),)),
              ),
            ],
          ),
        ),
        actions: [
          IconButton(onPressed: (){}, icon: const Icon(Icons.add_call),color: Colors.blue,)
        ],
      ),
       bottomNavigationBar: const BottomPage(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: const Color.fromARGB(255, 12, 12, 13),),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Calls',style: TextStyle(
                  fontSize: 35,fontWeight: FontWeight.bold,color: Colors.white
                ),),
              ),
            ),
            const SizedBox(height: 10,),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: const Color.fromARGB(255, 38, 38, 39),),
              height: 40,
              width: double.infinity,
             child: const Padding(
               padding: EdgeInsets.all(8.0),
               child: Row(
                 children: [
                  Icon(Icons.search),
                   Text(' Search',style:TextStyle(fontWeight: FontWeight.normal,fontSize: 22,color: Colors.white),),
                 ],
               ),
             ),

            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: const Color.fromARGB(255, 39, 38, 38),),
              child: ListTile(
                leading: CircleAvatar(
                  backgroundColor: const Color.fromARGB(255, 21, 21, 21),
                  radius: 30,
                  child: Image.network(color: Colors.blue,
                    'https://cdn-icons-png.flaticon.com/128/9762/9762302.png',
                    width: 30,
                    height: 30,
                  ),
                ),
                title: const Text(
                  'Create call Links',
                  style: TextStyle(fontSize: 20, color: Color.fromARGB(255, 64, 150, 231)),
                ),
                subtitle: const Text(
                  'Share a link for your WhatsApp call',
                  style: TextStyle(fontSize: 15, color: Colors.grey, letterSpacing: 1),
                ),
              ),
            ),
              const SizedBox(
              height: 20,
            ),
           
            const Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0),
                child: Text(
                  'Recent',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 5,
            ),
           
            Container(
               decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),
               color: const Color.fromARGB(255, 33, 33, 34),),
              child: ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: activeUsers.length,
                itemBuilder: (BuildContext context, int index) {
                  return ListTile(
                    minVerticalPadding: 25,
                    leading: CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(userImages[index]),
                    ),
                    title: Text(
                      activeUsers[index],
                      style: const TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    subtitle: Text(
                      times[index],
                      style: const TextStyle(color: Colors.grey),
                    ),
                    trailing: IconButton(
                      onPressed: () => Navigator.of(context).pushAndRemoveUntil(
                        MaterialPageRoute(
                          builder: (context) => AudioCall(
                            name: activeUsers[index],
                            image: userImages[index], index: index,
                          ),
                        ),
                        (route) => true,
                      ),
                      icon: const Icon(Icons.call),
                      color: Colors.teal,
                      iconSize: 30,
                    ),
                    onTap: () {},
                  );
                },
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(
          Icons.add_call,
          color: Colors.black,
        ),
      ),
    );
  }
}