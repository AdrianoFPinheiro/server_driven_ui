import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List<Map<String, dynamic>> serverUI = [
    {'type': 'SizedBox', 'height': 30.0},
    {'type': 'TextField', 'hint': 'Nome', 'obscure': false},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'E-mail', 'obscure': false},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'Password', 'obscure': true},
    {'type': 'SizedBox', 'height': 10.0},
    {'type': 'TextField', 'hint': 'Confirm Password', 'obscure': true},
    {'type': 'SizedBox', 'height': 20.0},
    {'type': 'MaterialButton', 'hint': 'Login'},
    {'type': 'SizedBox', 'height': 20.0},
    {'type': 'FlutterLogo', 'size': 80.0}
  ];

  @override
  Widget build(BuildContext context) {
    List<Widget> sduiWidgets = [];
    serverUI.forEach((e) {
      String type = e['type'];
      switch (type) {
        case 'TextField':
          sduiWidgets.add(TextField(
            decoration: InputDecoration(
              hintText: e['hint'],
              border: const OutlineInputBorder(),
            ),
            obscureText: e['obscure'],
          ));
          break;

        case 'MaterialButton':
          sduiWidgets.add(MaterialButton(
            minWidth: double.infinity,
            child: Text(e['hint']),
            color: Colors.blue,
            onPressed: () {},
          ));
          break;

        case 'SizedBox':
          sduiWidgets.add(SizedBox(
            height: e['height'],
          ));
          break;

        case 'FlutterLogo':
          sduiWidgets.add(FlutterLogo(
            size: e['size'],
          ));
          break;
      }
    });

    return Scaffold(
      appBar: AppBar(
        title: const Text('Server Driven UI'),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        child: Column(
          children: [...sduiWidgets],
        ),
      ),
    );
  }
}
