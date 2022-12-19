import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() {
  runApp(DrumMachine());
}

class DrumMachine extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        // backgroundColor: Colors.black,
        appBar: AppBar(
          centerTitle: true,
          title: Text("PLAY DRUM"),
        ),
        body: OynatBizi(),
      ),
    );
  }
}

class OynatBizi extends StatelessWidget {
  OynatBizi({super.key});

  final yenioynatici = AudioPlayer();

  void newplayer(String isim) {
    yenioynatici.play(
      AssetSource('audios/$isim.wav'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  Expanded(child: drumnPad('bip', Colors.blueAccent)),
                  Expanded(child: drumnPad('bongo', Colors.redAccent)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: drumnPad('clap1', Colors.purpleAccent)),
                  Expanded(child: drumnPad('crash', Colors.blueGrey)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: drumnPad('how', Colors.yellowAccent)),
                  Expanded(child: drumnPad('oobah', Colors.greenAccent)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: drumnPad('woo', Colors.pinkAccent)),
                  Expanded(child: drumnPad('ridebel', Colors.brown)),
                ],
              ),
            ),
            Expanded(
              child: Row(
                children: [
                  Expanded(child: drumnPad('clap2', Colors.orangeAccent)),
                  Expanded(child: drumnPad('clap3', Colors.tealAccent)),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  TextButton drumnPad(String ses, Color renk) {
    return TextButton(
      onPressed: () {
        newplayer(ses);
      },
      child: Container(
        color: renk,
      ),
    );
  }
}
