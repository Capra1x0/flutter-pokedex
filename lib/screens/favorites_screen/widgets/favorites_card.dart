import 'package:flutter/material.dart';
import 'package:pokedex/handler/api_service.dart';
import 'package:pokedex/helper/helper_functions.dart';
import 'package:pokedex/model/pokemon.dart';

class FavoritesCard extends StatefulWidget {
  const FavoritesCard({Key? key, required this.favName}) : super(key: key);
  final String favName;

  @override
  State<FavoritesCard> createState() => _FavoritesCardState();
}

class _FavoritesCardState extends State<FavoritesCard> {
  late Pokemon result;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Pokemon>(
      future: ApiService.pokeApiHandler.getPokemon(widget.favName),
      builder: (context, future) {
        if (future.connectionState != ConnectionState.done) {
          return const Center(
            child: SizedBox(
              height: 25,
              width: 25,
              child: CircularProgressIndicator(),
            ),
          );
        } else {
          result = future.data!;
          return Container(
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      left: 20, top: 20, bottom: 20, right: 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '#${result.id.toString()}',
                        style: const TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Text(
                        capitalizeAllWord(widget.favName),
                        style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 22,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 190,
                  width: 190,
                  child: Image.network(
                    '${result.sprites.frontDefault}',
                    fit: BoxFit.fill,
                  ),
                ),
              ],
            ),
          );
        }
      },
    );
  }
}
