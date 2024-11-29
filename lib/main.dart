import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  final _list = [
    "Travel",
    "Movie",
    "Work",
    "Life",
    "Music",
  ];
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: SafeArea(
          child: Container(
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(8),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        child: Icon(Icons.arrow_back_ios),
                      ),
                      Expanded(
                        child: Container(
                          alignment: Alignment.center,
                          child: Text(
                            "el_user",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.w700),
                          ),
                        ),
                      ),
                      Container(
                        child: Icon(Icons.more_horiz),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Container(
                        padding: EdgeInsets.all(8),
                        child: CircleAvatar(
                          radius: 53,
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.all(8),
                          child: Column(
                            children: <Widget>[
                              Container(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  mainAxisSize: MainAxisSize.max,
                                  children: <Widget>[
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "300",
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text("posts")
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "22K",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text("followers")
                                        ],
                                      ),
                                    ),
                                    Container(
                                      padding: EdgeInsets.all(8),
                                      child: Column(
                                        children: <Widget>[
                                          Text(
                                            "999",
                                            style: TextStyle(
                                              fontSize: 22,
                                              fontWeight: FontWeight.bold,
                                            ),
                                          ),
                                          Text("following")
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                child: Row(
                                  children: <Widget>[
                                    Expanded(
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          backgroundColor:
                                              Colors.blue, // text color
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                5), // border radius
                                          ),
                                        ),
                                        child: Text(
                                          "Follow",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        onPressed: () => print("follow"),
                                      ),
                                    ),
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(horizontal: 1),
                                      width: 45,
                                      child: TextButton(
                                        style: TextButton.styleFrom(
                                          shape: RoundedRectangleBorder(
                                            borderRadius: BorderRadius.circular(
                                                5), // border radius
                                          ),
                                          backgroundColor:
                                              Colors.blue, // text color
                                        ),
                                        child: Icon(
                                          Icons.arrow_drop_down,
                                          color: Colors.white,
                                        ),
                                        onPressed: () => print("down"),
                                      ),
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 8),
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "el_user",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 18),
                      ),
                      Text(
                        "you will be my girl..",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                      Text("and i will wait you",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.w500)),
                    ],
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: _list
                          .map((e) => Container(
                                padding: EdgeInsets.symmetric(horizontal: 16),
                                child: Column(
                                  children: <Widget>[
                                    CircleAvatar(
                                      radius: 40,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.1),
                                      child: Text(e),
                                    ),
                                  ],
                                ),
                              ))
                          .toList(),
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(Icons.grid_on_rounded, size: 35),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.movie_filter_outlined, size: 35),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.person_pin_sharp, size: 35),
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Container(
                    child: GridView.count(
                      crossAxisCount: 3,
                      crossAxisSpacing: 2,
                      mainAxisSpacing: 2,
                      children: List.generate(
                          12,
                          (index) => Container(
                                color: Colors.grey,
                              )),
                    ),
                  ),
                ),
                Container(
                  height: 60,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.home_filled,
                          size: 35,
                        ),
                        onPressed: () => print("home"),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.search_outlined,
                          size: 35,
                        ),
                        onPressed: () => print("search"),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.movie_outlined,
                          size: 35,
                        ),
                        onPressed: () => print("add box"),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.shopping_bag_outlined,
                          size: 35,
                        ),
                        onPressed: () => print("account"),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.supervised_user_circle_outlined,
                          size: 35,
                        ),
                        onPressed: () => print("people"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
