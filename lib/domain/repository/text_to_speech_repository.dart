import 'dart:typed_data';

import 'package:vocal_keeper/domain/model/file_extension.dart';
import 'package:vocal_keeper/domain/model/voices.dart';

abstract class TextToSpeechRepository {
  Future<Uint8List> speak(
    String text, {
    Voices voice = Voices.fable,
    FileExtension fileExtension = FileExtension.aac,
  });
}
