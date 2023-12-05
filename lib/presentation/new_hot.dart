import 'package:flutter/material.dart';

import 'package:hotstar_bloc/presentation/widgets/coming_soon_page.dart';
import 'package:hotstar_bloc/presentation/widgets/latest_releases_tile.dart';

class NewAndHotPage extends StatelessWidget {
  const NewAndHotPage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(60),
          child: AppBar(
            bottom: const TabBar(tabs: [
              Tab(
                child: Text("Latest Releases"),
              ),
              Tab(
                child: Text("Coming Soon"),
              ),
            ]),
          ),
        ),
        body: const TabBarView(children: [
          LatestReleases(),
          ComingSoonPage(),
        ]),
      ),
    );
  }
}
