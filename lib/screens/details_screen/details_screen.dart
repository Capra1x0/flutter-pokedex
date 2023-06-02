// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:pokedex/handler/api_service.dart';
import 'package:pokedex/helper/favorites_set.dart';
import 'package:pokedex/helper/helper_functions.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/screens/details_screen/widgets/detals_selection.dart';


class DetailsScreen extends StatefulWidget {
  DetailsScreen({Key? key, required this.pokemonName}) : super(key: key);
  final String pokemonName;
  late Pokemon pokemon;

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {


  late bool liked;
  late Pokemon pokemon;

  @override
  void initState() {
    liked = Favs.contains(widget.pokemonName);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Pokemon>(
      future: ApiService.pokeApiHandler.getPokemon(widget.pokemonName),
      builder: (context, future) {
        if (future.connectionState != ConnectionState.done) {
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                "Pokedex",
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    setState(() {
                    });
                  },
                  icon: liked ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ) : const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            body: const Center(
              child: SizedBox(
                height: 25,
                width: 25,
                child: CircularProgressIndicator(),
              ),
            ),
          );
        } else {
          pokemon = future.data!;
          return Scaffold(
            appBar: AppBar(
              title: const Text(
                'Pokedex',
              ),
              actions: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      Favs.addToSet(widget.pokemonName);
                      liked = true;
                    });
                  },
                  icon: liked ? const Icon(
                    Icons.favorite,
                    color: Colors.red,
                  ) : const Icon(
                    Icons.favorite_border_outlined,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            body: SafeArea(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 20,
                  right: 20,
                  top: 20,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "#${pokemon.id}",
                      style: const TextStyle(
                        fontSize: 28,
                        color: Colors.black,
                      ),
                    ),
                    Text(
                      capitalizeAllWord(
                        widget.pokemonName,
                      ),
                      style: const TextStyle(
                        fontSize: 34,
                        fontWeight: FontWeight.w500,
                        color: Colors.black,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(
                          height: 300,
                          width: 300,
                          child: Image.network(
                            '${pokemon.sprites.frontDefault}',
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                      ],
                    ),
                    DetailSelection(height: pokemon.height.toString(), weight: pokemon.weight.toString(), id: pokemon.id.toString(),),
                  ],
                ),
              ),
            ),
          );
        }
      },
    );
  }
}
