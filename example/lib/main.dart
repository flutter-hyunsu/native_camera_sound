import 'package:flutter/material.dart';

import 'package:native_camera_sound/native_camera_sound.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Camera Sound'),
        ),
        body: Center(
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  NativeCameraSound.playShutter();
                },
                child: const Text('Play Shutter Sound'),
              ),
              ElevatedButton(
                onPressed: () {
                  NativeCameraSound.playStartRecord();
                },
                child: const Text('Play Start Record Sound'),
              ),
              ElevatedButton(
                onPressed: () {
                  NativeCameraSound.playStopRecord();
                },
                child: const Text('Play Stop Record Sound'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
