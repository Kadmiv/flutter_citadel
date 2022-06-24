import 'package:flutter_citadel/repository/models/building_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';

class Player {
  Player({
    required this.number,
    required this.heroCard,
    this.isHaveCrown = false,
  });

  int number = 0;
  int goldenCoinCount = 0;
  bool isHaveCrown;

  HeroCard heroCard;
  List<BuildingCard> buildings = [];
}
