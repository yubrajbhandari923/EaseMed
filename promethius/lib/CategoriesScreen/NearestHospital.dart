import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:http/http.dart' as http;
import 'package:location/location.dart';
import 'dart:convert';
import 'package:latlong2/latlong.dart' as latLng;
import 'package:flutter/services.dart';
import 'package:promethius/CategoriesScreen/popupCard.dart';

class Maps extends StatefulWidget {
  @override
  State<Maps> createState() => _MapsState();
}

class _MapsState extends State<Maps> {
  Future<dynamic> getHospitals() async {
    // Uri url = Uri.https('easemed.herokuapp.com', 'hospitals');
    // http.Response res = await http.get(url);
    var jsonString = await rootBundle.loadString("hospitals_data.json");
    final jsonResponse = json.decode(jsonString);
    return jsonResponse;
    // print(res.statusCode);
    // return json.decode(res.body);
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: getHospitals(),
        builder: (BuildContext ctx, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return Scaffold(
              appBar: AppBar(title: Text('Nearest Hospitals')),
              body: SafeArea(
                child: FlutterMap(
                  options: MapOptions(
                      center: latLng.LatLng(27.6737961, 85.3205423), zoom: 20),
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
                          point: latLng.LatLng(snapshot.data[0]["lat"],
                              snapshot.data[0]["long"]),
                          builder: ((context) => Container(
                                child: IconButton(
                                  icon: Icon(Icons.favorite),
                                  onPressed: () {
                                    // Popup(
                                    //     name: snapshot.data[1]["name"],
                                    //     location: snapshot.data[1]["location"]);
                                  },
                                ),
                              ))),
                      // //1st
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[1]["lat"],
                      //         snapshot.data[1]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                      // //2nd
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[2]["lat"],
                      //         snapshot.data[2]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                      // //3rd
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[3]["lat"],
                      //         snapshot.data[3]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                      // //4
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[4]["lat"],
                      //         snapshot.data[4]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                      // //5
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[5]["lat"],
                      //         snapshot.data[5]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                      // //6
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[6]["lat"],
                      //         snapshot.data[6]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                      // //7
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[7]["lat"],
                      //         snapshot.data[7]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                      // //8
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[8]["lat"],
                      //         snapshot.data[8]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                      // //9
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[9]["lat"],
                      //         snapshot.data[9]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                      // // 10
                      // Marker(
                      //     point: latLng.LatLng(snapshot.data[10]["lat"],
                      //         snapshot.data[10]["long"]),
                      //     builder: ((context) => Container(
                      //           child: IconButton(
                      //             icon: Icon(Icons.local_hospital),
                      //             onPressed: () {
                      //               Popup(
                      //                   name: snapshot.data[1]["name"],
                      //                   location: snapshot.data[1]["location"]);
                      //             },
                      //           ),
                      //         ))),
                    ])
                  ],
                  nonRotatedChildren: [
                    AttributionWidget.defaultWidget(
                      source: 'OpenStreetMap contributors',
                      onSourceTapped: null,
                    ),
                  ],
                ),
              ),
            );
          } else {
            return Scaffold(
              appBar: AppBar(title: Text('Error')),
            );
          }
        });
  }
}
