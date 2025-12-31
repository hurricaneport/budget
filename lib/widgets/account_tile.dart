import 'package:flutter/material.dart';

class AccountTile extends StatelessWidget {
  const AccountTile({
    super.key,
    required this.name,
    required this.accountNumber,
    required this.balance,
    required this.accountColor,
  });

  final String name;
  final String accountNumber;
  final double balance;
  final Color accountColor;



  @override
  Widget build(BuildContext context) {
    final Color balanceColor = balance > 0 ? Colors.green : Colors.red;
    return Padding(
      padding: EdgeInsets.fromLTRB(10, 20, 0, 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                  ),
                ),
                Text(
                  accountNumber,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 12,
                  ),
                )
              ],
            ),
          ),
          Text(
              "\$${balance.toStringAsFixed(2)}",
            style: TextStyle(
              color: balanceColor,
              fontSize: 18,
            ),
          )
        ],
      ),
    );
  }
}

