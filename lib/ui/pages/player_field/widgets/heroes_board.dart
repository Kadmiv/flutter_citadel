import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';

class HeroesBoard extends StatelessWidget {
  const HeroesBoard({super.key, required this.heroes});

  final List<HeroCard> heroes;

  @override
  Widget build(BuildContext context) {
    return ListView(
      // This next line does the trick.
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 80.0,
          color: Colors.red,
        ),
        Container(
          width: 80.0,
          color: Colors.blue,
        ),
      ],
    );
  }
}
