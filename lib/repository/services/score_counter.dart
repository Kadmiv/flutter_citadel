import 'package:flutter_citadel/repository/models/player.dart';

abstract class IScoreCounter {
  //todo - все очки считаются в конце игры
  //todo - нужно отлавливать какие-то определенные иветны/условия при которых игрок получает доп. бонусы
  Map<Player, int> bonusScores = {};
  Future<void> countResults(List<Player> players);
}
