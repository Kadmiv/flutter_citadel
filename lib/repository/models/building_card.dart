import 'package:flutter_citadel/repository/models/base_card.dart';
import 'package:flutter_citadel/repository/models/building_type_enum.dart';

class BuildingCard extends BaseCard {
  BuildingCard({required this.type, required super.color});

  final BuildingType type;
}
