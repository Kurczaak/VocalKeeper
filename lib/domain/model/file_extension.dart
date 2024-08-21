enum FileExtension {
  mp3,
  opus,
  aac,
  flac,
  wav,
  pcm,
}

extension AudioOutputFormatMapper on FileExtension {
  String get value => switch (this) {
        FileExtension.aac => 'aac',
        FileExtension.flac => 'flac',
        FileExtension.mp3 => 'mp3',
        FileExtension.opus => 'opus',
        FileExtension.pcm => 'pcm',
        FileExtension.wav => 'wav',
      };
}
