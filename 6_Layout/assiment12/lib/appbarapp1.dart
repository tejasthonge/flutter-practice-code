import 'package:flutter/material.dart';

class appbarapp1 extends StatelessWidget {
  const appbarapp1({super.key});
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text("This is appbar 1"),
        actions: const [
          Icon(
            
            Icons.notifications_active_outlined,

          ),
          Icon(
            Icons.subscriptions_outlined,
          )
        ],
      ),
    );
  }
}
