import 'package:flutter/material.dart';
import 'package:tune_app/models/tune_model.dart';
import 'package:tune_app/widgets/tune_widget.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final List<TuneModel> tunes = [
    TuneModel(color: Colors.red, tune: 'note1.wav'),
    TuneModel(
        color: const Color.fromARGB(255, 205, 141, 39), tune: 'note2.wav'),
    TuneModel(
        color: const Color.fromARGB(255, 221, 243, 77), tune: 'note3.wav'),
    TuneModel(color: const Color.fromARGB(255, 23, 171, 45), tune: 'note4.wav'),
    TuneModel(color: const Color.fromARGB(255, 6, 88, 8), tune: 'note5.wav'),
    TuneModel(color: const Color.fromARGB(255, 17, 25, 186), tune: 'note6.wav'),
    TuneModel(color: const Color.fromARGB(255, 115, 9, 138), tune: 'note7.wav'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 35, 45, 40),
          title: const Center(child: Text('Flutter Tune')),
        ),
        body: ListView.builder(
            itemCount: tunes.length,
            itemBuilder: (context, index) {
              return TuneWidget(color: tunes[index], sound: tunes[index]);
            }));
  }
}
