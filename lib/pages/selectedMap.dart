// import 'dart:async';

// import 'package:app/util/locationservice.dart';
// import 'package:app/util/model/selectedPlace.dart';
// import 'package:flutter/material.dart';
// import 'package:google_maps_flutter/google_maps_flutter.dart';

// class selectedMapPage extends StatefulWidget {
//     Category place2;
//    selectedMapPage({super.key, required this.place2});

//   @override
//   State<selectedMapPage> createState() => _MapPage();
// }

// class _MapPage extends State<selectedMapPage> {
//   Completer<GoogleMapController> _controller = Completer();
//   TextEditingController _searchController = TextEditingController();

//   Set<Marker> _markers = Set<Marker>();

//   static final CameraPosition sourcePosition =
//       CameraPosition(target: LatLng(15.0979, 145.6739), zoom: 10);

//   @override
//   void initState() {
//     super.initState();
//     _setMarker(LatLng(15.210599, 145.722691));
//   }

//   void _setMarker(LatLng point) {
//     setState(() {
//       _markers.add(
//         Marker(
//           markerId: MarkerId("marker"),
//           position: point,
//         ),
//       );
//     });
//   }
   
//   @override
//   Widget build(BuildContext context) {


//     return Scaffold(
//       body: Column(
//         children: [
//           Padding(
//             padding: const EdgeInsets.only(top: 60.0),
//             child: Row(
//               children: [
//                 IconButton(
//                   icon: Icon(
//                     Icons.arrow_back,
//                   ),
//                   color: Colors.black,
//                   onPressed: () => Navigator.pop(context),
//                 ),
//                 Expanded(
//                     child: TextFormField(
//                         controller: _searchController,
//                         textCapitalization: TextCapitalization.words,
//                         decoration:
//                             InputDecoration(hintText: 'Enter the address'),
//                         onChanged: (value) {
//                           print(value);
//                         })),
//                 // Search button
//                 IconButton(
//                     onPressed: () async {
//                       var place = await LocationService()
//                       .getPlace(_searchController.text);
//                       print(place);
//                       _goTarget(place);
//                     },
//                     icon: Icon(
//                       Icons.search,
//                     )),
                     
//               ],
//             ),
//           ),
//           Expanded(
//             child: GoogleMap(
//               mapType: MapType.normal,
//               initialCameraPosition: sourcePosition,
//               onMapCreated: (controller) => _controller.complete(controller),
//               // zoomControlsEnabled: true,
//               // zoomGesturesEnabled: true,
//               // scrollGesturesEnabled: true,
//               // onCameraMove: (CameraPosition cameraPosition) {
//               //     print(cameraPosition.zoom);
//               // },
//               markers: _markers,
//             ),
//           ),
//         ],
//       ),
//     );
//   }



//   Future<void> _goTarget(Map<String, dynamic> place) async {
//     final double lat = place['geometry']['location']['lat'];
//     final double lng = place['geometry']['location']['lng'];
//     final GoogleMapController controller = await _controller.future;
//     controller.animateCamera(CameraUpdate.newCameraPosition(
//       CameraPosition(target: LatLng(lat, lng), zoom: 15),
//     ));
//     _setMarker(LatLng(lat, lng));
//   }
// }
