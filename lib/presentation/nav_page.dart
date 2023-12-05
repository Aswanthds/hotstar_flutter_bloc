import 'package:flutter/material.dart';

import 'package:hotstar_bloc/presentation/bottom_nav_bar.dart';
import 'package:hotstar_bloc/presentation/downloads_page.dart';
import 'package:hotstar_bloc/presentation/home_page.dart';
import 'package:hotstar_bloc/presentation/new_hot.dart';
import 'package:hotstar_bloc/presentation/profile_page.dart';
import 'package:hotstar_bloc/presentation/search_page.dart';

class NavigatePageScreen extends StatelessWidget {
  const NavigatePageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    const pages = [
      HomePage(),
      SearchPage(),
      NewAndHotPage(),
      DownloadsPage(),
      ProfilePage(),
    ];

    return Scaffold(
      body: ValueListenableBuilder(
        valueListenable: indexChangeNotifier,
        builder: (context, value, child) => pages[value],
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
