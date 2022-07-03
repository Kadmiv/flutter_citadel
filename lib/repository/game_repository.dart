import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/repository/services/data_loader.dart';
import 'package:flutter_citadel/repository/services/game_preparer.dart';
import 'package:rxdart/rxdart.dart';

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
    // await _dataLoader.loadHeroes();
    // await _dataLoader.loadDistricts();

    anotherPlayersSubject = ReplaySubject();
    currentPlayerSubject = ReplaySubject();

    final herous = await _dataLoader.loadHeroes();
    final districts = await _dataLoader.loadDistricts();

    final currentPlayer = Player()
      ..goldenCoinCount = 1
      ..isHaveCrown = true
      ..heroesCards = [herous[0], herous[0]]
      ..districts = [districts[1], districts[2]]
      ..createdDistricts = [districts[3], districts[4]];

    currentPlayerSubject.add(currentPlayer);

    final otherPlayers = [
      Player()
        ..goldenCoinCount = 1
        ..heroesCards = [herous[1]]
        ..districts = [districts[5], districts[6]]
        ..createdDistricts = [districts[7]],
      Player()
        ..goldenCoinCount = 1
        ..heroesCards = [herous[2]]
        ..districts = [districts[8], districts[9]]
        ..createdDistricts = [districts[10]],
      Player()
        ..goldenCoinCount = 11
        ..heroesCards = [herous[3]]
        ..districts = [districts[11], districts[12]]
        ..createdDistricts = [districts[13]],
      Player()
        ..goldenCoinCount = 111
        ..heroesCards = [herous[4]]
        ..districts = [districts[14], districts[15]]
        ..createdDistricts = [districts[16]],
    ];

    anotherPlayersSubject.add(otherPlayers);
  }
}

abstract class IGameRepository {
  List<Player> _players = [];

  late final ReplaySubject<List<Player>> anotherPlayersSubject;
  late final ReplaySubject<Player> currentPlayerSubject;

  late final IGamePreparer _gamePreparer;
  late final IDataLoader _dataLoader;

  Future<void> init();
}
