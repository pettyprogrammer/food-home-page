import 'dart:math';

import 'package:flutter/material.dart';
//import 'package:flutter/src/widgets/implicit_animations.dart';

void main() =>
    runApp(MaterialApp(
      title: 'MyApk',
      debugShowCheckedModeBanner: false,
      home: MyApk(),
    ));

class MyApk extends StatefulWidget {
  const MyApk({super.key});

  @override
  State<MyApk> createState() => _MyApk();
}

class _MyApk extends State<MyApk> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          _top(),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.all(16.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Category",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 22.0),
                ),
                Text(
                  "View All",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 12.0,
                      color: Colors.black),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            height: 200.0,
            child: GridView(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3, childAspectRatio: 3 / 2),
              children: [
                _gridItem(Icons.airport_shuttle),
                _gridItem(Icons.add_shopping_cart),
                _gridItem(Icons.arrow_drop_down_circle),
                _gridItem(Icons.bluetooth_searching),
                _gridItem(Icons.arrow_drop_down_circle),
                _gridItem(Icons.arrow_drop_down_circle),
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.all(16.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Latest", style: TextStyle(
                      fontSize: 22.0, fontWeight: FontWeight.bold),
                  )
                ],
              )
          ),
          _cardItem(1),
          _cardItem(2),
          _cardItem(3),
          _cardItem(4),
        ],
      ),
    );
  }

  _cardItem(image) {
    return Padding(
      padding: EdgeInsets.all(16.0), child: Row(
      children: <Widget>[
        Container(
          width: 100.0,
          height: 100.0,
          decoration: BoxDecoration(
              image: DecorationImage(image: AssetImage("Asset/back.jpg"),fit: BoxFit.cover,
             // image: DecorationImage(image: AssetImage("Asset/back.jpg"),fit: BoxFit.cover,
              ),
borderRadius: BorderRadius.circular(20.0)
          ),
        ),
        SizedBox(width: 20.0,),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:<Widget>[
Text("High Quality School Bag",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 22.0),),
            SizedBox(height: 10.0,),
            Text("15 items",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold),),
            SizedBox(height: 10.0,),
            Text("By Bigbay",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),
          ],
        )
      ],
    ),
    );
  }

  _gridItem(icon) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          child: Icon(
            icon,
            size: 16.0,
            color: Colors.white,
          ),
          backgroundColor: Colors.deepOrange.withOpacity(0.9),
        ),
        SizedBox(
          height: 10.0,
        ),
        Text(
          "Birthday",
          style: TextStyle(fontSize: 15.0),
        )
      ],
    );
  }

  _top() {
    return Container(
      padding: EdgeInsets.all(16.0),
      decoration: BoxDecoration(
          color: Colors.deepOrange,
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(30.0),
            bottomRight: Radius.circular(30.0),
          )),
      child: Column(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                children: <Widget>[
                  CircleAvatar(
                    child: Image.network(
                        "https://i.pinimg.com/originals/ff/a0/9a/ffa09aec412db3f54deadf1b3781de2a.png"),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Hi, Petty",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
              IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.notifications,
                    color: Colors.white,
                  )),
            ],
          ),
          SizedBox(
            height: 30.0,
          ),
          TextFormField(
            decoration: InputDecoration(
                hintText: "Search",
                fillColor: Colors.white,
                filled: true,
                suffixIcon: Icon(Icons.filter_list),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20.0),
                  borderSide: BorderSide(color: Colors.transparent),
                ),
                contentPadding:
                EdgeInsets.symmetric(horizontal: 16.0, vertical: 16.0)),
          )
        ],
      ),
    );
  }
}
