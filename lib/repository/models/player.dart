import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';

class Player {
  Player({
    required this.playerTurn,
    required this.heroCard,
    this.isHaveCrown = false,
  });

  int playerTurn = 0;
  int goldenCoinCount = 0;
  // todo - 2 вида игры - когда один игрок ведет игру и он постоянно король - и второй вариант, как в правилах
  bool isHaveCrown;

  // в зависимости от количества играков - игрок может играть за разное количество героев (максимум 2 героя )
  List<HeroCard> heroCard;
  // todo -  8 и игра заканчивается
  List<DistrictCard> buildings = [];
}
