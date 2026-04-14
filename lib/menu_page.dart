import 'package:flutter/material.dart';
import 'package:pizza_menu/menu_item.dart';
import 'package:pizza_menu/pizza_data.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pizza Menu")),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Column(children: listMenuItems()),
            ),
          ),
          if(isOpen())
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  padding: EdgeInsets.all(20),
                  backgroundColor: Colors.yellow,
                ),
                onPressed: () {}, child: Text('Order Now')),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> listMenuItems() {
    List<MenuItem> items = [];
    for (Pizza pizza in pizzaData) {
      items.add(MenuItem(pizza));
    }
    return items;
  }

  bool isOpen() {
    var horaInicio = 19;
    var horaFim = 23;
    var horaAtual = DateTime.now().hour;

    return horaAtual >= horaInicio && horaAtual < horaFim;
  }
}
