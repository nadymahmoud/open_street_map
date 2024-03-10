import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.
  LatLng point = LatLng(40.193911, -3.684053);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.dark,
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Stack(children: [
          FlutterMap(
              options: MapOptions(
                minZoom: 3,
                onTap: (tapPosition, p) async {
                  setState(() {
                    point = p;
                  });
                  print(p);
                },
                initialCenter: LatLng(40.193911, -3.684053),
                initialZoom: 14,
              ),
              children: [
                TileLayer(
                  urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                  userAgentPackageName: 'com.example.app',
                  tileBuilder: _darkModeTileBuilder,
                ),
                MarkerLayer(markers: [
                  Marker(
                      width: 100,
                      height: 100,
                      point: point,
                      child: Icon(
                        Icons.circle,
                        color: Colors.blue,
                        size: 20,
                      )),
                ]),
                CircleLayer(circles: [
                  CircleMarker(
                      point: point,
                      color: Colors.blue.withOpacity(0.3),
                      borderStrokeWidth: .5,
                      borderColor: Colors.blue,
                      radius: 20 //radius
                      )
                ])
              ])
        ]),
      ),
    );
  }
}

Widget _darkModeTileBuilder(
  BuildContext context,
  Widget tileWidget,
  TileImage tile,
) {
  return ColorFiltered(
    colorFilter: const ColorFilter.matrix(<double>[
      -0.2126, -0.7152, -0.0722, 0, 255, // Red channel
      -0.2126, -0.7152, -0.0722, 0, 255, // Green channel
      -0.2126, -0.7152, -0.0722, 0, 255, // Blue channel
      0, 0, 0, 1, 0, // Alpha channel
    ]),
    child: tileWidget,
  );
}
