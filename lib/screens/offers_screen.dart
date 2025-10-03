import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  final void Function(String) onAdd;
  const OffersScreen({super.key, required this.onAdd});

  static const offers = [
    "Скидка 20% на пиццу",
    "2 кофе + 1 кофе бесплатно",
    "Бургер + картошка -15%",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: offers.map((offer) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: Colors.redAccent.withOpacity(0.1),
              border: Border.all(color: Colors.redAccent),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(offer, style: const TextStyle(fontSize: 16)),
                ElevatedButton(
                  onPressed: () => onAdd(offer),
                  child: const Text("Добавить в заказ"),
                ),
              ],
            ),
          ),
        );
      }).toList(),
    );
  }
}
