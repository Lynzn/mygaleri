import "package:flutter/material.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      body: SafeArea(
          child: Column(
        children: [
          //appbar
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Hello John!',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                    )),
                Container(
                  padding: EdgeInsets.all(4),
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    shape: BoxShape.circle,
                  ),
                  child: Icon(Icons.search),
                ),
              ],
            ),
          ),
          SizedBox(height: 25),

          //card
          Container(
              height: 200,
              child: PageView(scrollDirection: Axis.horizontal, children: [
                MyCard(
                  balance: 2.478,
                  cardNumber: 123456,
                  month: 02,
                  year: 24,
                  color: Colors.purple,
                ),
                MyCard(
                  balance: 8.981,
                  cardNumber: 189364,
                  month: 11,
                  year: 24,
                  color: Colors.lime,
                ),
                MyCard(
                  balance: 4.127,
                  cardNumber: 995623,
                  month: 09,
                  year: 25,
                  color: Colors.green,
                ),
              ]))
        ],
      )),
    );
  }
}

class MyCard extends StatelessWidget {
  final double balance;
  final int cardNumber;
  final int month;
  final int year;
  final color;
  const MyCard({
    Key? key,
    required this.balance,
    required this.cardNumber,
    required this.month,
    required this.year,
    required this.color,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 25),
        child: Container(
            width: 300,
            padding: EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: color,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 10),
                Text('Balance',
                    style: TextStyle(
                      color: Colors.white,
                    )),
                SizedBox(height: 30),
                Text('\$' + balance.toString(),
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                    )),
                SizedBox(height: 30),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(cardNumber.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        )),
                    Text(month.toString() + '/' + year.toString(),
                        style: TextStyle(
                          color: Colors.white,
                        )),
                  ],
                )
              ],
            )));
  }
}
