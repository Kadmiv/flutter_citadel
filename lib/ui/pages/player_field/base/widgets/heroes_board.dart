import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';

class HeroesBoard extends StatelessWidget {
  const HeroesBoard({
    required this.heroes,
    super.key,
  });

  final List<HeroCard> heroes;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: heroes.length,
      itemBuilder: (context, index) {
        final heroCard = heroes[index];

        final card = Card(
          color: Colors.grey.shade400,
          child: Center(
            child: Image.asset(
                'assets/data/classic/heroes/${heroCard.type.name}.png'),
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
