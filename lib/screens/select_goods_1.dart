import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:group_button/group_button.dart';
import 'package:nobis/widgets/my_card.dart';
//import 'dart:ffi';

class SelectGoods1 extends StatelessWidget {
  const SelectGoods1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Text(
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
              'Выбрат товары',
            ),
            SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      enabledBorder: const OutlineInputBorder(
                          borderSide: BorderSide(width: 1)),
                      hintText: 'Поиск',
                      //labelText: "Email",
                      prefixIcon: Icon(Icons.find_in_page_rounded),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.data_array_outlined),
                        onPressed: () {},
                      ),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.done,
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.toggle_off_outlined),
                ),
              ],
            ),
            SizedBox(height: 20),
            GroupButton(
              options: GroupButtonOptions(
                selectedTextStyle: TextStyle(
                  fontSize: 10,
                  color: Color(0xfff0e9ed),
                ),
                unselectedTextStyle: TextStyle(
                  fontSize: 10,
                ),
                borderRadius: BorderRadius.circular(15),
                mainGroupAlignment: MainGroupAlignment.start,
                crossGroupAlignment: CrossGroupAlignment.start,
                groupRunAlignment: GroupRunAlignment.start,
              ),
              isRadio: true,
              buttons: ["моя точка", "Приход 12г", "Контейнер 454"],
            ),
            MyCard(
              cardImage: 'assets/images/image1.png',
              id: 123456,
              description: 'futbolka',
              buy: 500,
              sell: 1200,
              onStock: 54,
              maxStock: 120,
            ),
            MyCard(
              cardImage: 'assets/images/image1.png',
              id: 6664,
              description: 'bryuki',
              buy: 600,
              sell: 1300,
              onStock: 35,
              maxStock: 120,
            )
          ],
        ),
      ),
    );
  }
}
