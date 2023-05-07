import 'package:favorite_place_flutter_app/models/place_model.dart';
import 'package:flutter/material.dart';

class PlaceDetailScreen extends StatelessWidget {
  const PlaceDetailScreen({super.key, required this.userPlace});
  final Place userPlace;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text(userPlace.title)),
        body: Stack(
          children: [
            Image.file(
              userPlace.image,
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            )
          ],
        ));
  }
}
