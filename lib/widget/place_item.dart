import 'package:favorite_place_flutter_app/screens/place_detail_screen.dart';
import 'package:flutter/material.dart';
import '../models/place_model.dart';

class PlaceItem extends StatelessWidget {
  const PlaceItem({super.key, required this.userPlace});
  final Place userPlace;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 26,
        backgroundImage: FileImage(userPlace.image),
      ),
      trailing: Container(
        width: 20,
        height: 20,
        color: Colors.red,
      ),
      title: Text(
        userPlace.title,
        style: const TextStyle(color: Colors.white),
      ),
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => PlaceDetailScreen(
                userPlace: userPlace,
              ),
            ));
      },
    );
  }
}
