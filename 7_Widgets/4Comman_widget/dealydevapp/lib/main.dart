import 'package:dealydevapp/screens/home.dart';
import 'package:flutter/material.dart';

void main() => runApp(const DevApp());

class DevApp extends StatefulWidget {
  const DevApp({super.key});

  @override
  State<DevApp> createState() => _DevAppState();
}

class _DevAppState extends State<DevApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      darkTheme: ThemeData.dark(useMaterial3: true),

      color: Colors.black12,
      home:const Home(),
      
    );
  }
}
