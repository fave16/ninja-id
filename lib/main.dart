import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: NinjaCard()));
}

class NinjaCard extends StatefulWidget {
  const NinjaCard({super.key});

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
        title: const Text("Ninja ID CARD"),
        centerTitle: true,
        backgroundColor: Colors.grey[650],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            ninjaLevel += 1;
          });
        },
        backgroundColor: Colors.grey[300],
        child: const Icon(Icons.add),
      ),
      body: const Padding(
        padding: EdgeInsets.zero,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage("assests/fave.png"),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 90.0,
              color: Colors.grey,
            ),
            Text(
              "Name",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "Fave",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Text(
              "Current Ninja Level",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
              ),
            ),
            SizedBox(height: 10.0),
            Text(
              "$ninjaLevel",
              style: TextStyle(
                color: Colors.grey,
                letterSpacing: 2.0,
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 30.0),
            Row(
              children: [
                Icon(Icons.email, color: Colors.grey),
                SizedBox(width: 10.0),
                Text(
                  "favestells.com",
                  style: TextStyle(
                    color: Colors.amberAccent,
                    fontSize: 10.0,
                    letterSpacing: 1.0,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
