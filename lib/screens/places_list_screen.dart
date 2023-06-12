import 'package:earth_places/providers/earth_places.dart';
import 'package:earth_places/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class PlacesListScreen extends StatelessWidget {
  const PlacesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Meus Lugares'),
          actions: <Widget>[
            IconButton(
              onPressed: () {
                Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
              },
              icon: const Icon(Icons.add),
            ),
          ],
        ),
        body: Consumer<EarthPlaces>(
          child: const Center(
            child: Text('Nenhum local cadastrado!'),
          ),
          builder: (ctx, earthPlaces, child) => earthPlaces.itemsCount == 0
              ? child!
              : ListView.builder(
                  itemCount: earthPlaces.itemsCount,
                  itemBuilder: (ctx, i) => ListTile(
                    leading: CircleAvatar(
                      backgroundImage:
                          FileImage(earthPlaces.getItemByIndex(i).image),
                    ),
                    title: Text(earthPlaces.getItemByIndex(i).title),
                    onTap: () {},
                  ),
                ),
        ));
  }
}
