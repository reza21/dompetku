import 'package:dompetku_app/widget/bayar/bayar_screen.dart';
import 'package:dompetku_app/widget/kirim/kirim_screen.dart';
import 'package:dompetku_app/widget/minta/minta_screen.dart';
import 'package:dompetku_app/widget/topup/topup_screen.dart';
import 'package:dompetku_app/widget/transaction_detail.dart';
import 'package:dompetku_app/widget/transaction_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

import '../model/transaction.dart';
import 'menu_box.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue.shade800,
              Colors.white60,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Column(
          children: [
            Container(
              padding: const EdgeInsets.only(top: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: CircleAvatar(
                      radius: 22,
                      backgroundColor: Colors.blueGrey,
                      child: CircleAvatar(
                        radius: 20,
                        backgroundImage:
                            NetworkImage('https://i.pravatar.cc/150?img=11'),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          "Hallo,",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 5,
                        ),
                        Text(
                          "Saiful Bahri",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 15,
                          ),
                        ),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: Stack(
                      children: const [
                        Icon(
                          Icons.notifications_none_rounded,
                          color: Colors.white,
                          size: 30,
                        ),
                        Positioned(
                          top: 0.0,
                          right: 0.0,
                          child: Icon(
                            Icons.brightness_1,
                            size: 8.0,
                            color: Colors.redAccent,
                          ),
                        )
                      ],
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(top: 10),
              alignment: Alignment.center,
              child: Column(
                children: const [
                  Text(
                    "Saldo Dompetku",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: Text(
                      "Rp. 2,000,000,000",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  MenuWidget(
                    icon: Icons.account_balance_wallet,
                    text: "Topup",
                    tampilan: TopupScreen(),
                  ),
                  MenuWidget(
                    icon: Icons.send_rounded,
                    text: "Kirim",
                    tampilan: KirimScreen(),
                  ),
                  MenuWidget(
                    icon: Icons.download,
                    text: "Minta",
                    tampilan: MintaScreen(),
                  ),
                  MenuWidget(
                    icon: Icons.payment,
                    text: "Bayar",
                    tampilan: BayarScreen(),
                  ),
                ],
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(top: 20),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(45),
                  ),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                        vertical: 20,
                        horizontal: 35,
                      ),
                      child: Row(
                        children: [
                          const Expanded(
                            child: Text(
                              "Transaksi Terakhir",
                              style: TextStyle(
                                fontSize: 18,
                                color: Color(0xFF3D538F),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                isScrollControlled: true,
                                builder: (BuildContext ctx) {
                                  return const DetailTransactionScreen();
                                },
                              );
                            },
                            child: const Text(
                              'Lihat Semua',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                fontSize: 14,
                                color: Color(0xFF3D538F),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return TransactionItem(
                            transaction: transactions[index],
                          );
                        },
                        itemCount: transactions.length,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
  }
}