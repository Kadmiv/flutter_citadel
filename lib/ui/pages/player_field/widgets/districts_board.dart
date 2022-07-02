import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_neumorphic/flutter_neumorphic.dart';

class DistrictsBoard extends StatelessWidget {
  const DistrictsBoard({super.key, required this.districts});

  final List<DistrictCard> districts;

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: districts.length,
        itemBuilder: (context, index) {
          var districtCard = districts[index];

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
                  'assets/data/classic/districts/${districtCard.type.name}.png'),
            ),
          );

          return Padding(
            padding: const EdgeInsets.all(4),
            child: card,
          );
        },
      ),
    );
  }
}
