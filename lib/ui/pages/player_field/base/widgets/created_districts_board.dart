import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';

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
          var card =  Card(
            color: Colors.grey.shade400,
            child: const SizedBox(),
          );

          if (index < districts.length) {
            var districtCard = districts[index];

            card = Card(
              color: Colors.grey.shade400,
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
