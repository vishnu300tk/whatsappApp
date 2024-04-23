import 'package:flutter/material.dart';
import 'package:whatsapp_app/bottomBar.dart';

class CommunitiesPage extends StatelessWidget {
  const CommunitiesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(child: Text('Community',style: TextStyle(
          color: Colors.white
        ),)),
      ),
       bottomNavigationBar: const BottomPage(),
      body: SingleChildScrollView(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              width: double.infinity,
              child: Text('Communities',
              style: TextStyle(fontWeight: FontWeight.bold,fontSize: 33,
              color: Colors.white),),
            ),
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 33, 33, 33)),
              child:   ListTile(
                leading: Stack(
                  
                  children:[  
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 60,
                        width: 60,
                        decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 121, 118, 118)),
                        child: const Icon(
                        size: 60,
                        color: Color.fromARGB(255, 246, 244, 244),
                        Icons.groups_sharp),
                      ),
                    ),
                    const Positioned(
                     right: -3,
                      bottom: 0,
                      child:
                     Icon(Icons.add_circle_outlined,
                     color: Color.fromARGB(255, 5, 130, 231),))
                    
                ]
                 ),
                title: const Text('New Community',
                style: TextStyle(fontWeight: FontWeight.normal,fontSize: 20,
                color: Colors.white),),
              ),
            ),
            const SizedBox(
              height: 30,
              width: double.infinity,
              
            ),
            Container(
              height: 280,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: const Color.fromARGB(255, 37, 37, 37)),
                child: Column(
                  children: [
                    ListTile(
                      leading:Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 24, 24, 182)),
                    child: const Image(
                      fit: BoxFit.fill,
                      image: NetworkImage('https://th.bing.com/th/id/OIP.sOaCNmlwXeZUbBb7qSP6AQHaHa?w=162&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7')),
                                 
                      ),
                      title: const Text('AVODHA EDUTECH',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                      color: Colors.white),),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    ListTile(
                      leading:Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 24, 24, 182)),
                    child: const Image(
                      fit: BoxFit.fill,
                      image: NetworkImage('https://th.bing.com/th/id/OIP.QYtJjT_KA-hSmC0qCEOe7AHaFw?w=224&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7')),
                 
                      ),
                      title: const Text('Announcements',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.normal,
                      color: Colors.white),),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    ListTile(
                      leading:Container(
                        height: 40,
                        width: 40,
                        decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 24, 24, 182)),
                    child: const Image(image: NetworkImage('https://th.bing.com/th/id/OIP.rRakXakvvgw67vrrx4GyJQHaF8?w=189&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7')),
                 
                      ),
                      title: const Text('Avodha E-learning',
                      style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                      color: Colors.white),),
                    ),
                    const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    ListTile(
                      leading:const Text('See All',style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.normal,color: Color.fromARGB(255, 222, 217, 217)
                      ),),

                    trailing: IconButton(onPressed: (){},
                     icon: const Icon(Icons.arrow_forward_ios,
                     color: Color.fromARGB(255, 225, 222, 222),)),
                     
                    ),
                     ],
                ),
                ),
                const SizedBox(height: 30,
                width: double.infinity,
                ),
                Container(
                  height: 200,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color:const Color.fromARGB(255, 37, 37, 37)),
               
             child: Column(
               children: [
                 ListTile(
                          leading:Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 24, 24, 182)),
                        child: const Image(
                          fit: BoxFit.fill,
                          image: NetworkImage('https://th.bing.com/th/id/OIP.cC-lUbzQU0JjErHKMcoA_wHaEK?w=170&h=181&c=7&r=0&o=5&dpr=1.5&pid=1.7')),
                                     
                          ),
                          title: const Text('TM FAZE',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          color: Colors.white),),
                        ),
                        const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                    ListTile(
                          leading:Container(
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: const Color.fromARGB(255, 24, 24, 182)),
                        child: const Image(
                          fit: BoxFit.fill,
                          image: NetworkImage('https://th.bing.com/th/id/OIP.QYtJjT_KA-hSmC0qCEOe7AHaFw?w=224&h=180&c=7&r=0&o=5&dpr=1.5&pid=1.7')),
                                     
                          ),
                          title: const Text('Announcements',
                          style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                          color: Colors.white),),
                          
                        ),
                           const Divider(
                      thickness: 1,
                      color: Colors.white,
                    ),
                       ListTile(
                      leading:const Text('See All',style: TextStyle(
                        fontSize: 23,
                        fontWeight: FontWeight.normal,color: Color.fromARGB(255, 231, 226, 226)
                      ),),

                    trailing: IconButton(onPressed: (){}, 
                    icon: const Icon(Icons.arrow_forward_ios,
                    color: Color.fromARGB(255, 210, 206, 206),)),
                     
                    ),
               ],
             ),           
               
                ),
          ],
        ),
        ),
    );
  }
}