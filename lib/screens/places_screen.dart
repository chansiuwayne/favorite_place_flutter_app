import 'package:favorite_place_flutter_app/providers/user_places.dart';
import 'package:favorite_place_flutter_app/screens/add_place_screen.dart';
import 'package:favorite_place_flutter_app/widget/place_list.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class PlacesScreen extends ConsumerWidget {
  const PlacesScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userPlaces = ref.watch(userPlacesProvider);

    return Scaffold(
        appBar: AppBar(
          title: const Text("Your Places"),
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const AddPlace()));
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: Padding(
            padding: const EdgeInsets.all(8),
            child: PlaceList(places: userPlaces)));
  }
}
