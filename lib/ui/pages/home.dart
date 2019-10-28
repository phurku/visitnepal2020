import 'package:carousel_pro/carousel_pro.dart';
import 'package:flutter/material.dart';
import 'package:visitnepal2020/ui/pages/drawer/bus.dart';
import 'package:visitnepal2020/ui/pages/drawer/flight.dart';
import 'package:visitnepal2020/ui/pages/drawer/guide.dart';
import 'package:visitnepal2020/ui/pages/drawer/hotel.dart';
import 'package:visitnepal2020/ui/pages/drawer/places.dart';
import 'package:visitnepal2020/ui/pages/drawer/pubs.dart';
import 'package:visitnepal2020/ui/pages/drawer/reataurent.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: true,
          primary: true,
          elevation: 0,
          centerTitle: true,
          title: Text("Tourism 2020"),
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: DataSearch());
                })
          ],
        ),
        drawer: Drawer(
            child: ListView(
          children: <Widget>[
            FlatButton(
              onPressed: () {
                var route2 = MaterialPageRoute(builder: (_) => HotelPage());
                Navigator.push(context, route2);
              },
              child: ListTile(
                leading: Icon(Icons.local_hotel),
                title: Text(
                  "Hotel",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Divider(),
            FlatButton(
              onPressed: () {
                var route2 = MaterialPageRoute(builder: (_) => BusPage());
                Navigator.push(context, route2);
              },
              child: ListTile(
                leading: Icon(Icons.train),
                title: Text(
                  "Bus",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //Divider(),
            FlatButton(
              onPressed: () {
                var route2 =
                    MaterialPageRoute(builder: (_) => RestaurentPage());
                Navigator.push(context, route2);
              },
              child: ListTile(
                leading: Icon(Icons.restaurant),
                title: Text(
                  "Restaurent",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            // Divider(),
            FlatButton(
              onPressed: () {
                var route2 = MaterialPageRoute(builder: (_) => PlacesPage());
                Navigator.push(context, route2);
              },
              child: ListTile(
                leading: Icon(Icons.place),
                title: Text(
                  "Places",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {},
              child: ListTile(
                leading: Icon(Icons.settings),
                title: Text(
                  "Setting",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                var route2 = MaterialPageRoute(builder: (_) => PubsPage());
                Navigator.push(context, route2);
              },
              child: ListTile(
                leading: Icon(Icons.local_drink),
                title: Text(
                  "pubs",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            //   Divider(),
            FlatButton(
              onPressed: () {
                var route2 = MaterialPageRoute(builder: (_) => FlightPage());
                Navigator.push(context, route2);
              },
              child: ListTile(
                leading: Icon(Icons.flight),
                title: Text(
                  "Flights",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
            FlatButton(
              onPressed: () {
                var route2 = MaterialPageRoute(builder: (_) => GuidePage());
                Navigator.push(context, route2);
              },
              child: ListTile(
                leading: Icon(Icons.person),
                title: Text(
                  "Guide",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
            ),
          ],
        )),
        body: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(1.0),
              height: 250,
              child: Carousel(
                overlayShadow: false,
                boxFit: BoxFit.cover,
                images: [
                  AssetImage('images/ca1.jpeg'),
                  AssetImage('images/ca2.jpeg'),
                  AssetImage('images/ca3.jpeg'),
                  AssetImage('images/ca4.jpeg'),
                  AssetImage('images/ca5.jpeg'),
                  AssetImage('images/ca6.jpeg'),
                  AssetImage('images/ca7.jpeg'),
                ],
                animationCurve: Curves.fastLinearToSlowEaseIn,
                animationDuration: Duration(milliseconds: 1200),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Column(
              children: <Widget>[
                Center(
                  child: Text(
                    "Unexplored places in Nepal",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    RaisedButton(
                      elevation: 4,
                      padding: EdgeInsets.all(15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pagei1Detail()));
                      },
                      child: ListTile(
                        trailing: Image(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.fill,
                          height: 200,
                          width: 100,
                          image: AssetImage(
                            "images/i1.jpeg",
                          ),
                        ),
                        title: Text("mountain"),
                        subtitle: Text("data"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      elevation: 4,
                      padding: EdgeInsets.all(15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pagei2Detail()));
                      },
                      child: ListTile(
                        trailing: Image(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          height: 200,
                          width: 100,
                          image: AssetImage(
                            "images/i2.jpeg",
                          ),
                        ),
                        title: Text("mountain"),
                        subtitle: Text("data"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      elevation: 4,
                      padding: EdgeInsets.all(15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pagei3Detail()));
                      },
                      child: ListTile(
                        trailing: Image(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          height: 200,
                          width: 100,
                          image: AssetImage(
                            "images/i3.jpeg",
                          ),
                        ),
                        title: Text("mountain"),
                        subtitle: Text("data"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      elevation: 4,
                      padding: EdgeInsets.all(15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pagei4Detail()));
                      },
                      child: ListTile(
                        trailing: Image(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          height: 200,
                          width: 100,
                          image: AssetImage(
                            "images/i4.jpeg",
                          ),
                        ),
                        title: Text("mountain"),
                        subtitle: Text("data"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      elevation: 4,
                      padding: EdgeInsets.all(15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pageca2Detail()));
                      },
                      child: ListTile(
                        trailing: Image(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          height: 200,
                          width: 100,
                          image: AssetImage(
                            "images/ca2.jpeg",
                          ),
                        ),
                        title: Text("mountain"),
                        subtitle: Text("data"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      elevation: 4,
                      padding: EdgeInsets.all(15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pagei5Detail()));
                      },
                      child: ListTile(
                        trailing: Image(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          height: 200,
                          width: 100,
                          image: AssetImage(
                            "images/i5.jpeg",
                          ),
                        ),
                        title: Text("mountain"),
                        subtitle: Text("data"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      elevation: 4,
                      padding: EdgeInsets.all(15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pagei6Detail()));
                      },
                      child: ListTile(
                        trailing: Image(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          height: 200,
                          width: 100,
                          image: AssetImage(
                            "images/i6.jpeg",
                          ),
                        ),
                        title: Text("mountain"),
                        subtitle: Text("data"),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    RaisedButton(
                      elevation: 4,
                      padding: EdgeInsets.all(15),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Pageca4Detail()));
                      },
                      child: ListTile(
                        trailing: Image(
                          filterQuality: FilterQuality.high,
                          fit: BoxFit.cover,
                          height: 200,
                          width: 100,
                          image: AssetImage(
                            "images/ca4.jpeg",
                          ),
                        ),
                        title: Text("mountain"),
                        subtitle: Text("data"),
                      ),
                    )
                  ],
                ))
              ],
            )
          ],
        ));
  }

  Widget Pagei1Detail() {
    return Container(
      color: Colors.white,
      child: ListView(children: <Widget>[
        Center(
            child: Text(
          "Namche Bazar",
          style: TextStyle(color: Colors.black, fontSize: 22),
        )),
        Image(
          height: 200,
          image: AssetImage("images/i1.jpeg"),
        ),
        SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Text("Introduction ",
                style: TextStyle(color: Colors.black, fontSize: 18))
          ],
        ),
        SizedBox(
          height: 10.0,
        ),
        Container(
            padding: EdgeInsets.all(5.0),
            child: Text(
              "Beautiful town in the lap of Mt. Everest.\n Beautiful town in the lap of Mt. Everest.\n Beautiful town in the lap of Mt. Everest.Beautiful town in the lap of Mt. Everest.Beautiful town in the lap of Mt. Everest.Beautiful town in the lap of Mt. Everest.Beautiful town in the lap of Mt. Everest.",
              style: TextStyle(color: Colors.black, fontSize: 15),
            ))
      ]),
    );
  }

  Widget Pagei2Detail() {
    return Container(
      color: Colors.white,
      child: ListView(children: <Widget>[
        Center(
            child: Text(
          "Namche Bazar",
          style: TextStyle(color: Colors.black, fontSize: 22),
        )),
        Image(
          height: 200,
          image: AssetImage("images/i2.jpeg"),
        )
      ]),
    );
  }

  Pagei3Detail() {
    return Container(
      color: Colors.white,
      child: ListView(children: <Widget>[
        Center(
            child: Text(
          "Namche Bazar",
          style: TextStyle(color: Colors.black, fontSize: 22),
        )),
        Image(
          fit: BoxFit.cover,
          height: 200,
          image: AssetImage("images/i3.jpeg"),
        )
      ]),
    );
  }

  Widget Pagei4Detail() {
    return Container(
      color: Colors.white,
      child: ListView(children: <Widget>[
        Center(
            child: Text(
          "Namche Bazar",
          style: TextStyle(color: Colors.black, fontSize: 22),
        )),
        Image(
          fit: BoxFit.cover,
          height: 200,
          image: AssetImage("images/i4.jpeg"),
        )
      ]),
    );
  }

  Widget Pageca2Detail() {
    return Container(
      color: Colors.white,
      child: ListView(children: <Widget>[
        Center(
            child: Text(
          "Namche Bazar",
          style: TextStyle(color: Colors.black, fontSize: 22),
        )),
        Image(
          fit: BoxFit.cover,
          height: 200,
          image: AssetImage("images/ca2.jpeg"),
        )
      ]),
    );
  }

  Widget Pagei5Detail() {
    return Container(
      color: Colors.white,
      child: ListView(children: <Widget>[
        Center(
            child: Text(
          "Namche Bazar",
          style: TextStyle(color: Colors.black, fontSize: 22),
        )),
        Image(
          fit: BoxFit.cover,
          height: 200,
          image: AssetImage("images/i5.jpeg"),
        )
      ]),
    );
  }

  Widget Pagei6Detail() {
    return Container(
      color: Colors.white,
      child: ListView(children: <Widget>[
        Center(
            child: Text(
          "Namche Bazar",
          style: TextStyle(color: Colors.black, fontSize: 22),
        )),
        Image(
          fit: BoxFit.cover,
          height: 200,
          image: AssetImage("images/i6.jpeg"),
        )
      ]),
    );
  }

  Widget Pageca4Detail() {
    return Container(
      color: Colors.white,
      child: ListView(children: <Widget>[
        Center(
            child: Text(
          "Namche Bazar",
          style: TextStyle(color: Colors.black, fontSize: 22),
        )),
        Image(
          fit: BoxFit.cover,
          height: 200,
          image: AssetImage("images/ca4.jpeg"),
        )
      ]),
    );
  }
}

class DataSearch extends SearchDelegate<String> {
  final categories = [
    "Latest news",
    "Unexplored places in far-weastern nepal",
    "Places in mid_weastern",
    "Places in weastern",
    "Places in central Nepal",
    "Places in Eastern Nepal",
  ];
  final recentcategories = [
    "Places in weastern",
    "Places in central Nepal",
    "Places in Eastern Nepal",
  ];

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = "";
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: AnimatedIcon(
        icon: AnimatedIcons.ellipsis_search,
        progress: transitionAnimation,
      ),
      onPressed: () {
        // close(context, null);
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(child: Text("data")),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final suggestionList = query.isEmpty
        ? recentcategories
        : categories.where((p) => p.startsWith((query))).toList();
    return ListView.builder(
      itemBuilder: (context, index) => ListTile(
        onTap: () {
          showResults(context);
        },
        title: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.symmetric(vertical: 10, horizontal: 55),
          //  width: 15,
          height: 36,
          padding: EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Theme.of(context).backgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(0),
                topRight: Radius.circular(20),
                bottomRight: Radius.circular(0),
                bottomLeft: Radius.circular(20),
              )),
          child: RichText(
            text: TextSpan(
                text: suggestionList[index].substring(0, query.length),
                style:
                    TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
                children: [
                  TextSpan(
                      text: suggestionList[index].substring(query.length),
                      style: TextStyle(color: Colors.grey))
                ]),
          ),
        ),
      ),
      itemCount: suggestionList.length,
    );
  }
}
