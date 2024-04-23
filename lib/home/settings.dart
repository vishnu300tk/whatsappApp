import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:whatsapp_app/bottomBar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        
        title: const Center(
          child: Text('Settings',
          style: TextStyle(
            color: Colors.white),)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
       bottomNavigationBar: const BottomPage(),
      body:   SingleChildScrollView(
        child: Column(
          children: [
            
              const Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text('Settings',style: TextStyle(fontSize: 40,fontWeight: FontWeight.bold,color: Colors.white),),
              ],
              
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CupertinoSearchTextField(
                itemColor: Colors.white,
                  prefixIcon:  Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                  
                  style:  TextStyle(color: Colors.white,fontSize: 20,),
                  backgroundColor: Color.fromARGB(255, 116, 109, 109),
                ),
            ),
            Container(
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: const Color.fromARGB(255, 57, 58, 58),),
              
              height: 160,
              width: double.infinity,
             
                  child: const Column(
                    children:  [
                      ListTile(
                        
                        leading: CircleAvatar(
                          radius:60,
                          backgroundColor: Colors.black,
                          child: CircleAvatar(
                            radius: 30,
                            foregroundImage: NetworkImage('https://th.bing.com/th?id=OIP.FUjbwvC7zNj9yv8DoBF4LgHaJO&w=223&h=279&c=8&rs=1&qlt=90&o=6&dpr=1.5&pid=3.1&rm=2'),
                            ),
                            ),
                            title: Text('kbdkb',style: TextStyle(
                              fontSize: 25,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),),
                            subtitle: Text('heicgigeci',
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.normal,
                              fontSize: 20,
                            ),
                            
                                       ),
                                       trailing: CircleAvatar(
                      radius: 30,
                      backgroundColor: Color.fromARGB(255, 76, 77, 76),
                      child: CircleAvatar(
                        radius: 25,
                        backgroundColor: Color.fromARGB(255, 123, 120, 120),
                         foregroundImage: NetworkImage('https://cdn-icons-png.flaticon.com/128/10326/10326589.png',),
                                      ),
                                       ),
                                      ),
                                  Divider(
                                    thickness: 0,
                                    height: 10,color: Colors.white,),
                                  
                                  ListTile(
                                    leading: Image(
                                      height: 80,
                                      image: NetworkImage('https://cdn-icons-png.flaticon.com/128/1999/1999625.png'),),
                                  title: Text('Avatar',
                                  style: TextStyle(fontWeight: FontWeight.normal,fontSize: 25,
                                  color: Colors.white),),
                                  
                                  trailing: Icon(Icons.arrow_forward_ios_outlined,
                                  color: Color.fromARGB(255, 141, 139, 139),),
                                  ),
                                  
                    ],
                  ),
                    
            ),
            const Divider(
              height: 50,
              thickness: 10,
              color: Colors.black,
            ),
            Container(
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: const Color.fromARGB(255, 57, 58, 58),),
                height: 200,
                width: double.infinity,
                child:  Column(
                  children: [
                    const ListTile(
                      leading:Image(
                      height: 30,
                      color: Colors.green,
                      image: NetworkImage('https://cdn-icons-png.flaticon.com/128/7041/7041823.png'),
        
                    ),
                    title: Text('Broadcast Lists',
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                    color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 152, 151, 151),),
                    
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                    const ListTile(
                      leading:Image(
                      height: 30,
                     
                      
                      image: NetworkImage('https://th.bing.com/th/id/OIP.4_wFrLSw601bt4oi5AjS_QHaHa?pid=ImgDet&w=192&h=192&c=7&dpr=1.5'),
        
                    ),
                    title: Text('Starred Massages',
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                    color: Colors.white),),
                    trailing: Icon(Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 152, 151, 151),),
                    
                    ),
                    const Divider(
                      thickness: 2,
                      color: Colors.white,
                    ),
                    ListTile(
                      leading:Container(
                        decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4),),
                        height: 30,
                        width: 30,
                        
                        child: const Icon(
                          color: Colors.white,
                          Icons.computer),
                      ),
                    title: const Text('Linked Devices',
                    style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                    color: Colors.white),),
                    trailing: const Icon(Icons.arrow_forward_ios_outlined,
                    color: Color.fromARGB(255, 152, 151, 151),),
                    
                    ),
                    
                  ],
                ),
            ),
            const Divider(
              height: 20,
              color: Colors.black,
            ),
            Container(
               decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: const Color.fromARGB(255, 57, 58, 58),),
              
              height: 430,
              child: Column(
                children: [
                  ListTile(
                          leading:Container(
                            decoration: BoxDecoration(color: const Color.fromARGB(255, 25, 36, 237), borderRadius: BorderRadius.circular(4),),
                            height: 30,
                            width: 30,
                            
                            child: const Image(
                              color: Colors.white,
                              height: 10,
                              image: NetworkImage('https://cdn-icons-png.flaticon.com/128/5066/5066834.png'))
                          ),
                        title: const Text('Account',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                        color: Colors.white),),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 152, 151, 151),),
                        
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.white,
                        ),
                        ListTile(
                          leading:Container(
                            decoration: BoxDecoration(color: const Color.fromARGB(255, 120, 216, 192), borderRadius: BorderRadius.circular(4),),
                            height: 30,
                            width: 30,
                            
                            child: const Icon(
                              color: Colors.white,
                              Icons.lock),
                          ),
                        title: const Text('Privacy',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                        color: Colors.white),),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 152, 151, 151),),
                        
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.white,
                        ),
                        ListTile(
                          leading:Container(
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4),),
                            height: 30,
                            width: 30,
                            
                            child: const Image(image: NetworkImage('https://cdn-icons-png.flaticon.com/128/3536/3536445.png'))
                          ),
                        title: const Text('Chats',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                        color: Colors.white),),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 152, 151, 151),),
                        
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.white,
                        ),
                        ListTile(
                          leading:Container(
                            decoration: BoxDecoration(color: Colors.red, borderRadius: BorderRadius.circular(4),),
                            height: 30,
                            width: 30,
                            
                            child: const Image(
                              height: 20,
                              image: NetworkImage('https://cdn-icons-png.flaticon.com/128/668/668289.png'))
                          ),
                        title: const Text('Notifications',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                        color: Colors.white),),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 152, 151, 151),),
                        
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.white,
                        ),
                        ListTile(
                          leading:Container(
                            decoration: BoxDecoration(color: const Color.fromARGB(255, 65, 176, 174), borderRadius: BorderRadius.circular(4),),
                            height: 30,
                            width: 30,
                            
                            child: const Icon(
                              color: Colors.white,
                              Icons.currency_rupee_rounded),
                          ),
                        title: const Text('Payments',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                        color: Colors.white),),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 152, 151, 151),),
                        
                        ),
                        const Divider(
                          thickness: 2,
                          color: Colors.white,
                        ),
                         ListTile(
                          leading:Container(
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4),),
                            
                            height: 30,
                           
                            child: const Image(
                              height: 40,
                              color: Colors.white,
                              image: NetworkImage('https://cdn-icons-png.flaticon.com/128/7601/7601533.png'),),
                          ),
                        title: const Text('Storage and Data',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                        color: Colors.white),),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 152, 151, 151),),
                        
                        ),
                        
                ],
              ),
            ),
            const Divider(
              height: 20,
              color: Colors.black,
            ),
            Container(
              decoration:BoxDecoration(
                borderRadius:BorderRadius.circular(10),
                color: const Color.fromARGB(255, 57, 58, 58),),
              height: 130,

              child:  Column(
                children: [
                  ListTile(
                    
                          leading:Container(
                            decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(4),),
                            
                            height: 30,
                            width: 30,
                             child:const Center(
                              child: Text('i',
                              style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold,
                              
                              color: Colors.white),),
                            )
                          ),
                        title: const Text('Help',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                        color: Colors.white),),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 152, 151, 151),),
                        
                        
                  ),
                  const Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),
                   ListTile(
                    
                          leading:Container(
                            decoration: BoxDecoration(color: Colors.green, borderRadius: BorderRadius.circular(4),),
                            
                            height: 30,
                           
                            child: const Image(
                              height: 20,
                              
                              image: NetworkImage('https://thumbs.dreamstime.com/b/one-white-heart-red-paper-cutting-style-138667837.jpg'),),
                          ),
                        title: const Text('Tell a Friend',
                        style: TextStyle(fontSize: 23,fontWeight: FontWeight.normal,
                        color: Colors.white),),
                        trailing: const Icon(Icons.arrow_forward_ios_outlined,
                        color: Color.fromARGB(255, 152, 151, 151),),
                        
                        
                  ),
                ],
              ),
            ),
        ],
        ),
      )
    );
  }
}