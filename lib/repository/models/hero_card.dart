import 'package:flutter_citadel/repository/models/base_card.dart';
import 'package:flutter_citadel/repository/models/hero_type_enum.dart';

class HeroCard extends BaseCard {
  HeroCard({required this.type, required super.color});

  final HeroType type;
}
