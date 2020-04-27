import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyPage(),
    );
  }
}

class MyPage extends StatefulWidget {
  @override
  _MyPageState createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Restaurant"),
      ),
      body: Padding(
        padding: EdgeInsets.all(5),
        child: ListView(
          scrollDirection: Axis.vertical,
          children: <Widget>[
            FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    itemcake(),
                    Container(
                      width: 90,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/cake.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    juiceitem(),
                    Container(
                      width: 90,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/juice.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    pizzaitem(),
                    Container(
                      width: 90,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/pizza.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FittedBox(
              child: Card(
                // color: Colors.red,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15.0),
                ),
                elevation: 5,
                child: Row(
                  children: <Widget>[
                    eliteitem(),
                    Container(
                      width: 90,
                      height: 100,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(15.0),
                        child: Image(
                          fit: BoxFit.cover,
                          alignment: Alignment.topRight,
                          image: AssetImage('assets/elite.jpg'),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget itemcake() {
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Italian Choco Cake",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Dark belgium chocolate",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 9.5,
                color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.shopping_cart,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Cold",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Fresh",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 7,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget juiceitem() {
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Fresh Mango Juice",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Dark belgium chocolate",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 9.5,
                color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.shopping_cart,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.lightBlue[100],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Cold",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.red[100],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Fresh",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "New",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 7,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget pizzaitem() {
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Cheese Pizza Italy ",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Double cheese New York Style",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 9.5,
                color: Colors.grey),
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.shopping_cart,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Spicy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "New",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 7,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget eliteitem() {
    return Container(
      //width: 150,
      child: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              "Alinea Chicago",
              style: TextStyle(
                  fontWeight: FontWeight.bold, fontSize: 15, color: Colors.red),
            ),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            "Classical French cooking",
            style: TextStyle(
                fontWeight: FontWeight.normal,
                fontSize: 9.5,
                color: Colors.grey),
          ),  
          SizedBox(
            height: 5,
          ),
          Row(
            children: <Widget>[
              Icon(
                Icons.shopping_cart,
                size: 15,
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.deepOrange[300],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Spicy",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.red,
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "Hot",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5,color: Colors.white),
                ),
              ),
              SizedBox(
                width: 5,
              ),
              Container(
                width: 35,
                decoration: BoxDecoration(
                  color: Colors.yellow[400],
                  //color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                alignment: Alignment.center,
                child: Text(
                  "New",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 9.5,),
                ),
              ),
            ],
          ),
          SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Text(
                "Ratings",
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 7,
                    color: Colors.grey),
              ),
              SizedBox(
                width: 10,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
              Icon(
                Icons.star,
                size: 10,
                color: Colors.orangeAccent,
              ),
            ],
          ),
        ],
      ),
    );
  }
}
