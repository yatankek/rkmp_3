import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'screens/menu_screen.dart';
import 'screens/orders_screen.dart';
import 'screens/offers_screen.dart';
import 'screens/profile_screen.dart';

void main() => runApp(const RestaurantApp());

class RestaurantApp extends StatefulWidget {
  const RestaurantApp({super.key});

  @override
  State<RestaurantApp> createState() => _RestaurantAppState();
}

class _RestaurantAppState extends State<RestaurantApp> {
  int _index = 0;
  final List<String> _orders = [];

  void _addOrder(String dish) {
    setState(() => _orders.add(dish));
  }

  @override
  Widget build(BuildContext context) {
    final screens = [
      const HomeScreen(),
      MenuScreen(onAdd: _addOrder),
      OrdersScreen(orders: _orders),
      OffersScreen(onAdd: _addOrder),
      const ProfileScreen(),
    ];

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: const Text("Ресторан 'Вкусняшка'")),
        body: screens[_index],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _index,
          onTap: (i) => setState(() => _index = i),
          type: BottomNavigationBarType.fixed,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Главная"),
            BottomNavigationBarItem(icon: Icon(Icons.restaurant_menu), label: "Меню"),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: "Заказы"),
            BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: "Акции"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "Профиль"),
          ],
        ),
      ),
    );
  }
}
