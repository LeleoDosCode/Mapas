import 'package:flutter/material.dart';
import 'components/principal.dart';
import 'components/tela1.dart';
import 'components/tela2.dart';
import 'components/tela3.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Principal(),
      initialRoute: '/',
      routes: {
        '/1': (context) => const tela1(),
        '/2': (context) => const tela2(),
        '/3': (context) => const tela3()
      },
    );
  }
}
