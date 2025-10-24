import 'package:flutter/material.dart';

class NotificationPage extends StatefulWidget {
  const NotificationPage({super.key});

  @override
  State<NotificationPage> createState() => _NotificationPageState();
}

class _NotificationPageState extends State<NotificationPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(232, 255, 255, 255),
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          "Notifications",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
          ),
          
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                "Today",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            NotificationTile(
              avatar: "assets/profile/prof1.jpg",
              message: "Julia Seth posted a new reel: Cat videos!🐈", 
              time: "5h",
            ),
            NotificationTile(
              avatar: "assets/profile/prof2.jpg",
              message: "Saber32 posted a new reel: How to find a safe shelter during the zombie apocalypse🧟‍♀️",
              time: "3h",
            ),
            NotificationTile(
              avatar: "assets/profile/prof5.jpg",
              message: "Julia Rose posted a new reel: Bake cakes with me!😊🎂",
              time: "6h",
            ),

            const Padding(
              padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
              child: Text(
                "Earlier",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
            ),

            NotificationTile(
              avatar: "assets/myday/myday1.jpg",
              message:
                  "Cars posted a new reel: F1 car on a poopbox🛻",
              time: "2d",
            ),
            NotificationTile(
              avatar: "assets/myday/myday2.jpg",
              message: "Lobby posted a new reel: Make your house pop✨✨ ",
              time: "3d",
            ),
            NotificationTile(
              avatar: "assets/profile/prof4.jpg",
              message: "Mike Walalolo posted a new reel: Chop wood and sleep.",
              time: "4d",
            ),

            const SizedBox(height: 20),
            
          ],
        ),
      ),
    );
  }
}


class NotificationTile extends StatelessWidget {
  final String avatar;
  final String message;
  final String time;

  const NotificationTile({
    super.key,
    required this.avatar,
    required this.message,
    required this.time,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color.fromARGB(149, 210, 233, 255),
      margin: const EdgeInsets.symmetric(vertical: 1),
      child: ListTile(
        leading: Stack(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(avatar),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              child: CircleAvatar(
                radius: 9,
                backgroundColor: Colors.white,
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.blue,
                  child: const Icon(
                    Icons.video_chat_rounded,
                    size: 10,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
        title: Text(
          message,
          style: const TextStyle(fontSize: 14),
        ),
        subtitle: Text(time),
        trailing: const Icon(Icons.more_horiz),
      ),
    );
  }
}
    