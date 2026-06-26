import 'package:flutter/material.dart';

// Экран "Поиск"
class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхняя панель с заголовком
      appBar: AppBar(
        title: const Text('Поиск'),
      ),
      // По центру экрана — заглушка с названием раздела
      body: const Center(
        child: Text(
          'Здесь будет Поиск',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}