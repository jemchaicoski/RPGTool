import 'package:flutter/material.dart';

class NavegationBar extends StatelessWidget {
  NavegationBar();

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('images/icons/zakat.png'),
          ),
          label: 'Arsenal',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('images/icons/knight.png'),
          ),
          label: 'Personagens',
        ),
        BottomNavigationBarItem(
          icon: ImageIcon(
            AssetImage('images/icons/book.png'),
          ),
          label: 'Habilidades',
        ),
      ],
      selectedItemColor: Colors.red[800],
    );
  }
}
