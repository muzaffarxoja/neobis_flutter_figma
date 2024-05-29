import 'package:group_button/group_button.dart';
import 'package:flutter/material.dart';

class MyGroupButton extends StatelessWidget {
  const MyGroupButton({super.key});

  @override
  Widget build(BuildContext context) {
    return GroupButton(
      options: GroupButtonOptions(
          textPadding: EdgeInsets.symmetric(horizontal: 5),
          selectedTextStyle: TextStyle(fontSize: 15, color: Color(0xfff0e9ed)),
          unselectedTextStyle: TextStyle(
            fontSize: 15,
          ),
          borderRadius: BorderRadius.circular(8),
          mainGroupAlignment: MainGroupAlignment.spaceEvenly,
          crossGroupAlignment: CrossGroupAlignment.center,
          buttonHeight: 20),
      isRadio: true,
      buttons: ["моя точка", "Приход 12г", "Контейнер 454"],
    );
  }
}
