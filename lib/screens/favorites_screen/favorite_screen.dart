import 'package:flutter/material.dart';
import 'package:pokedex/helper/favorites_set.dart';
import 'package:pokedex/screens/favorites_screen/widgets/favorites_card.dart';
import 'package:pokedex/screens/home_screen/home_screen.dart';

class FavoritesScreen extends StatefulWidget {
  final Set<String> favName = Favs.getSet();

  FavoritesScreen({Key? key}) : super(key: key);

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Favorites',
        ),
        leading: BackButton(
          onPressed: () {
            Route route = MaterialPageRoute(builder: (context) => const HomeScreen());
            Navigator.push(context, route);
          },
        ),
        actions: [
          IconButton(
              onPressed: () {
                setState(() {});
              },
              icon: const Icon(Icons.refresh)
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(right: 20, left: 20, top: 40),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 1,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 1.8,
          ),
          itemCount: widget.favName.length,
          itemBuilder: (context, index) {
            return InkWell(
              onLongPress: () {
                showDialog(
                  context: context,
                  builder: (context) {
                    return AlertDialog(
                      title: const Text('Löschen'),
                      content: const Text('Dieses Pokemon aus den Favoriten entfernen?'),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Cancel');
                          }, child: const Text('Cancel'),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.pop(context, 'Löschen');
                            Favs.removeFromSet(widget.favName.elementAt(index));
                            setState(() {
                            });
                          }, child: const Text('Löschen'),
                        ),
                      ],
                    );
                  },
                );
              },
              child: FavoritesCard(
                favName: widget.favName.elementAt(index),
              ),
            );
          },
        ),
      ),
    );
  }
}
