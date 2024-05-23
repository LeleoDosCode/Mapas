import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

class tela1 extends StatefulWidget {
  const tela1({Key? key}) : super(key: key);

  @override
  State<tela1> createState() => _tela1State();
}

class _tela1State extends State<tela1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'LIO MAPAS',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontFamily: 'San Francisco'
          ),
        ),
        centerTitle: true,
        backgroundColor: Colors.pinkAccent,
      ),
      body: Stack(
        children: [
          FlutterMap(
            options: MapOptions(
              center: LatLng(-23.589209, -48.072929),
              zoom: 3
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://a.tile.openstreetmap.fr/osmfr/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
              ),
              MarkerLayer(
                markers: [
                  Marker(
                    width: 80.0,
                    height: 80.0,
                    point: LatLng(-23.589209, -48.072929),
                    builder: (ctx) => Container(
                      child: Icon(Icons.location_on, color: Colors.red),
                    ),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
