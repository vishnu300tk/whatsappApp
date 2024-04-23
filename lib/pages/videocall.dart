import 'package:flutter/material.dart';
import 'package:whatsapp_app/database/database.dart';

// ignore: must_be_immutable
class VideocallWidget extends StatelessWidget {
 int index;
   VideocallWidget( {super.key,required this.index, required name, required image });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        
        backgroundColor: Colors.black,
        title: 
         const Center(
          child:
          Text('End-to-end Encrypted',
          style: TextStyle(fontSize: 15,
          color: Colors.white),
          ),
          ),
          actions: [
            IconButton(onPressed: (){}, icon: const Icon(Icons.person,color: Colors.white,))
          ],
      ),
      body:    Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
               CircleAvatar(
                radius: 50,
                backgroundColor: const Color.fromARGB(255, 162, 156, 156),
                foregroundImage: NetworkImage(database[index]['dp']),
                  
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(database[index]['name'],style: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.white),),
              
            ],
          ),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('ringng.....',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22,color: Colors.white),),
            ],
          ),
          const SizedBox(
            height: 400,
          ),
          Expanded(
                child: Container(
                  color:const Color.fromARGB(255, 25, 26, 26),
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Icon(
                          Icons.volume_up_outlined,
                          color: Colors.white,
                        ),
                        const Icon(
                          Icons.videocam,
                          color: Colors.grey,
                        ),
                        const Icon(
                          Icons.mic_off,
                          color: Colors.white,
                        ),
                        CircleAvatar(
                          radius: 30,
                          backgroundColor: Colors.red,
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            icon: const Icon(Icons.call_end),
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
        ],
        
      ),
      
      
      );
  }
}