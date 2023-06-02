import 'dart:async';

import 'package:flutter/material.dart';
import 'package:pokedex/handler/api_service.dart';
import 'package:pokedex/helper/favorites_set.dart';
import 'package:pokedex/helper/helper_functions.dart';
import 'package:pokedex/model/pokemon.dart';
import 'package:pokedex/screens/details_screen/details_screen.dart';

class PokemonCard extends StatefulWidget {
  PokemonCard({super.key, required this.pokemonName});
  final String pokemonName;

  @override
  State<PokemonCard> createState() => _PokemonCardState();
}

class _PokemonCardState extends State<PokemonCard> {
  int id = 1;
  late Pokemon result;

  void refreshData() {
    id++;
  }

  FutureOr onGoBack(dynamic value) {
    refreshData();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Pokemon>(
      future: ApiService.pokeApiHandler.getPokemon(widget.pokemonName),
      builder: (context, future) {
        if(future.connectionState != ConnectionState.done) {
          return Container();
        } else {
          result = future.data!;
          return InkWell(
            onTap: () {
              //Navigator.push(context, MaterialPageRoute(builder: (context) => DetailsScreen(pokemonName: widget.pokemonName,)));
              Route route = MaterialPageRoute(builder: (context) => DetailsScreen(pokemonName: widget.pokemonName));
              Navigator.push(context, route).then(onGoBack);
            },
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.blue,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 20, left: 15, right: 15),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          capitalizeAllWord(widget.pokemonName),
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.w500
                          ),
                        ),
                        Favs.contains(widget.pokemonName) ? Icon(Icons.star, color: Colors.amber,) : Container(),
                      ],
                    ),
                    Image.network(
                      '${result.sprites.frontDefault}'
                    ),
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
