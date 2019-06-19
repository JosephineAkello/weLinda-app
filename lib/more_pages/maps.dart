import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class SearchPlace extends StatefulWidget {
  createState() {
    return SearchPlaceState();
  }
}

class SearchPlaceState extends State<SearchPlace> {
  Completer<GoogleMapController> _controller = Completer();

  static final CameraPosition _position =
      CameraPosition(target: LatLng(-0.091702, 34.767956), zoom: 14.0);

  Widget build(context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Search Recovery Center'),
          backgroundColor: Colors.purple,
        ),
        body: GoogleMap(
          initialCameraPosition: _position,
          onMapCreated: (GoogleMapController controller) {
            _controller.complete(controller);
          },
        ));
  }
}
