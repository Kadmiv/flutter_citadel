import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/repository/services/data_loader.dart';
import 'package:flutter_citadel/repository/services/game_preparer.dart';

class GameRepository extends IGameRepository {
  factory GameRepository() {
    return _instance;
  }

  GameRepository._internal();

  static final GameRepository _instance = GameRepository._internal();

  @override
  Future<void> init() async {
    _gamePreparer = GamePreparer();

    _dataLoader = DataLoader();
    await _dataLoader.loadHeroes();
    await _dataLoader.loadDistricts();
  }

  @override
  Future<Player> getCurrentPlayer() async {
    var _dataLoader = DataLoader();
    var herous = await _dataLoader.loadHeroes();
    var districts = await _dataLoader.loadDistricts();

    Player player = Player()
      ..heroesCards = [herous.first]
      ..districts = districts
      ..createdDistricts = [districts[1], districts[2]];

    return player;
  }
}

abstract class IGameRepository {
  List<Player> players = [];
  late final IGamePreparer _gamePreparer;
  late final IDataLoader _dataLoader;

  Future<void> init();

  Future<Player> getCurrentPlayer();
}
