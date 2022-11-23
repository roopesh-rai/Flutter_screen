import 'package:flutter/material.dart';

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  bool _flag = true;

  static List<Widget> _widgetData = <Widget>[
    Text(
      'FAVOURITES',
      style: TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    Text(
      'PLAYLISTS',
      style: TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    Text(
      'TRACKS',
      style: TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    Text(
      'NEWS',
      style: TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
    ),
    Text(
      'Settings',
      style: TextStyle(
          fontSize: 35, fontWeight: FontWeight.bold, color: Colors.white),
    )
  ];
  static List<Widget> _widgetOptions = <Widget>[
    Column(children: [
      Align(
        alignment: Alignment.centerLeft,
        child: Text('PLAYLISTS',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 140, 0, 149))),
      ),
      Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Container(
            height: 175,
            width: 400,
            child: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Image.asset(
                    "assets/soundbox.png",
                    height: 50,
                    width: 50,
                  ),
                  Text("It's a little quiet here."),
                ],
              ),
            ),
            // color: Colors.transparent,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
          )
        ],
      ),
      SizedBox(
        height: 40,
      ),
      Align(
        alignment: Alignment.centerLeft,
        child: Text('TRACKS',
            textAlign: TextAlign.left,
            style: TextStyle(
                fontSize: 35,
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 140, 0, 149))),
      ),
      Stack(
        fit: StackFit.passthrough,
        children: <Widget>[
          Container(
            height: 175,
            width: 400,
            child: Center(
              child: Column(
                children: [
                  Padding(padding: EdgeInsets.only(top: 40)),
                  Image.asset(
                    "assets/audio_track.png",
                    height: 50,
                    width: 50,
                  ),
                  Text("It's a little quiet here."),
                ],
              ),
            ),
            // color: Colors.transparent,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.black12)),
          )
        ],
      )
    ]),
    Container(
      child: Column(children: [
        Row(
          children: [
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Ready Set Dance",
                  style: TextStyle(fontSize: 10),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.yellow),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.yellow),
                    )))),
            SizedBox(
              width: 5,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Ready Set Ballet",
                  style: TextStyle(fontSize: 10),
                ),
                style: ButtonStyle(
                    backgroundColor:
                        MaterialStateProperty.all(Colors.pinkAccent),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.pinkAccent),
                    )))),
            SizedBox(
              width: 5,
            ),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Ready Set Tap",
                  style: TextStyle(fontSize: 10, color: Colors.lightBlueAccent),
                ),
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.white),
                    shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                        RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.lightBlueAccent),
                    )))),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(
              2,
              (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/rsd_25.jpg"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                    // child: Text("Let's Launch 30 Minutes"),
                  ),
                );
              },
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.all(15.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 10.0,
            mainAxisSpacing: 10.0,
            shrinkWrap: true,
            children: List.generate(
              2,
                  (index) {
                return Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/rsd_b.png"),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.all(
                        Radius.circular(20.0),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        )
      ]),
    ),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Notifications Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
    Text('Profile Page',
        style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold)),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 140, 0, 149),
        toolbarHeight: 150.00, //set your height
        flexibleSpace: SingleChildScrollView(
          child: SafeArea(
            child: Container(
              padding: EdgeInsets.only(left: 15, right: 10),
              // color: Color.fromARGB(255, 140, 0, 149), // set your color
              child: Column(
                children: [
                  Row(children: [
                    Image.asset(
                      "assets/rsd_logo.png",
                      height: 100,
                      width: 70,
                    ),
                    (IconButton(
                        padding: EdgeInsets.only(left: 220),
                        onPressed: () {},
                        icon: Icon(
                          Icons.account_circle_outlined,
                          color: Colors.white,
                          size: 45,
                        )))
                  ]),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        children: [_widgetData.elementAt(_selectedIndex)],
                      ))
                ],
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                label: "Favourites", icon: Icon(Icons.star)),
            BottomNavigationBarItem(
                label: "Playlists", icon: Icon(Icons.queue_music_rounded)),
            BottomNavigationBarItem(
                label: "Tracks", icon: Icon(Icons.audiotrack_sharp)),
            BottomNavigationBarItem(
                label: "News", icon: Icon(Icons.library_books)),
            BottomNavigationBarItem(
                label: "Settings", icon: Icon(Icons.settings)),
          ],
          selectedItemColor: Color.fromARGB(255, 140, 0, 149),
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          elevation: 5),
      body: Container(
        padding: EdgeInsets.only(top: 15, left: 15, right: 15),
        child: SingleChildScrollView(
          child: Column(
            children: [_widgetOptions.elementAt(_selectedIndex)],
          ),
        ),
      ),
    );
  }
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}
