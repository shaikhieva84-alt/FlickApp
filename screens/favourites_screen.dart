import 'package:flutter/material.dart';

// Экран "Избранное"
class FavouritesScreen extends StatelessWidget {
  const FavouritesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхняя панель с заголовком
      appBar: AppBar(
        title: const Text('Избранное'),
      ),
      // По центру экрана — заглушка с названием раздела
      body: const Center(
        child: Text(
          'Здесь будет Избранное',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}