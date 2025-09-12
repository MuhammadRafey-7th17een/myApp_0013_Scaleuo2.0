import 'package:class_work/pages/call_page.dart';
import 'package:class_work/pages/chat_screen.dart';
import 'package:class_work/pages/updates_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 164, 254, 167),
          title: Text("WhatsApp"),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.message), text: "Chats"),
              Tab(icon: Icon(Icons.circle_notifications), text: "Status"),
              Tab(icon: Icon(Icons.settings), text: "Settings"),
              Tab(icon: Icon(Icons.call), text: "Calls"),
            ],
          ),
        ),

        body: TabBarView(
          children: [ChatScreen(), UpdatePage(), Text("Setting"), CallPage()],
        ),
      ),
    );
  }
}
