import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class HeroesBoard extends StatelessWidget {
  const HeroesBoard({super.key, required this.heroes});

  final List<HeroCard> heroes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: heroes.length,
      itemBuilder: (context, index) {
        var districtCard = heroes[index];

        var card = Neumorphic(
          style: NeumorphicStyle(
            shape: NeumorphicShape.concave,
            boxShape: NeumorphicBoxShape.roundRect(
              BorderRadius.circular(8),
            ),
            depth: -8,
            lightSource: LightSource.topLeft,
            color: Colors.grey,
          ),
          child: Center(
            child: Image.asset(
                'assets/data/classic/heroes/${districtCard.type.name}.png'),
          ),
        );

        return Padding(
          padding: const EdgeInsets.all(4),
          child: card,
        );
      },
    );
  }
}
