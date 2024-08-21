import 'dart:typed_data';

import 'package:chicken_open_ai/chicken_open_ai.dart';
import 'package:injectable/injectable.dart';
import 'package:vocal_keeper/data/model/request/tts_request.dart';

@Injectable()
class OpenAiDataSource {
  final ChickenOpenAi _client;

  OpenAiDataSource(this._client);

  Future<Uint8List> textToSpeech(TextToSpeechRequest request) async =>
      await _client.textToSpeech(
        request.text,
        format: request.format,
        voice: request.voice,
      );
}
