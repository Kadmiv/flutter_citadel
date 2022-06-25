import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/repository/services/game_preparer.dart';

class GameRepository extends IGameRepository {}

class IGameRepository    {
  List<Player> players = [];
  late final IGamePreparer gamePreparer;

}



