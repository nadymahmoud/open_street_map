import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:open_street_map/function/dark_mode_map_function.dart';
import 'package:open_street_map/function/get_marker.dart';
import 'package:open_street_map/widgets/bottom_card_widget.dart';
import 'package:open_street_map/widgets/header_widget.dart';

class OpenStreetMapHome extends StatefulWidget {
  const OpenStreetMapHome({super.key});

  @override
  State<OpenStreetMapHome> createState() => _OpenStreetMapHomeState();
}

class _OpenStreetMapHomeState extends State<OpenStreetMapHome> {
  LatLng point = LatLng(40.193911, -3.684053);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        FlutterMap(
            options: MapOptions(
              minZoom: 3,
              onTap: (tapPosition, p) async {
                // setState(() {
                //   point = p;
                // });
                print(p);
              },
              initialCenter: LatLng(40.193911, -3.684053),
              initialZoom: 15,
            ),
            children: [
              TileLayer(
                urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
                userAgentPackageName: 'com.example.app',
                tileBuilder: darkModeTileBuilderMap,
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
                Marker(
                    height: 40,
                    width: 40,
                    point: LatLng(40.195056, -3.68582),
                    child: getMarker('assests/images/profile.jpg')),
                Marker(
                    height: 40,
                    width: 40,
                    point: LatLng(40.202117, -3.686801),
                    child: getMarker('assests/images/profile1.jpg')),
                Marker(
                    height: 40,
                    width: 40,
                    point: LatLng(40.191674, -3.68582),
                    child: getMarker('assests/images/profile2.jpg')),
                Marker(
                    height: 40,
                    width: 40,
                    point: LatLng(40.198089, -3.679824),
                    child: getMarker('assests/images/profile3.jpg')),
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
            ]),
        Positioned(top: 50, left: 20, child: HeaderWidget()),
        Positioned(bottom: 0, child: BottomCardWidget()),
      ]),
    );
  }
}
