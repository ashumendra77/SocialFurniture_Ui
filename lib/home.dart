import 'package:flutter/material.dart';
import 'package:furnitureapp_ui/detailPage.dart';
import 'package:furnitureapp_ui/model.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Widget getItem(Furniture furnitureItem) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => DetailPage(
                      furnitureobj: furnitureItem,
                    )));
      },
      child: Row(
        children: <Widget>[
          Container(
            width: 200,
            decoration: BoxDecoration(
              color: Colors.purple[100],
              borderRadius: BorderRadius.circular(10),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 40,
                  child: Hero(
                    tag: furnitureItem.imageUrl,
                    transitionOnUserGestures: true,
                    child: Image(
                      alignment: Alignment.center,
                      image: AssetImage(furnitureItem.imageUrl),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
                Positioned(
                  bottom: 20,
                  left: 30,
                  right: 22,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        furnitureItem.name,
                        maxLines: 2,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text("\$${furnitureItem.price}")
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            width: 15,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
          height: 60,
          margin: EdgeInsets.only(bottom: 10, right: 10, left: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.search,
                      ),
                      Text(
                        "EXPLORE",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  )),
              Container(
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.grey[300],
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.shopping_basket,
                      ),
                      Text(
                        "SHOPPING",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  )),
              Container(
                  height: MediaQuery.of(context).size.height,
                  width: 120,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(10)),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.file_upload,
                        color: Colors.white,
                      ),
                      Text(
                        "UPLOAD",
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      )
                    ],
                  ))
            ],
          )),
      body: SafeArea(
          child: ListView(
        physics: ScrollPhysics(),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0,top:5),
            child: Column(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15.0),
                  child: Row(
                    children: <Widget>[
                      CircleAvatar(
                        radius: 30,
                        backgroundImage: AssetImage("images/pic5.jpeg"),
                      ),
                      SizedBox(width: 30),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("MArk Stillinski"),
                          Text("@markinski")
                        ],
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("144"),
                        Text("FOLLOWERS"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("144"),
                        Text("FOLLOWERS"),
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("144"),
                        Text("FOLLOWERS"),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Container(
                  padding: EdgeInsets.only(left: 15),
                  height: 310,
                  child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: furniture
                          .toList()
                          .asMap()
                          .entries
                          .map((MapEntry map) {
                        return getItem(map.value);
                      }).toList()),
                ),
                SizedBox(height: 10),
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("COMMENTS"),
                      Text(
                        "see all...",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 18.0, right: 20, top: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      CircleAvatar(
                          radius: 15,
                          backgroundImage: AssetImage("images/pic5.jpeg")),
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          '" Who set out to create a line of simple, but beautiful, well-crafted, everyday furniture meant to fast. "',
                          maxLines: 3,
                          overflow: TextOverflow.visible,
                          style: TextStyle(fontSize: 13, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
