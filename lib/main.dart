import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  Widget Build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Belajar NavBar"),
      ),
      body: Center(child: Text('Home Menu')),
      bottomNavigationBar: BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.home), title: Text('Beranda')),
        BottomNavigationBarItem(icon: Icon(Icons.assignment), title: Text('Pesanan')),
        BottomNavigationBarItem(icon: Icon(Icons.mail), title: Text('Inbox')),
        BottomNavigationBarItem(icon: Icon(Icons.person), title: Text('Profile')),
      ]),
    );
  }
}
