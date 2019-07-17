import 'package:flutter/material.dart';
import 'package:tes8/costumicon.dart';
import 'package:tes8/productCart.dart';

void main() => runApp(MaterialApp(
      home: MyApp(),
      debugShowCheckedModeBanner: false,
    ));

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => new _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentIdex = 0;
  List<Widget> bottomNavIconList = [
    Image.asset("assets/store.png", width: 35.0, height: 35.0),
    Icon(CostumIcon.search, size: 32.0),
    Icon(CostumIcon.favorite, size: 32.0),
    Icon(CostumIcon.cart, size: 32.0),
    Image.asset("assets/profile.png", width: 35.0, height: 35.0),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50.0, vertical: 30.0),
          child: new Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(top: 30.0, bottom: 25.0),
                  child:
                      Image.asset("assets/logo.png", width: 62.0, height: 43.0),
                ),
              ),
              ProductCart(0xFFfaecfb, "assets/shoes_01.png",
                  "Hybrid rocket WWs", "990,0", "\$750,0"),
              SizedBox(height: 35.0),
              ProductCart(0xFFf8e1da, "assets/shoes_02.png",
                  "Hybrid runner ars", "699,0", "\$599,0"),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(color: Colors.white, boxShadow: [
          BoxShadow(
              color: Colors.black12.withOpacity(.06),
              offset: Offset(0.0, -3.0),
              blurRadius: 10.0)
        ]),
        child: Row(
          children: bottomNavIconList.map((item) {
            var index = bottomNavIconList.indexOf(item);
            return Expanded(
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    _currentIdex = index;
                  });
                },
                child: bottomNavItem(item, index == _currentIdex),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

bottomNavItem(Widget item, bool isSelected) => Container(
      decoration: BoxDecoration(
          boxShadow: isSelected
              ? [
                  BoxShadow(
                    color: Colors.black12.withOpacity(.02),
                    offset: Offset(0.0, 5.0),
                    blurRadius: 10.0,
                  )
                ]
              : []),
      child: item,
    );
