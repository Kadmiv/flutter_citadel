import 'package:flutter/material.dart';
import 'package:flutter_citadel/generated/assets.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class CreatedDistrictsBoard extends StatelessWidget {
  const CreatedDistrictsBoard({required this.districts, super.key});

  final List<DistrictCard> districts;

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      physics: const NeverScrollableScrollPhysics(),
      childAspectRatio: 3 / 4.5,
      children: List.generate(
        8,
        (index) {
          var card = Neumorphic(
            style: NeumorphicStyle(
              shape: NeumorphicShape.concave,
              boxShape: NeumorphicBoxShape.roundRect(
                BorderRadius.circular(12),
              ),
              depth: -8,
              lightSource: LightSource.topLeft,
              color: Colors.grey,
            ),
          );

          if (index < districts.length) {
            var districtCard = districts[index];

            card = Neumorphic(
              style: NeumorphicStyle(
                shape: NeumorphicShape.concave,
                boxShape: NeumorphicBoxShape.roundRect(
                  BorderRadius.circular(12),
                ),
                depth: -8,
                lightSource: LightSource.topLeft,
                color: Colors.grey,
              ),
              child: Center(
                child: Image.asset(
                    'assets/data/classic/districts/${districtCard.type.name}.png'),
              ),
            );
          }

          return Padding(
            padding: const EdgeInsets.all(4),
            child: card,
          );
        },
      ),
    );
  }
}
