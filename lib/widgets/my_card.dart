import 'dart:ffi';

import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final String? cardImage;
  final int? id;
  final String? description;
  final double? buy;
  final double? sell;
  final int? onStock;
  final int? maxStock;

  MyCard(
      {this.cardImage,
      this.id,
      this.description,
      this.buy,
      this.sell,
      this.onStock,
      this.maxStock,
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
                height: 200,
                width: 150,
                child: Image(
                  image: AssetImage(cardImage!),
                  fit: BoxFit.cover,
                ),
              ),
              Column(
                children: [
                  Container(
                    padding: EdgeInsets.all(5),
                    alignment: Alignment.centerLeft,
                    child: Text(description!),
                  ),
                  Row(
                    children: [
                      Text(buy.toString() + '\$'),
                      Text(sell.toString() + '\$'),
                      Align(
                        child: Text(onStock.toString()),
                        alignment: Alignment.centerLeft,
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
