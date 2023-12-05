import 'package:hotstar_bloc/domain/core/injectible.config.dart';
import 'package:injectable/injectable.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configDependencies() async {
  getIt.init();
}
