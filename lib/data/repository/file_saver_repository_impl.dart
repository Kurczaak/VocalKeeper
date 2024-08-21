import 'dart:typed_data';

import 'package:file_saver/file_saver.dart';
import 'package:injectable/injectable.dart';
import 'package:vocal_keeper/data/mappers/chicken_open_ai_mappers.dart';
import 'package:vocal_keeper/domain/model/file_extension.dart';
import 'package:vocal_keeper/domain/repository/file_saver_repository.dart';

@Injectable(as: FileSaverRepository)
class FileSaverRepositoryImpl implements FileSaverRepository {
  @override
  Future<void> saveFile({
    required Uint8List bytes,
    required String fileName,
    required FileExtension fileExtension,
    required String directory,
  }) async {
    final mimeType = fileExtension.toFileSaverMimeType();

    await FileSaver.instance.saveFile(
      name: fileName,
      bytes: bytes,
      mimeType: fileExtension.toFileSaverMimeType(),
      ext: mimeType == MimeType.custom ? fileExtension.value : '',
    );
  }
}
