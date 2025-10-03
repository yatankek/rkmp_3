import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  final void Function(String) onAdd;
  const MenuScreen({super.key, required this.onAdd});

  static const dishes = [
    "Пицца Маргарита",
    "Бургер классический",
    "Суши сет",
    "Салат Цезарь",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: dishes.map((dish) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.redAccent),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(dish, style: const TextStyle(fontSize: 16)),
                ElevatedButton(
                  onPressed: () => onAdd(dish),
                  child: const Text("Добавить"),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
