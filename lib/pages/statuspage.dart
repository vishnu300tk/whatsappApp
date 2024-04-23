import 'package:flutter/material.dart';

// ignore: must_be_immutable
class StatusStory extends StatelessWidget {
  int index;
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
  StatusStory({super.key, required this.index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        leading: 
            IconButton(
                onPressed: () {
                  Navigator.pop(
                    context,
                  );
                },
                icon: const Icon(
                  color: Colors.white,
                  Icons.arrow_back_ios)),
            
         
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              radius: 20,
              foregroundImage: NetworkImage(images[index]),
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              names[index],
              style: const TextStyle(fontSize: 20, color: Colors.white),
            ),
          ],
        ),
        actions: const [
          CircleAvatar(
            radius: 17,
            backgroundColor: Colors.white,
            child: CircleAvatar(
              radius: 15,
              backgroundColor: Colors.black,
              child: Icon(Icons.more_horiz,color: Colors.white,),
            ),
          ),
          SizedBox(
            width: 10,
          ),
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.amber,
        child: Image(image: NetworkImage(images[index]),
        fit: BoxFit.fill,),
        
      ),
    );
  }
}
