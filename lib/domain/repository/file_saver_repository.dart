import 'dart:typed_data';

import 'package:vocal_keeper/domain/model/file_extension.dart';

abstract class FileSaverRepository {
  Future<void> saveFile({
    required Uint8List bytes,
    required String fileName,
    required FileExtension fileExtension,
    required String directory,
  });
}
