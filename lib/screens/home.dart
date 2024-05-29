import 'package:flutter/material.dart';
import 'package:nobis/widgets/home_widgets/top_button.dart';
import 'package:nobis/widgets/home_widgets/group_button.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TopButton(),
          MyGroupButton(),
        ],
      ),
    );
  }
}
