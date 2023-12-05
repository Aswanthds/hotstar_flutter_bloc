import 'package:flutter/material.dart';
import 'package:hotstar_bloc/appliation/home_page_bloc/home_page_bloc_bloc.dart';
import 'package:hotstar_bloc/appliation/new_and_hot/new_and_hot_services_bloc.dart';
import 'package:hotstar_bloc/appliation/search_data_bloc/search_data_bloc.dart';
import 'package:hotstar_bloc/appliation/trending_movies/trendingmoviesbloc_bloc.dart';
import 'package:hotstar_bloc/appliation/trending_movies_bloc/trending_south_india_bloc.dart';
import 'package:hotstar_bloc/domain/core/injectible.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hotstar_bloc/presentation/nav_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (ctx) => getIt<TrendingmoviesblocBloc>()),
        BlocProvider(create: (ctx) => getIt<SearchDataBloc>()),
        BlocProvider(create: (ctx) => getIt<NewAndHotServicesBloc>()),
        BlocProvider(create: (ctx) => getIt<HomePageBlocBloc>()),
        BlocProvider(create: (ctx) => getIt<TrendingSouthIndiaBloc>()),
      ],
      child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          theme: ThemeData.from(
            colorScheme: const ColorScheme.dark(),
            useMaterial3: true,
          ),
          home: const NavigatePageScreen()),
    );
  }
}
