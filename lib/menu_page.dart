import 'package:flutter/material.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Pizza Menu")),
      body: Column(
        children: [
          Card(
            child: Row(
              children: [
                Image.asset("images/salamino.jpg", width: 100, height: 100, fit: BoxFit.cover,),
                Expanded(child: Column(
                  children: [
                    Text("Pizza Salamino", style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 10,
                    ),),
                    Text("Tomato, mozarella"),
                    Text("\$12"),
                  ],
                ),),
              ],
            ),
          )
        ],
      ),
      );
  }
}