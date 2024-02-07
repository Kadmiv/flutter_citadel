import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';

class DistrictsBoard extends StatelessWidget {
  const DistrictsBoard({super.key, required this.districts});

  final List<DistrictCard> districts;

  @override
  Widget build(BuildContext context) {
    return CupertinoScrollbar(
      // thumbVisibility: true,
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: districts.length,
          itemBuilder: (context, index) {
            var districtCard = districts[index];

            var card = Card(
              color: Colors.grey.shade400,
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
      ),
    );
  }
}
