import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../state/MyAppState.dart';

class FavoritesPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    var appState = context.watch<MyAppState>();

    return SafeArea(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("You have ${appState.favorites.length} favorites"),
          ),
      
          for (var favorite in appState.favorites )
          Card(
            child: ListTile(
              leading: Icon(Icons.favorite),
              title: Text(favorite.asLowerCase),
              onTap: () {
                appState.removeFavorite(favorite);
              },
            ),
          ),
      
        ],
      ),
    );
  }
}