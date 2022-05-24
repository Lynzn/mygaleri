import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarAppBar(),
    );
  }
}

class BelajarAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: DefaultTabController(
        length: 2,
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            return <Widget>[
              SliverAppBar(
                expandedHeight: 200.0,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                  centerTitle: true,
                  title: Text("Belajar SliverAppBar",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.0,
                      )),
                  background: Image(
                    image: NetworkImage('https://cdn.pixabay.com/photo/2020/10/04/18/13/mountains-5627143_1280.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SliverPersistentHeader(
                pinned: true,
                // padding: new EdgeInsets.all(10.0),
                //
                delegate: _SliverAppBarDelegate(
                  TabBar(
                    labelColor: Colors.black87,
                    unselectedLabelColor: Colors.grey,
                    tabs: [
                      new Tab(icon: new Icon(Icons.audiotrack), text: "Songs"),
                      new Tab(icon: new Icon(Icons.collections), text: "Gallery"),
                    ],
                  ),
                ),
              ),
            ];
          },
          body: Center(),
        ),
      ),
    );
  }
}

class _SliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  _SliverAppBarDelegate(this._tabBar);
  final TabBar _tabBar;

  double get minExtent => _tabBar.preferredSize.height;
  double get maxExtent => _tabBar.preferredSize.height;

  Widget build(BuildContext context, double shrinkOffset, bool overlabsContents) {
    return new Container(
      child: Container(
        width: double.infinity,
        child: Column(
          children: [
            ListTile(
              leading: Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black, image: DecorationImage(image: NetworkImage("https://i.ytimg.com/vi/euCqAq6BRa4/maxresdefault.jpg"), fit: BoxFit.cover)),
              ),
              title: Text("Let me Love you", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("DJ Snake", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12)),
                    Text("4.38", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12))
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black, image: DecorationImage(image: AssetImage("assets/images/6.jpg"), fit: BoxFit.cover)),
              ),
              title: Text("Love me like you do", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("DJ Snake", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12)),
                    Text("4.38", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12))
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black, image: DecorationImage(image: AssetImage("assets/images/8.jpg"), fit: BoxFit.cover)),
              ),
              title: Text("Don't Let me down", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("DJ Snake", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12)),
                    Text("4.38", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12))
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black, image: DecorationImage(image: AssetImage("assets/images/9.jpg"), fit: BoxFit.cover)),
              ),
              title: Text("Take me with you", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("DJ Snake", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12)),
                    Text("4.38", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12))
                  ],
                ),
              ),
            ),
            ListTile(
              leading: Container(
                width: 50,
                height: 70,
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(5), color: Colors.black, image: DecorationImage(image: AssetImage("assets/images/7.jpg"), fit: BoxFit.cover)),
              ),
              title: Text("Feel Me", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 14)),
              subtitle: Padding(
                padding: const EdgeInsets.only(top: 7),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("DJ Snake", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500, fontSize: 12)),
                    Text("4.38", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 12))
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  bool shouldRebuild(_SliverAppBarDelegate oldDelegate) {
    return false;
  }
}
