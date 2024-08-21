import 'dart:typed_data';

import 'package:injectable/injectable.dart';
import 'package:vocal_keeper/data/data_source/open_ai_data_source.dart';
import 'package:vocal_keeper/data/mappers/chicken_open_ai_mappers.dart';
import 'package:vocal_keeper/data/model/request/tts_request.dart';
import 'package:vocal_keeper/domain/model/file_extension.dart';
import 'package:vocal_keeper/domain/model/voices.dart';
import 'package:vocal_keeper/domain/repository/text_to_speech_repository.dart';

@Injectable(as: TextToSpeechRepository)
class OpenAiTextToSpeechRepositoryImpl implements TextToSpeechRepository {
  final OpenAiDataSource _dataSource;

  OpenAiTextToSpeechRepositoryImpl(this._dataSource);

  @override
  Future<Uint8List> speak(
    String text, {
    Voices voice = Voices.fable,
    FileExtension fileExtension = FileExtension.aac,
  }) =>
      _dataSource.textToSpeech(TextToSpeechRequest(
        text: text,
        voice: voice.toDTO(),
        format: fileExtension.toDTO(),
      ));
}
