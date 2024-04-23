// 
import 'package:flutter/material.dart';


// ignore: must_be_immutable
class AudioCall extends StatelessWidget {
  String name;
  String image;
  AudioCall({super.key, required this.name, required this.image, required index});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          Image.network(
              'https://i.pinimg.com/originals/97/c0/07/97c00759d90d786d9b6096d274ad3e07.png'),
          Column(
            children: [
             
              const Padding(
                padding: EdgeInsets.only(top: 30.0),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Spacer(),
                    Icon(
                      Icons.lock,
                      color: Colors.grey,
                      size: 15,
                    ),
                    SizedBox(
                  width: 10,
                ),
                    Text(
                      "End-to-end encrypted",
                      style: TextStyle(color: Colors.grey, letterSpacing: 1),
                    ),
                    Spacer(),
                    Icon(
                      Icons.person_add,
                      color: Colors.white,
                    ),
                   SizedBox(
                  width: 20,
                ),
                  ],
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    foregroundImage: NetworkImage(image),
                  ),
                  const Positioned(
                    bottom: 0,
                    right: 0,
                    child: CircleAvatar(
                      radius: 18,
                      child: Image(
                        image: NetworkImage(
                            'https://cdn-icons-png.flaticon.com/128/1384/1384023.png'),
                        width: 25,
                        height: 25,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                name,
                style: const TextStyle(
                    fontSize: 20, color: Colors.white, letterSpacing: 1),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Ringing ...",
                style: TextStyle(color: Colors.grey, letterSpacing: 1),
              ),
              const SizedBox(
                height: 420,
              ),
              Expanded(
                child: Container(
                  color: Colors.black,
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
        ],
      ),
    );
  }
}