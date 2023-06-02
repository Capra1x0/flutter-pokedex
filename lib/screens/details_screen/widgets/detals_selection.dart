import 'package:flutter/material.dart';
import 'package:pokedex/screens/details_screen/widgets/details_about.dart';

class DetailSelection extends StatefulWidget {
  const DetailSelection({Key? key, required this.height, required this.weight, required this.id}) : super(key: key);
  final String height;
  final String weight;
  final String id;

  @override
  State<DetailSelection> createState() => _DetailSelectionState();
}

class _DetailSelectionState extends State<DetailSelection> {

  int selected = 1;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20, right: 20),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 1;
                  });
                },
                child: Text(
                    'About',
                  style: TextStyle(
                    fontSize: selected == 1 ? 24 : 20,
                    fontWeight: selected == 1 ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 2;
                  });
                },
                child: Text(
                  'Base Stats',
                  style: TextStyle(
                    fontSize: selected == 2 ? 24 : 20,
                    fontWeight: selected == 2 ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 3;
                  });
                },
                child: Text(
                  'Evolutions',
                  style: TextStyle(
                    fontSize: selected == 3 ? 24 : 20,
                    fontWeight: selected == 3 ? FontWeight.w600 : FontWeight.w400,
                  ),
                ),
              ),
            ],
          ),
          selected == 1 ? DetailsAbount(height: widget.height, weight: widget.weight,id: widget.id,) : const Padding(
            padding: EdgeInsets.only(top: 40),
            child: CircularProgressIndicator(),
          )
        ],
      ),
    );
  }
}
