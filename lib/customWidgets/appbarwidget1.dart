import 'package:flutter/material.dart';


class AppBarWidgetOne extends StatelessWidget implements PreferredSizeWidget {
  const AppBarWidgetOne({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: const CircleAvatar(
        radius: 15,
        backgroundColor: Colors.blue,
        child:CircleAvatar(
          radius: 25,
          backgroundColor: Colors.black,
          foregroundColor: Color.fromARGB(255, 11, 136, 219),
          child:  Icon(Icons.more_horiz
        ),
        )
      ),
      
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.camera_alt_outlined,
            color: Colors.white,
          ),
        ),
       
        PopupMenuButton<String>(
          color: Colors.black,
          iconColor: Colors.white,
          itemBuilder: (BuildContext context) {
            return <PopupMenuEntry<String>>[
              const PopupMenuItem<String>(
                child: Text(
                  'New group',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.normal,fontSize: 15),
                ),
              ),
              const PopupMenuItem<String>(
                child: Text('New broadcast',
                  style:TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.normal,fontSize: 15),

                ),
              ),
              const PopupMenuItem<String>(
                child: Text('Linked devices',
                  style:TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.normal,fontSize: 15),
                ),
              ),
              const PopupMenuItem<String>(
                child: Text('Starred massages',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.normal,fontSize: 15),
                ),
              ),
              const PopupMenuItem<String>(
                child: Text('Payments',
                  style:TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.normal,fontSize: 15),
                ),
              ),
              const PopupMenuItem<String>(
                child: Text('Settings',
                  style:TextStyle(
                    color: Colors.white,
                    fontWeight:FontWeight.normal,fontSize: 15),
                ),
              ),
            ];
          },
        ),
      ],
      
      backgroundColor:Colors.black,
    );
  }
}