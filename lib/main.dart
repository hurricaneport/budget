import 'package:budget/screens/accounts_view.dart';
import 'package:flutter/material.dart';
import 'package:budget/src/rust/api/simple.dart';
import 'package:budget/src/rust/frb_generated.dart';

Future<void> main() async {
  await RustLib.init();
  runApp(const Budget());
}

class Budget extends StatefulWidget {
  const Budget({super.key});

  @override
  State<Budget> createState() => _BudgetState();

}

class _BudgetState extends State<Budget> {
  int currentPageIndex = 0;
  NavigationDestinationLabelBehavior labelBehavior = NavigationDestinationLabelBehavior.alwaysShow;

@override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        bottomNavigationBar: NavigationBar(
          labelBehavior: labelBehavior,
          selectedIndex: currentPageIndex,
          onDestinationSelected: (int index) {
            setState(() {
              currentPageIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(icon: Icon(Icons.monetization_on), label: "Budgets"),
            NavigationDestination(icon: Icon(Icons.account_balance), label: "Accounts"),
            NavigationDestination(icon: Icon(Icons.add), label: "New Transaction"),
            NavigationDestination(icon: Icon(Icons.bar_chart), label: "Reports"),
            NavigationDestination(icon: Icon(Icons.menu), label: "More Tools"),
          ]
        ),
        appBar: AppBar(
          title: <Widget> [
            Text('Budgets'),
            Text('Accounts'),
            Text('Add Stuff'),
            Text('Insights'),
            Text('More'),
          ][currentPageIndex],

        ),
        body: <Widget>[AccountsView()][0],
      ),
    );
  }

}