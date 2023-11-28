import 'package:flutter/material.dart';
import 'package:meals_app/screens/categories_screen.dart';
import 'package:meals_app/screens/favorite_screen.dart';

class TabsScreen extends StatefulWidget {
  const TabsScreen({super.key});

  @override
  State<TabsScreen> createState() => _TabsScreenState();
}

class Screen {
  final String title;
  final Widget screen;

  const Screen(this.title, this.screen);
}

class _TabsScreenState extends State<TabsScreen> {
  int _selectedScreenIndex = 0;

  final List<Screen> _screens = [
    Screen('O que vamos cozinhar?', CategoriesScreen()),
    const Screen('Meus Favoritos', FavoriteScreen()),
  ];

  _selectScreen(int index) {
    setState(() {
      _selectedScreenIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('test');

    return Scaffold(
      appBar: AppBar(
        title: Text(_screens[_selectedScreenIndex].title),
      ),
      body: _screens[_selectedScreenIndex].screen,
      drawer: const Drawer(child: Text('Drawer')),
      bottomNavigationBar: BottomNavigationBar(
          onTap: _selectScreen,
          backgroundColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.white,
          selectedItemColor: Theme.of(context).highlightColor,
          currentIndex: _selectedScreenIndex,
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.category), label: 'Categorias'),
            BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Favoritos'),
          ]),
    );
  }
}
