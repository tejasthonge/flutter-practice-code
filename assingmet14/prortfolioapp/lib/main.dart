import 'package:flutter/material.dart';
import 'package:prortfolioapp/portfolio.dart';

void main() => const PortfolioApp();

class PortfolioApp extends StatelessWidget {
  const PortfolioApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(

      home:Portfolio(),
    );
  }
}
