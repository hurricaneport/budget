import 'dart:ffi';

import 'package:budget/widgets/account_tile.dart';
import 'package:flutter/material.dart';

class AccountsView extends StatelessWidget {
  AccountsView({
    super.key,
  });

  final List<String> accountNames = [
    "Test1",
    "Test2",
    "Test3",
    "Test4",
    "Test5",
  ];

  final List<String> accountNumbers = [
    "x8596",
    "x9306",
    "x6834",
    "x6888",
    "x2363",
  ];

  final List<double> balances = [
    1,
    2,
    3,
    10004.43,
    -18.23,
  ];

  Color color = Color(0xFFFFFFFF);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.builder(
        padding: const EdgeInsets.all(8),
        itemCount: accountNames.length,
        itemBuilder: (BuildContext context, int index) {
          return AccountTile(name: accountNames[index], accountNumber: accountNumbers[index], balance: balances[index], accountColor: color);
        }
    );
  }
}