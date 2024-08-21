import 'package:flutter/material.dart';
import 'package:vocal_keeper/di/injection.dart';
import 'package:vocal_keeper/domain/model/file_extension.dart';
import 'package:vocal_keeper/domain/use_case/save_speech_use_case.dart';

class VocalKeeperHomePage extends StatefulWidget {
  const VocalKeeperHomePage({super.key});

  @override
  State<VocalKeeperHomePage> createState() => _VocalKeeperHomePageState();
}

class _VocalKeeperHomePageState extends State<VocalKeeperHomePage> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextField(
          decoration: const InputDecoration(
            labelText: 'Enter text',
          ),
          onChanged: (value) {
            setState(() {
              text = value;
            });
          },
        ),
        ElevatedButton(
          onPressed: () {
            getIt<SaveSpeechUseCase>()(
              text: text,
              fileName: 'speech',
              directory: 'vocal_keeper',
              fileExtension: FileExtension.mp3,
            );
          },
          child: const Text('Save speech'),
        ),
      ],
    );
  }
}
