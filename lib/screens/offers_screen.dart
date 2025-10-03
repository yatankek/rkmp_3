import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  const OffersScreen({super.key});

  static const offers = [
    "Скидка 20% на пиццу",
    "3-й кофе бесплатно",
    "Бургер + картошка -15%",
  ];

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(12),
      children: offers
          .map((offer) => Padding(
        padding: const EdgeInsets.symmetric(vertical: 6),
        child: Container(
          padding: const EdgeInsets.all(10),
          color: Colors.redAccent.withOpacity(0.1),
          child: Text(offer),
        ),
      ))
          .toList(),
    );
  }
}
