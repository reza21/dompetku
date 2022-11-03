import 'package:dompetku_app/widget/akun_screen.dart';
import 'package:dompetku_app/model/transaction.dart';
import 'package:dompetku_app/util/app_theme.dart';
import 'package:dompetku_app/widget/home_screen.dart';
import 'package:dompetku_app/widget/menu_box.dart';
import 'package:dompetku_app/widget/transaction_detail.dart';
import 'package:dompetku_app/widget/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedPage = 0;

  final _pageOptions = [
    HomeScreen(),
    DetailTransactionScreen(),
    AkunScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pageOptions[selectedPage],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.feed,
              ),
              label: 'Transaksi'),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.account_circle,
              ),
              label: 'Akun'),
        ],
        selectedItemColor: const Color(0xFF3D538F),
        unselectedItemColor: const Color(0xFF3D538F),
        onTap: (index) {
          setState(() {
            selectedPage = index;
          });
        },
      ),
    );
  }
}
