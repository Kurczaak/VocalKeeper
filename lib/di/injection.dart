import 'package:chicken_open_ai/chicken_open_ai.dart';
import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:vocal_keeper/di/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit(
  initializerName: 'init', // default
  preferRelativeImports: true, // default
  asExtension: true, // default
)
void configureDependencies() {
  getIt.init();
}

@module
abstract class ChickenOpenAIModule {
  @LazySingleton()
  ChickenOpenAi get chickenOpenAi => ChickenOpenAi()..init('');
}
