// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:chicken_open_ai/chicken_open_ai.dart' as _i3;
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../data/data_source/open_ai_data_source.dart' as _i6;
import '../data/repository/file_saver_repository_impl.dart' as _i5;
import '../data/repository/open_ai_text_to_speech_repository_impl.dart' as _i8;
import '../domain/repository/file_saver_repository.dart' as _i4;
import '../domain/repository/text_to_speech_repository.dart' as _i7;
import '../domain/use_case/save_speech_use_case.dart' as _i9;
import 'injection.dart' as _i10;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    final chickenOpenAIModule = _$ChickenOpenAIModule();
    gh.lazySingleton<_i3.ChickenOpenAi>(
        () => chickenOpenAIModule.chickenOpenAi);
    gh.factory<_i4.FileSaverRepository>(() => _i5.FileSaverRepositoryImpl());
    gh.factory<_i6.OpenAiDataSource>(
        () => _i6.OpenAiDataSource(gh<_i3.ChickenOpenAi>()));
    gh.factory<_i7.TextToSpeechRepository>(
        () => _i8.OpenAiTextToSpeechRepositoryImpl(gh<_i6.OpenAiDataSource>()));
    gh.factory<_i9.SaveSpeechUseCase>(() => _i9.SaveSpeechUseCase(
          gh<_i7.TextToSpeechRepository>(),
          gh<_i4.FileSaverRepository>(),
        ));
    return this;
  }
}

class _$ChickenOpenAIModule extends _i10.ChickenOpenAIModule {}
