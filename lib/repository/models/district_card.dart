import 'package:flutter_citadel/repository/models/base_card.dart';
import 'package:flutter_citadel/repository/models/district_type_enum.dart';

class DistrictCard extends BaseCard {
  DistrictCard({
    required this.type,
    required super.color,
    this.price = 0,
  });

  final BuildingType type;
  int price;
}
