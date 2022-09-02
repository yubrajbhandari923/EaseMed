import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';

import 'package:location/location.dart';

import 'package:latlong2/latlong.dart' as latLng;

// class NearestHospital extends StatefulWidget {
//   const NearestHospital({super.key});

//   @override
//   State<NearestHospital> createState() => _NearestHospitalState();
// }

// class _NearestHospitalState extends State<NearestHospital> {
//   late bool _serviceEnabled;
//   late PermissionStatus _permissionGranted;
//   LocationData? _userLocation;

//   Future<void> _getUserLocation() async {
//     Location location = Location();

//     // Check if location service is enable
//     _serviceEnabled = await location.serviceEnabled();
//     if (!_serviceEnabled) {
//       _serviceEnabled = await location.requestService();
//       if (!_serviceEnabled) {
//         return;
//       }
//     }

//     // Check if permission is granted
//     _permissionGranted = await location.hasPermission();
//     if (_permissionGranted == PermissionStatus.denied) {
//       _permissionGranted = await location.requestPermission();
//       if (_permissionGranted != PermissionStatus.granted) {
//         return;
//       }
//     }

//     final _locationData = await location.getLocation();
//     setState(() {
//       _userLocation = _locationData;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//                 onPressed: _getUserLocation,
//                 child: const Text('Check Location')),
//             const SizedBox(height: 25),
//             // Display latitude & longtitude
//             _userLocation != null
//                 ? Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Wrap(
//                       children: [
//                         Text('Your latitude: ${_userLocation?.latitude}'),
//                         const SizedBox(width: 10),
//                         Text('Your longtitude: ${_userLocation?.longitude}')
//                       ],
//                     ),
//                   )
//                 : Container()
//           ],
//         ),
//       ),
//     );
//   }
// }

class Maps extends StatefulWidget {
  const Maps({super.key});

  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      appBar: AppBar(title:Text('Fuck')),
      body:FlutterMap(
      options:
          MapOptions(center: latLng.LatLng(27.6737961, 85.3205423), zoom: 20),
      layers: [
        TileLayerOptions(
            urlTemplate:
                "https://api.mapbox.com/styles/v1/sisambhandari/cl7kcj5h8000a15p7y5wvd0sv/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1Ijoic2lzYW1iaGFuZGFyaSIsImEiOiJjbDZvZHN3NmQwOXRyM2xyM2g5emt5YWFvIn0.ZaNm2L0QacVrW5wKcmhcAA",
            userAgentPackageName: 'com.example.app',
            additionalOptions: {
              'accessToken':
                  'pk.eyJ1Ijoic2lzYW1iaGFuZGFyaSIsImEiOiJjbDZvZHN3NmQwOXRyM2xyM2g5emt5YWFvIn0.ZaNm2L0QacVrW5wKcmhcAA',
              'id': 'mapbox.mapbox-streets-v8',
            }),
        MarkerLayerOptions(markers: [
          Marker(
              point: latLng.LatLng(27.34534, 85.32034423),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //1st
          Marker(
              point: latLng.LatLng(27.6678961, 85.3465423),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //2nd
          Marker(
              point: latLng.LatLng(27.6789961, 85.33345423),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //3rd
          Marker(
              point: latLng.LatLng(27.6345444, 8534423),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //4
          Marker(
              point: latLng.LatLng(27.673354543, 85.32324523),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //5
          Marker(
              point: latLng.LatLng(27.6735342, 85.567523),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //6
          Marker(
              point: latLng.LatLng(27.6736778, 85.3434523),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //7
          Marker(
              point: latLng.LatLng(27.67463431, 85.45654623),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //8
          Marker(
              point: latLng.LatLng(27.6675661, 85.323425324),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //9
          Marker(
              point: latLng.LatLng(27.645661, 85.320433),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
          //10
          Marker(
              point: latLng.LatLng(27.6737961, 85.3205423),
              builder: ((context) => Container(
                    child: IconButton(
                      icon: Icon(Icons.local_hospital),
                      onPressed: () {},
                    ),
                  ))),
        ])
      ],
      nonRotatedChildren: [
        AttributionWidget.defaultWidget(
          source: 'OpenStreetMap contributors',
          onSourceTapped: null,
        ),
    ],
    ));
  }
}
