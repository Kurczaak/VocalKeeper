import 'package:chicken_open_ai/model/text_to_speech/audio_output_format.dart';
import 'package:chicken_open_ai/model/text_to_speech/voice_option.dart';

class TextToSpeechRequest {
  final String text;
  final AudioOutputFormat format;
  final VoiceOption voice;

  TextToSpeechRequest({
    required this.text,
    required this.format,
    required this.voice,
  });
}
