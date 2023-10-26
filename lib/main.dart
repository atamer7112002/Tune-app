import 'package:flutter/material.dart';
import 'package:tune_app/views/home_view.dart';

void main() {
  runApp(const tune_app());
}

class tune_app extends StatelessWidget {
  const tune_app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
