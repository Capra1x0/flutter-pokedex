import 'package:flutter/material.dart';
import 'package:pokedex/screens/details_screen/widgets/stats_text.dart';

class DetailsAbount extends StatelessWidget {
  const DetailsAbount({Key? key, required this.height, required this.weight, required this.id}) : super(key: key);
  final String height;
  final String weight;
  final String id;

  @override
  Widget build(BuildContext context) {

    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Pokedex Data",
                style: TextStyle(
                  fontSize: 26,
                  color: Colors.green,
                  fontWeight: FontWeight.w500
                ),
              ),
            ],
          ),
          const SizedBox(height: 10,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const StatsText(text: 'Height'),
              StatsText(text: "$height cm",),
            ],
          ),
          const SizedBox(height: 5,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const StatsText(text: 'Weight'),
              StatsText(text: '$weight lbs',),
            ],
          ),
        ],
      ),
    );
  }
}
