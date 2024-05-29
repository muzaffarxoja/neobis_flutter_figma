import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

class TopButton extends StatelessWidget {
  const TopButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(0, 5, 5, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: const Text(
                  "Торговая точка",
                ),
              ),
              Row(
                children: [
                  Text('проход 456а',
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.arrow_forward_ios),
                    iconSize: 10,
                    color: Colors.blue,
                  ),
                ],
              ),
            ],
          ),
          badges.Badge(
            onTap: () {},
            badgeStyle: badges.BadgeStyle(badgeColor: Colors.red),
            badgeContent: Text('2'),
            child: Icon(Icons.notification_add_outlined),
          ),
        ],
      ),
    );
  }
}
