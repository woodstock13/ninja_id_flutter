import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: NinjaCard(),
    ));

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  int ninjaLevel = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.grey[900],
        appBar: AppBar(
          title: const Text("Ninja ID Card"),
          backgroundColor: Colors.grey[850],
          elevation: 0.0, // no shadow
        ),
        body: Container(
          padding: const EdgeInsets.fromLTRB(30.0, 40.0, 30.0, 0.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              const Center(
                child: CircleAvatar(
                  backgroundImage: AssetImage('assets/bb8.png'),
                  radius: 40.0,
                ),
              ),
              Divider(
                height: 60.0,
                color: Colors.grey[800],
              ),
              const Text(
                "NAME",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(height: 5.0),
              const Text(
                "BB-8",
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30.0),
              const Text(
                "CURRENT NINJA LEVEL",
                style: TextStyle(color: Colors.grey, letterSpacing: 2.0),
              ),
              const SizedBox(height: 5.0),
              Text(
                '$ninjaLevel',
                style: TextStyle(
                    color: Colors.amber,
                    letterSpacing: 2.0,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 30.0),
              Row(
                children: [
                  Icon(
                    Icons.email,
                    color: Colors.grey,
                  ),
                  const SizedBox(width: 10.0),
                  const Text(
                    "bb8@mail.com",
                    style: TextStyle(
                      color: Colors.grey,
                      letterSpacing: 1.0,
                      fontSize: 18.0,
                    ),
                  )
                ],
              ),
              const SizedBox(height: 30.0),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              ninjaLevel += 1;
            });
          },
          child: Icon(Icons.add),
          backgroundColor: Colors.red,
        ));
  }
}
