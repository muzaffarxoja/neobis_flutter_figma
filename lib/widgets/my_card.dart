//import 'dart:ffi';

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String cardImage;
  final int id;
  final String description;
  final double buy;
  final double sell;
  final int onStock;
  final int maxStock;

  MyCard(
      {required this.cardImage,
      required this.id,
      required this.description,
      required this.buy,
      required this.sell,
      required this.onStock,
      required this.maxStock,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4.0,
      child: Column(
        children: [
          ListTile(
              title: Text('№${id.toString()}'),
              trailing: Checkbox(value: false, onChanged: (e) {})),
          Row(
            children: [
              Container(
                height: 100,
                width: 150,
                // child: Image(
                //   image: AssetImage(cardImage!),
                //   fit: BoxFit.cover,
                // ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.topCenter,
                    child: Text(description!),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text(buy.toString() + '\$'),
                      Text(sell.toString() + '\$'),
                      Align(
                        child: Text(onStock.toString()),
                        alignment: Alignment.centerRight,
                      )
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
