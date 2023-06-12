import 'package:earth_places/providers/earth_places.dart';
import 'package:earth_places/screens/place_form_screen.dart';
import 'package:earth_places/screens/places_list_screen.dart';
import 'package:earth_places/utils/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => EarthPlaces(),
      child: MaterialApp(
        title: 'Earth Places',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.indigo)
              .copyWith(secondary: Colors.amber),
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: const PlacesListScreen(),
        routes: {
          AppRoutes.PLACE_FORM: (ctx) => const PlaceFormScreen(),
        },
      ),
    );
  }
}
