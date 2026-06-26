import 'package:flutter/material.dart';

// Экран "Главная"
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхняя панель с заголовком
      appBar: AppBar(
        title: const Text('Главная'),
      ),
      // По центру экрана — заглушка с названием раздела
      body: const Center(
        child: Text(
          'Здесь будет Главная',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}