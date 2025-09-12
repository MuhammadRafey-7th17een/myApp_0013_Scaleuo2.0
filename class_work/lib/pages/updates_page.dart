import 'package:flutter/material.dart';

class UpdatePage extends StatelessWidget {
  const UpdatePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ColoredBox(
      color: const Color.fromARGB(255, 186, 244, 207),
      child: Padding(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: 10,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ListTile(
                  leading: Container(
                    color: const Color.fromARGB(255, 136, 153, 154),
                    width: 100,
                    height: 200,
                  ),
                  title: Text("My Name"),
                  subtitle: Text("Posted 4 hours ago"),
                ),
                SizedBox(height: 15),
                Divider(),
                SizedBox(height: 15),
              ],
            );
          },
        ),
      ),
    );
  }
}
