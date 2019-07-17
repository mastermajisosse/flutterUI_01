import 'package:flutter/material.dart';
import 'package:tes8/costumicon.dart';

class ProductCart extends StatelessWidget {
  int cardColor;
  String imagUrl;
  String title;
  String previousPrice;
  String price;

  ProductCart(
    this.cardColor,
    this.imagUrl,
    this.title,
    this.previousPrice,
    this.price,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320.0,
      decoration: BoxDecoration(
          color: Color(cardColor), //
          borderRadius: BorderRadius.circular(20.0),
          border: Border.all(color: Colors.grey.withOpacity(.3), width: .2)),
      child: Column(
        children: <Widget>[
          SizedBox(height: 8.0),
          Image.asset(
            imagUrl,
            width: 281.0,
            height: 191.0,
          ),
          Text(title, style: TextStyle(fontSize: 20.0)), //
          SizedBox(height: 15.0),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(CostumIcon.favorite),
                  onPressed: () {},
                ),
                Column(
                  children: <Widget>[
                    Text(
                      previousPrice, //
                      style: TextStyle(
                        color: Color(0xFFfab0ba),
                        fontSize: 14.0,
                      ),
                    ),
                    SizedBox(height: 12.0),
                    Text(
                      price, //
                      style: TextStyle(
                        fontSize: 24.0,
                      ),
                    ),
                  ],
                ),
                IconButton(
                  icon: Icon(CostumIcon.cart),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
