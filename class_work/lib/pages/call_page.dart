import 'package:flutter/material.dart';

class CallPage extends StatelessWidget {
  const CallPage({super.key});

  @override
  Widget build(BuildContext context) {
    //

    return ColoredBox(
      color: const Color.fromARGB(255, 186, 244, 207),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                ListTile(
                  leading: CircleAvatar(
                    backgroundColor: const Color.fromARGB(255, 10, 0, 0),
                  ),
                  title: Text("MyName"),
                  subtitle: Text("18 miniuts ago"),
                  trailing: Icon(Icons.call),
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
