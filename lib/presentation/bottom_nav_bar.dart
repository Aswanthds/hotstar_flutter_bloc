import 'package:flutter/material.dart';

ValueNotifier<int> indexChangeNotifier = ValueNotifier(0);

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: indexChangeNotifier,
      builder: (context, value, child) => BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: value,
        onTap: (index) {
          indexChangeNotifier.value = index;
        },
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white54,
        backgroundColor: Colors.black54,
        elevation: 5.0,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home_filled), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
          BottomNavigationBarItem(
              icon: Icon(Icons.bolt_outlined), label: "New&Hot"),
          BottomNavigationBarItem(
              icon: Icon(Icons.file_download_outlined), label: "Downloads"),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined), label: "My Space"),
        ],
      ),
    );
  }
}
