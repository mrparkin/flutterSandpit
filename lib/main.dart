// import 'dart:html';

import 'package:flutter/material.dart';
// my packages
 import 'package:hello_flutter/screens/home.dart';

void main() {
  runApp(new HelloFromFlutterApp());
}

class HelloFromFlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "App title",
        theme: new ThemeData(
          primarySwatch: Colors.teal,
        ),
        home: new HelloYou());
  }
}

class HelloYou extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _HelloYouState();
}

class _HelloYouState extends State<HelloYou> {
  String name = '';
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Title in nav bar"),
        backgroundColor: Colors.black12,
      ),
      body: Container(
        padding: EdgeInsets.all(15.0),
        child: Column(
          children: <Widget>[
            CheckboxListTile(
                title: Text("Check it out homie"),
                secondary: Icon(Icons.beach_access),
                controlAffinity: ListTileControlAffinity.platform,
                value: _checked,
                onChanged: (bool value) {
                  setState(() {
                    _checked = value;
                  });
                },
                activeColor: Colors.green,
                checkColor: Colors.black,),                
                        CheckboxListTile(
                title: Text("Check it out homie"),
                secondary: Icon(Icons.beach_access),
                controlAffinity: ListTileControlAffinity.platform,
                value: _checked,
                onChanged: (bool value) {
                  setState(() {
                    _checked = value;
                  });
                },
                activeColor: Colors.green,
                checkColor: Colors.black,), 
            TextField(
              decoration: InputDecoration(hintText: 'Please insert your name'),
              onChanged: (String string) {
                setState(() {
                  name = string;
                });
              },
            ),
            Text("Hello" + name + '!'),
            Home(),
          ],
        ),
      ),
    );
  }
}

// Scaffold(
//           appBar: AppBar(
//             title: Text("Title in nav bar"),
//           ),
//           body: Home(), // this is the home.dart class
//         )

// A STATEFUL INPUT TEXT BOX AND TEXT FIELD
