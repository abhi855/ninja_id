import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() =>runApp(MaterialApp(
  home : Ninja()
));

class Ninja extends StatefulWidget {
  // This widget is the root of your application.
  @override
  _NinjaState createState() => _NinjaState();
}

class _NinjaState extends State<Ninja> {
  int ninja_level=0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text('Ninja-ID',
        style: TextStyle(color: Colors.grey),
        ),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0.0,

      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30.0,40.0,30.0,0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/ninjaid.jpg'),
                radius: 40.0,
              ),
            ),
            Divider(
              height: 40.0,
              color: Colors.white,
            ),
            Text(
                'Name',
                style: TextStyle(color: Colors.grey,
                  letterSpacing: 2.0,
              ),
            ),
            SizedBox(height :10.0),
            Text(
                'Chun-Li',
                style: TextStyle(color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,
                )
            ),
            SizedBox(height :30.0),
            Text(
                'Current Ninja Level',
                style: TextStyle(color: Colors.grey,
                  letterSpacing: 2.0,
                )
            ),
            SizedBox(height :10.0),
            Text(
                '$ninja_level',
                style: TextStyle(color: Colors.amberAccent,
                  letterSpacing: 2.0,
                  fontSize: 28.0,
                  fontWeight: FontWeight.bold,

                )
            ),
            SizedBox(height :30.0),

            Row(
              children: <Widget>[
                Icon(
                  Icons.email,
                  color: Colors.grey,
                ),
                SizedBox(width: 10.0),
                Text(
                  'chunli.netninja@uk.co',
                  style: TextStyle(
                    color: Colors.grey[400],
                    fontSize: 18.0,
                    letterSpacing: 1.0,
                    fontStyle: FontStyle.italic,
                  ),
                )
              ],
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: ( ) {
          setState(() {
            ninja_level+=1;
          });
        },
        child: Icon(Icons.add),
        backgroundColor: Colors.grey[800],
      ),
    );
  }
}

