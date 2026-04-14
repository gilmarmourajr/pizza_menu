import 'package:flutter/material.dart';
import 'package:pizza_menu/pizza_data.dart';

class MenuItem extends StatelessWidget {
  final Pizza pizza;
  const MenuItem(this.pizza);

  @override
  Widget build(BuildContext context) {
    return Card(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Row(
                children: [
                  Image.asset(
                    pizza.photoName,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          pizza.name,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        Text(
                          pizza.ingredients,
                          style: TextStyle(
                            color: Colors.black87, 
                            fontSize: 16
                          ),
                        ),
                        Text(
                          pizza.soldOut ? 'Sold out' : "\$${pizza.price}",
                          style: TextStyle(
                            color: Colors.black54,
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          );
  }
}