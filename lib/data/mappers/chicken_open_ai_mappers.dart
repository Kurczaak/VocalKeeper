import 'package:chicken_open_ai/model/text_to_speech/audio_output_format.dart';
import 'package:chicken_open_ai/model/text_to_speech/voice_option.dart';
import 'package:file_saver/file_saver.dart';
import 'package:vocal_keeper/domain/model/file_extension.dart';
import 'package:vocal_keeper/domain/model/voices.dart';

extension VoicesMapper on Voices {
  VoiceOption toDTO() => switch (this) {
        Voices.fable => VoiceOption.fable,
        Voices.alloy => VoiceOption.alloy,
        Voices.echo => VoiceOption.echo,
        Voices.nova => VoiceOption.nova,
        Voices.onyx => VoiceOption.onyx,
        Voices.shimmer => VoiceOption.shimmer,
      };
}

extension FileExtensionMapper on FileExtension {
  AudioOutputFormat toDTO() => switch (this) {
        FileExtension.aac => AudioOutputFormat.aac,
        FileExtension.wav => AudioOutputFormat.wav,
        FileExtension.mp3 => AudioOutputFormat.mp3,
        FileExtension.flac => AudioOutputFormat.flac,
        FileExtension.opus => AudioOutputFormat.opus,
        FileExtension.pcm => AudioOutputFormat.pcm,
      };

  MimeType toFileSaverMimeType() => switch (this) {
        FileExtension.aac => MimeType.aac,
        FileExtension.wav => MimeType.custom,
        FileExtension.mp3 => MimeType.mp3,
        FileExtension.flac => MimeType.custom,
        FileExtension.opus => MimeType.custom,
        FileExtension.pcm => MimeType.custom,
      };
}
