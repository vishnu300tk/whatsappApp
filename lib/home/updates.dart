import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whatsapp_app/bottomBar.dart';
import 'package:whatsapp_app/pages/statuspage.dart';

class UpdatesPage extends StatelessWidget {
  final List<String> names = [
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
  final List<String> times = [
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
  final List<String> images = [
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
  UpdatesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: const <Widget>[
          CircleAvatar(
            backgroundColor: Colors.blue,
            radius: 18,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Icon(
                Icons.more_horiz,
                color: Colors.blue,
              ),
            ),
          ),
          SizedBox(
            width: 10,
          )
        ],
      ),
      bottomNavigationBar: const BottomPage(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                'Updates',
                style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ],
          ),
          CupertinoSearchTextField(
            prefixIcon: const Icon(
              Icons.search,
              color: Colors.grey,
            ),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 20,
            ),
            backgroundColor: Colors.grey.withOpacity(0.4),
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Status',
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                )
              ],
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 44, 41, 41),
            height: 77,
            width: double.infinity,
            child: Expanded(
              child: ListTile(
                leading: const Stack(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      foregroundImage: NetworkImage(
                          'https://th.bing.com/th?id=OIP.FUjbwvC7zNj9yv8DoBF4LgHaJO&w=223&h=279&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                    ),
                    Positioned(
                        bottom: 0,
                        right: -1,
                        child: CircleAvatar(
                          backgroundColor: Colors.blue,
                          radius: 11,
                          child: Icon(
                            Icons.add,
                            color: Colors.white,
                          ),
                        ))
                  ],
                ),
                title: const Text(
                  'My Status',
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                subtitle: const Text(
                  'Add to my status',
                  style: TextStyle(
                      fontSize: 18, color: Color.fromARGB(255, 120, 117, 117)),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 54, 53, 53),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.camera_alt,
                            color: Colors.blue,
                          )),
                    ),
                    const SizedBox(
                      height: 10,
                      width: 10,
                    ),
                    CircleAvatar(
                      backgroundColor: const Color.fromARGB(255, 54, 53, 53),
                      child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.edit_rounded,
                            color: Colors.blue,
                          )),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const Row(
            children: [
              Padding(
                padding: EdgeInsets.all(20.10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'RECENT UPDATES',
                      style: TextStyle(
                          fontSize: 20,
                          color: Color.fromARGB(255, 118, 114, 114)),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: ListView.separated(
              itemCount: names.length,
              itemBuilder: (context, index) {
                return ListTile(
                  tileColor: const Color.fromARGB(255, 0, 0, 0),
                  leading: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => StatusStory(index: index),
                        ),
                      );
                    },
                    child: CircleAvatar(
                      radius: 40,
                      backgroundColor: const Color.fromARGB(220, 136, 229, 253),
                      child: CircleAvatar(
                        radius: 25,
                        foregroundImage: NetworkImage(images[index]),
                      ),
                    ),
                  ),
                  title: Text(
                    names[index],
                    style: const TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  subtitle: Text(
                    times[index],
                    style: const TextStyle(
                        fontSize: 21,
                        fontWeight: FontWeight.normal,
                        color: Colors.white),
                  ),
                );
              },
              separatorBuilder: (BuildContext context, int index) {
                return Container(
                  height: 1,
                  color: Colors.white,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
