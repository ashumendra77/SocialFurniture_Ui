import 'package:flutter/material.dart';
import 'package:furnitureapp_ui/model.dart';

class DetailPage extends StatefulWidget {
  final Furniture furnitureobj;

  const DetailPage({Key key, this.furnitureobj}) : super(key: key);
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: true,
      bottomNavigationBar: Container(
          height: 55,
          margin: EdgeInsets.only(left: 20, right: 20, bottom: 5),
          alignment: Alignment.center,
          decoration: BoxDecoration(
              color: Colors.white, borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: TextField(
                    maxLines: 3,
                    autofocus: false,
                    showCursor: false,
                    decoration: InputDecoration(
                      hintText: "hello",
                      border: InputBorder.none,
                      labelStyle: TextStyle(
                        color: Colors.black,
                      ),
                      contentPadding: EdgeInsets.symmetric(horizontal: 20),
                      focusedBorder: InputBorder.none,
                    ),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.send),
                  onPressed: () => debugPrint("send"),
                )
              ],
            ),
          )),
      backgroundColor: Colors.black,
      body: SafeArea(
          child: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 340,
                decoration: BoxDecoration(
                  color: Colors.purple[100],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30)),
                ),
                child: Stack(
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.only(top:5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(Icons.keyboard_backspace),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          CircleAvatar(
                              radius: 20,
                              backgroundImage: AssetImage("images/pic5.jpeg")
                              ),
                          IconButton(
                              icon: Icon(Icons.more_horiz),
                              onPressed: () => debugPrint("p"))
                        ],
                      ),
                    ),
                    Positioned(
                      left: 50,
                      right: 50,
                      bottom: 8,
                      child: Hero(
                        tag: widget.furnitureobj.imageUrl,
                        transitionOnUserGestures: true,
                        child: Image(
                            height: 400,
                            alignment: Alignment.center,
                            image: AssetImage(widget.furnitureobj.imageUrl)),
                      ),
                    ),
                    Positioned(
                      bottom: 30,
                      left: 50,
                      right: 50,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            widget.furnitureobj.name,
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          Text("\$${widget.furnitureobj.price}"),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              RaisedButton(
                                onPressed: () => debugPrint("BUY"),
                                child: Text("BUY"),
                              ),
                              SizedBox(width: 8),
                              RaisedButton(
                                onPressed: () => debugPrint("SHARE"),
                                child: Text("SHARE"),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 25),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("images/pic5.jpeg")
                        ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        '" Who set out to create a line of simple, but beautiful, well-crafted, everyday furniture meant to fast. "',
                        maxLines: 3,
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("images/pic5.jpeg")
                        ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        '" Who set out to create a line of simple, but beautiful, well-crafted, everyday furniture meant to fast. "',
                        maxLines: 3,
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("images/pic5.jpeg")
                        ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        '" Who set out to create a line of simple, but beautiful, well-crafted, everyday furniture meant to fast. "',
                        maxLines: 3,
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 15),
              Padding(
                padding: EdgeInsets.only(left: 20.0, right: 20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    CircleAvatar(
                        radius: 15,
                        backgroundImage: AssetImage("images/pic5.jpeg")
                        ),
                    SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        '" Who set out to create a line of simple, but beautiful, well-crafted, everyday furniture meant to fast. "',
                        maxLines: 3,
                        overflow: TextOverflow.visible,
                        style: TextStyle(fontSize: 13, color: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      )),
    );
  }
}
