import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: IdCard()));
}

class IdCard extends StatefulWidget {
  const IdCard({super.key});

  @override
  State<IdCard> createState() => _IdCardState();
}

class _IdCardState extends State<IdCard> {
  // This widget is the root of your application.
  int level = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text("ID Card"),
          centerTitle: true,
          backgroundColor: Colors.grey[850],
          elevation: 0.0,
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              level += 1;
            });
          },
          backgroundColor: Colors.grey[800],
          child: const Icon(Icons.add),
        ),
        body: Padding(
            padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  const Center(
                    child: CircleAvatar(
                        backgroundImage:
                            AssetImage("images/kakashi-hatake.jpg"),
                        radius: 60.0),
                  ),
                  Divider(
                    height: 60.0,
                    color: Colors.grey[800],
                  ),
                  const Text(
                    "Name",
                    style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text(
                    "Nishant Sharma",
                    style: TextStyle(
                        color: Colors.amberAccent,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  const Text(
                    "Level",
                    style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '$level',
                    style: const TextStyle(
                        color: Colors.amberAccent,
                        letterSpacing: 2.0,
                        fontSize: 28.0,
                        fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 30.0,
                  ),
                  Row(children: <Widget>[
                    Icon(Icons.mail, color: Colors.grey[400]),
                    const SizedBox(width: 10.0),
                    Text("nish95.sha@gmail.com",
                        style: TextStyle(
                          color: Colors.grey[400],
                          letterSpacing: 1.0,
                        ))
                  ]),
                ])));
  }
}
