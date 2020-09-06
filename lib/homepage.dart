import 'package:flutter/material.dart';
import 'package:xarothi/itemdetails.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            SizedBox(
              height: 70,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Veggies",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Staples",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Bakery",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: Text(
                      "Households",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 30,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: GridView(
                padding: EdgeInsets.symmetric(horizontal: 10),
                gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 200,
                    childAspectRatio: 0.73,
                    crossAxisSpacing: 20,
                    mainAxisSpacing: 20),
                children: <Widget>[
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                  CardDesign(),
                ],
              ),
            ),
          ],
        ),
        Positioned(
          left: 50,
          bottom: 20,
          width: 300,
          height: 60,
          child: Card(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(20))),
            elevation: 4,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  IconButton(
                      icon: Icon(
                        Icons.home,
                        color: Color.fromRGBO(255, 0, 0, 1),
                        size: 40,
                      ),
                      onPressed: null),
                  IconButton(
                      icon: Icon(
                        Icons.search,
                        color: Color.fromRGBO(255, 0, 0, 1),
                        size: 40,
                      ),
                      onPressed: null),
                  IconButton(
                      icon: Icon(
                        Icons.shopping_basket,
                        color: Color.fromRGBO(255, 0, 0, 1),
                        size: 40,
                      ),
                      onPressed: null)
                ],
              ),
            ),
          ),
        )
      ]),
    );
  }
}

class CardDesign extends StatelessWidget {
  void itemDetails(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      DetailsScreen.routname,
    );
  }

  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => itemDetails(context),
      child: Card(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20))),
        elevation: 3,
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20))),
          child: Stack(
            children: <Widget>[
              Positioned(
                child: Container(
                  height: 155,
                  decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                ),
              ),
              Positioned(
                  left: 10,
                  bottom: 45,
                  child: Text(
                    "Brinjal",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  )),
              Positioned(
                  right: 0,
                  child: Container(
                    color: Color.fromRGBO(248, 246, 247, 1),
                  )),
              Positioned(
                  bottom: 30,
                  right: 0,
                  child: Padding(
                    padding: EdgeInsets.all(15),
                    child: Text(
                      "120/kg",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),
                    ),
                  )),
              Positioned(
                top: 2,
                child: Padding(
                  padding: const EdgeInsets.all(20),
                  child: SizedBox(
                      height: 100,
                      child: Image.asset(
                        'assets/images/brinjal.png',
                      )),
                ),
              ),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: SizedBox(
                      width: 80,
                      height: 25,
                      child: FloatingActionButton.extended(
                        backgroundColor: Colors.red,
                        label: Text("ADD"),
                      ),
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
