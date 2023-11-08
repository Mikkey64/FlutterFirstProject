import 'package:flutter/material.dart';
import 'package:flutter_application_1/components/toolbar.dart';
import 'package:flutter_application_1/config/app_icons.dart';
import 'package:flutter_application_1/config/app_strings.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:flutter_svg/svg.dart';
import 'package:latlong2/latlong.dart';

class NearbyPage extends StatelessWidget {
  const NearbyPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: const Toolbar(actions: [], title: AppStrings.nearby),
        body: FlutterMap(
          options: MapOptions(
            center: const LatLng(53.428543, 14.552812),
            zoom: 10,
          ),
          children: [
            TileLayer(
              urlTemplate: 'https://tile.openstreetmap.org/{z}/{x}/{y}.png',
              userAgentPackageName: 'dev.fleaflet.flutter_map.example',
            ),
            Builder(
              builder: (context) {
                return MarkerLayer(
                  markers: [
                    Marker(
                      width: 100,
                      height: 50,
                      point: const LatLng(53.428543, 14.552812),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.all(
                                Radius.circular(14),
                              ),
                            ),
                            child: const Text(
                              "Username",
                              style: TextStyle(
                                color: Colors.black,
                              ),
                            ),
                          ),
                          SvgPicture.asset(AppIcons.icLocation),
                        ],
                      ),
                    ),
                  ],
                );
              },
            )
          ],
        ));
  }
}
