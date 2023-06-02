import 'package:flutter/material.dart';
import 'package:pokedex/handler/api_service.dart';
import 'package:pokedex/model/result.dart';
import 'package:pokedex/screens/home_screen/widgets/home_screen_drawer.dart';
import 'package:pokedex/screens/home_screen/widgets/pokemon_card.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late Result result;

  final homeKey = GlobalKey<FormState>();

  @override
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pokedex"),
      ),
      endDrawer: const HomeScreenDrawer(),
      body: Form(
        key: homeKey,
        child: Flex(
          direction: Axis.vertical,
          children: [
          Expanded(
            child: FutureBuilder<Result>(
              future:  ApiService.pokeApiHandler.getResult(),
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
                  return Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20, top: 40),
                    child: GridView.builder(
                      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemCount: result.results.length,
                      itemBuilder: (context, index) {
                        return PokemonCard(pokemonName: result.results[index].name);
                      },
                    ),
                  );
                }
              },
            ),
          ),
          ]
        ),
      ),
    );
  }
}
