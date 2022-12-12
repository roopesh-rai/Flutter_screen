import 'package:flutter/material.dart';

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  bool click = true;
  bool _flag = true;

  Widget button(
      {required String name,
      required Color color,
      required Color textcolor,
      required Color another_color,
      required Color borderside}) {
    return Container(
        height: 55,
        width: 300,
        child: ElevatedButton(
            child: Text(
              name,
              style: TextStyle(color: textcolor),
            ),
            onPressed: () {},
            style: ElevatedButton.styleFrom(
                side: BorderSide(color: borderside),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(18)),
                backgroundColor: (click == false) ? color : another_color)));
  }

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
  static final List<Widget> _widgetOptions = <Widget>[
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
            // button(
            //     name: 'Ready Set Dance',
            //     color: Colors.white,
            //     textcolor: Colors.green,
            //     another_color: Colors.yellow,
            //  borderside: Colors.yellow),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Ready Set Ballet",
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
        SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10, top: 10),
            child: SingleChildScrollView(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 0.0,
                shrinkWrap: true,
                children: List.generate(
                  2,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/rsd_25.jpg",
                              height: 125,
                            ),
                            Center(
                                child: Text(
                              "Let's Launch\n 30 Minutes",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
        SingleChildScrollView(
          child: Container(
            padding:
                EdgeInsets.only(left: 5.0, right: 5.0, bottom: 10, top: 10),
            child: SingleChildScrollView(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 5.0,
                mainAxisSpacing: 0.0,
                shrinkWrap: true,
                children: List.generate(
                  2,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 10, right: 10),
                      child: Container(
                        child: Column(
                          children: [
                            Image.asset(
                              "assets/rsd_b.png",
                              height: 125,
                            ),
                            Center(
                                child: Text(
                              "Unicorn Dance\n 45 Minutes",
                              style: TextStyle(
                                  fontSize: 14, fontWeight: FontWeight.bold),
                            ))
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ),
      ]),
    ),
    Container(
      child: Column(children: [
        Row(
          children: [
            // button(
            //     name: 'Ready Set Dance',
            //     color: Colors.white,
            //     textcolor: Colors.green,
            //     another_color: Colors.yellow,
            //  borderside: Colors.yellow),
            ElevatedButton(
                onPressed: () {},
                child: Text(
                  "Ready Set Ballet",
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
        SingleChildScrollView(
          child: Container(
            height: 500,
            width: 500,
            child: ListView(
              padding: EdgeInsets.all(8),
              children: <Widget>[
                Container(
                  height: 75,
                  color: Colors.white70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("PARACHUTE PLAY",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      )),
                                  Padding(padding: EdgeInsets.only(right: 70)),
                                  // IconButton(onPressed: (){(click == false) ? Icon(Icons.star_border) : Icon(Icons.star)}, icon: Icon(Icons.star_border))
                                  IconButton(
                                      onPressed: () {
                                        Icon(Icons.star);

                                      },
                                      icon: Icon(
                                        Icons.star_border,
                                        color: Colors.yellow,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Icon(
                                    Icons.watch_later_rounded,
                                    size: 10,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "3 Min 20 Sec",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Divider(height: 1),
                Container(
                  height: 75,
                  color: Colors.white70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("LET'S GO CAMPING",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      )),
                                  Padding(padding: EdgeInsets.only(right: 58)),
                                  // IconButton(onPressed: (){(click == false) ? Icon(Icons.star_border) : Icon(Icons.star)}, icon: Icon(Icons.star_border))
                                  IconButton(
                                      onPressed: () {
                                        Icon(Icons.star);
                                      },
                                      icon: Icon(
                                        Icons.star_border,
                                        color: Colors.yellow,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Icon(
                                    Icons.watch_later_rounded,
                                    size: 10,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "3 Min 20 Sec",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Divider(height: 1),
                Container(
                  height: 75,
                  color: Colors.white70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("WELCOME SONG",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      )),
                                  Padding(padding: EdgeInsets.only(right: 85)),
                                  // IconButton(onPressed: (){(click == false) ? Icon(Icons.star_border) : Icon(Icons.star)}, icon: Icon(Icons.star_border))
                                  IconButton(
                                      onPressed: () {
                                        Icon(Icons.star_border);
                                      },
                                      icon: Icon(
                                        Icons.star_border,
                                        color: Colors.yellow,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Icon(
                                    Icons.watch_later_rounded,
                                    size: 10,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "3 Min 20 Sec",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Divider(height: 1),
                Container(
                  height: 75,
                  color: Colors.white70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("BLAST OFF",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      )),
                                  Padding(padding: EdgeInsets.only(right: 139)),
                                  // IconButton(onPressed: (){(click == false) ? Icon(Icons.star_border) : Icon(Icons.star)}, icon: Icon(Icons.star_border))
                                  IconButton(
                                      onPressed: () {
                                        Icon(Icons.star);
                                      },
                                      icon: Icon(
                                        Icons.star_border,
                                        color: Colors.yellow,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Icon(
                                    Icons.watch_later_rounded,
                                    size: 10,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "3 Min 20 Sec",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Divider(height: 1),
                Container(
                  height: 75,
                  color: Colors.white70,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Text("POM POM PARADE",
                                      style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 22,
                                      )),
                                  Padding(padding: EdgeInsets.only(right: 60)),
                                  // IconButton(onPressed: (){(click == false) ? Icon(Icons.star_border) : Icon(Icons.star)}, icon: Icon(Icons.star_border))
                                  IconButton(
                                      onPressed: () {
                                        Icon(Icons.star);
                                      },
                                      icon: Icon(
                                        Icons.star_border,
                                        color: Colors.yellow,
                                      ))
                                ],
                              ),
                              Row(
                                children: [
                                  Padding(padding: EdgeInsets.only(left: 10)),
                                  Icon(
                                    Icons.watch_later_rounded,
                                    size: 10,
                                    color: Colors.grey,
                                  ),
                                  Text(
                                    "3 Min 20 Sec",
                                    style: TextStyle(
                                        fontSize: 10, color: Colors.grey),
                                  )
                                ],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
                Divider(height: 1),
              ],
            ),
          ),
        ),
      ]),
    ),
    SingleChildScrollView(
        child: Container(
      width: 500,
      height: 500,
      padding: new EdgeInsets.only(right: 1.0, left: 1.0, bottom: 30, top: 20),
      child: Column(
        children: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 44,
                      minHeight: 44,
                      maxWidth: 64,
                      maxHeight: 64,
                    ),
                    child: Image.asset("assets/rsd_logo.png"),
                  ),
                  title: Text('\nNEW TAP PLAY LIST ADDED',
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold)),
                  subtitle: Text(
                      '\nWe are super excited to announce that we have added a brand new playlist with new tracks to Ready Set Tap\n',
                      style: TextStyle(fontSize: 12.0)),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
            color: Colors.white,
            elevation: 10,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                ListTile(
                  leading: ConstrainedBox(
                    constraints: BoxConstraints(
                      minWidth: 44,
                      minHeight: 44,
                      maxWidth: 64,
                      maxHeight: 64,
                    ),
                    child: Image.asset("assets/rsd_logo.png"),
                  ),
                  title: Text('\nUPDATE 2.4 AVAILABLE',
                      style: TextStyle(
                          fontSize: 17.0, fontWeight: FontWeight.bold)),
                  subtitle: Text(
                      '\nWe are super excited to announce that we have added a brand new playlist with new tracks to Ready Set Tap\n',
                      style: TextStyle(fontSize: 12.0)),
                ),
              ],
            ),
          ),
        ],
      ),
    )),
    Text('',
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
      resizeToAvoidBottomInset: false,
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
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(top: 15, left: 15, right: 15),
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
