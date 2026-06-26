import 'package:flutter/material.dart';

// Импорт экранов
import 'screens/home_screen.dart';
import 'screens/search_screen.dart';
import 'screens/favourites_screen.dart';
import 'screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

// Корневой виджет приложения
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Scaffold',
      // Включаем Material 3
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: const MainScreen(),
    );
  }
}

// Главный экран с нижней навигацией — StatefulWidget
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  // Индекс текущего активного экрана
  int _currentIndex = 0;

  // Список экранов, соответствующих пунктам навигации
  final List<Widget> _screens = const [
    HomeScreen(),
    SearchScreen(),
    FavouritesScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Отображаем экран по текущему индексу
      body: _screens[_currentIndex],

      // Нижняя навигационная панель
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        // При нажатии на пункт — обновляем индекс
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        // Показываем все подписи всегда (не только у активного пункта)
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            activeIcon: Icon(Icons.home),
            label: 'Главная',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            activeIcon: Icon(Icons.search),
            label: 'Поиск',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            activeIcon: Icon(Icons.favorite),
            label: 'Избранное',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            activeIcon: Icon(Icons.person),
            label: 'Профиль',
          ),
        ],
      ),
    );
  }
}