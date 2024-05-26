import 'package:flutter/material.dart';

class SelectGoods1 extends StatelessWidget {
  const SelectGoods1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Container(
        padding: EdgeInsets.all(20.0),
        child: Column(
          children: [
            Text(
              'Выбрат товары',
            ),
            Row(children: [
              Expanded(
                child: TextField(
                  decoration: InputDecoration(
                    enabledBorder: const OutlineInputBorder(
                        borderSide: BorderSide(width: 2.0)),
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
                icon: const Icon(Icons.settings_accessibility),
              ),
            ])
          ],
        ),
      ),
    );
  }
}
