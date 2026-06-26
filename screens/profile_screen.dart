import 'package:flutter/material.dart';

// Экран "Профиль"
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Верхняя панель с заголовком
      appBar: AppBar(
        title: const Text('Профиль'),
      ),
      // По центру экрана — заглушка с названием раздела
      body: const Center(
        child: Text(
          'Здесь будет Профиль',
          style: TextStyle(fontSize: 18),
        ),
      ),
    );
  }
}