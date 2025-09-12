import 'package:flutter/material.dart';

class ChatScreen extends StatelessWidget {
  const ChatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color.fromARGB(255, 186, 244, 207),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 20, 19, 17),
                  ),
                  title: Text("MyName"),
                  subtitle: Text("Message Send"),
                  trailing: Text("Last Seen: 11:45"),
                ),
                Divider(),
              ],
            );
          },
        ),
      ),
    );
  }
}
