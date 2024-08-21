import 'package:flutter/material.dart';
import 'package:vocal_keeper/di/injection.dart';
import 'package:vocal_keeper/presentation/vocal_keeper_home_page.dart';

void main() {
  configureDependencies();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: VocalKeeperHomePage(),
      ),
    );
  }
}
