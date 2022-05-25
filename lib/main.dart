import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ListViewHome(),
    );
  }
}

class ListViewHome extends StatelessWidget {
  var date = DateTime.now();
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Toko Online'),
        ),
        body: ListView(
          padding: const EdgeInsets.all(8),
          children: <Widget>[
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://images.tokopedia.net/img/cache/700/product-1/2020/4/27/620102302/620102302_7c350566-6e96-4f96-a514-1187b0760e4b_1100_1100.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('Gamis hagia gown Wanita', style: TextStyle(fontSize: 20.0)),
            ),
            Container(
              height: 50,
              child: Text('Rp 145.000', style: TextStyle(color: Colors.orange, fontSize: 30)),
            ),
            Container(
              height: 30,
              margin: const EdgeInsets.only(top: 10.0),
              child: Text('Stok Tersedia', style: TextStyle(fontSize: 20.0)),
            ),
          ],
        ));
  }
}
