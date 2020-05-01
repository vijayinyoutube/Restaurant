import 'package:flutter/material.dart';

int quantity = 1;
double total = 30.25;

class InfoPage extends StatefulWidget {
  @override
  _InforPageState createState() => _InforPageState();
}

class _InforPageState extends State<InfoPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
         
          children: <Widget>[
            Stack(
             
              children: <Widget>[
                ClipPath(
                  clipper: MyClipper(),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    height: 300,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment(0.8, 0.0),
                        colors: [
                          Colors.lightBlue[500],
                          Colors.lightBlueAccent[100],
                        ],
                        tileMode: TileMode.repeated,
                      ),
                    ),
                    child: Column(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(top: 30),
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Italian Choco Cake",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                    fontSize: 20),
                              ),
                              Icon(
                                Icons.menu,
                                color: Colors.white,
                              ),
                            ],
                          ),
                        ),
                        itemCake(),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 95, top: 200),
                 
                  child: Hero(
                    tag: "cakeitem",
                    child: ClipOval(
                      child: Container(
                        child: new Image.asset(
                          "assets/cake.jpg",
                          fit: BoxFit.cover,
                          width: 175,
                          height: 175,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 25,
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        "Quantity",
                        style: TextStyle(
                            fontWeight: FontWeight.normal, fontSize: 25),
                      ),
                      Container(
                        decoration: new BoxDecoration(
                          color: Colors.blue[200],
                          borderRadius: new BorderRadius.circular(250),
                        ),
                        width: 100,
                        height: 35,
                        child: Padding(
                          padding: EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Container(
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(250),
                                ),
                                child: GestureDetector(
                                  onTap: remove,
                                  child: Icon(
                                    Icons.remove,
                                    color: Colors.red,
                                  ),
                                ),
                              ),
                              Text(
                                "$quantity",
                                style: TextStyle(
                                    //color: Colors.black,
                                    fontWeight: FontWeight.normal,
                                    fontSize: 18),
                              ),
                              Container(
                                decoration: new BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: new BorderRadius.circular(250),
                                ),
                                child: GestureDetector(
                                  onTap: add,
                                  child: Icon(
                                    Icons.add,
                                    color: Colors.green,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("Total amount"),
                  SizedBox(
                    height: 10,
                  ),
                  Text("\$$total"),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Container(
                        height: 40,
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)),
                          color: Colors.blue[400],
                          child: Text("Place Order",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 22)),
                          onPressed: () {},
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void add() {
    setState(() {
      quantity = quantity + 1;
      total = 30.25 * quantity;
    });
  }

  void remove() {
    setState(() {
      if (quantity > 1) {
        quantity = quantity - 1;
        total = 30.25 * quantity;
      }
    });
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 35);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 35);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}

Widget itemCake() {
  return Container(
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 15,
        ),
        Text(
          "Dark Belgium chocolate",
          style: TextStyle(
              fontWeight: FontWeight.normal, fontSize: 15, color: Colors.white),
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.lightBlue[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Cold",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
                SizedBox(
                  width: 5,
                ),
                Container(
                  width: 50,
                  decoration: BoxDecoration(
                    color: Colors.red[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "Fresh",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                  ),
                ),
              ],
            ),
            Column(
              children: <Widget>[
                Text(
                  "\$30.25",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.black54),
                ),
                Text(
                  "per Quantity",
                  style: TextStyle(
                      fontWeight: FontWeight.normal,
                      fontSize: 10,
                      color: Colors.black),
                )
              ],
            )
          ],
        ),
        SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            SizedBox(
              width: 5,
            ),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
            Icon(Icons.star, size: 15, color: Colors.orangeAccent),
          ],
        ),
      ],
    ),
  );
}
