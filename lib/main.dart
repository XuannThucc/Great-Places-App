import 'package:flutter/material.dart';
import 'package:great_place_app/providers/great_places.dart';
import 'package:great_place_app/screens/add_places_screen/add_places_screen.dart';
import 'package:great_place_app/screens/places_detail_screen/places_detail_screen.dart';
import 'package:great_place_app/screens/places_list_screen/places_list_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (ctx) => GreatPlaces()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
          accentColor: Colors.amber
        ),
        home: PlacesListScreen(),
        routes: {
          AddPlaceScreen.routerName: (ctx) => AddPlaceScreen(),
          DetailPlace.routeName: (ctx) => DetailPlace(),
        },
      ),
    );
  }
}
