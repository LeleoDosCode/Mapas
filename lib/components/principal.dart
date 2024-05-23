import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Principal.dart';
import 'tela2.dart';
import 'tela3.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  State<Principal> createState() => _HomePageState();
}

class _HomePageState extends State<Principal> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Menu"),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.fromLTRB(10, 25, 10, 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      '/1'
                  );
                },
                child: const Text('Mapa 1')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context, 
                      '/2'
                  );
                }, 
                child: const Text('Mapa 2')
            ),
            ElevatedButton(
                onPressed: (){
                  Navigator.pushNamed(
                      context,
                      '/3'
                  );
                },
                child: const Text('Mapa 3')
            ),
          ],
        ),
      ),
    );
  }
}
