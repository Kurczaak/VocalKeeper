import 'package:injectable/injectable.dart';
import 'package:vocal_keeper/domain/model/file_extension.dart';
import 'package:vocal_keeper/domain/model/voices.dart';
import 'package:vocal_keeper/domain/repository/file_saver_repository.dart';
import 'package:vocal_keeper/domain/repository/text_to_speech_repository.dart';

@injectable
class SaveSpeechUseCase {
  final TextToSpeechRepository _textToSpeechRepository;
  final FileSaverRepository _fileSaverRepository;

  SaveSpeechUseCase(this._textToSpeechRepository, this._fileSaverRepository);

  Future<void> call({
    required String text,
    required String fileName,
    required String directory,
    FileExtension fileExtension = FileExtension.aac,
    Voices voice = Voices.fable,
  }) async {
    final bytes = await _textToSpeechRepository.speak(text);
    await _fileSaverRepository.saveFile(
      bytes: bytes,
      fileName: fileName,
      directory: directory,
      fileExtension: fileExtension,
    );
  }
}
