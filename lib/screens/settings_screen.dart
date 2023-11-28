import 'package:flutter/material.dart';
import 'package:meals_app/components/main_drawer.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Configurações'),
      ),
      drawer: MainDrawer(),
      body: const Center(
        child: Text('Configurações!'),
      ),
    );
  }
}
