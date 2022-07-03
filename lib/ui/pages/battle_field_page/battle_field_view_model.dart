import 'dart:async';

import 'package:flutter_citadel/repository/game_repository.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';

class BattleFieldViewModel extends IBattleFieldViewModel {
  BattleFieldViewModel() {
    currentPlayerController = createController();
    anotherPlayersController = createController();
  }

  //
  final IGameRepository _gameRepository = GameRepository();

  @override
  Future<void> loadData() async {
    _gameRepository.anotherPlayersSubject
        .listen((data) => anotherPlayersController.sink.add(data));

    _gameRepository.currentPlayerSubject
        .listen((data) => currentPlayerController.sink.add(data));
  }
}

abstract class IBattleFieldViewModel extends MainViewModel {
  //
  late StreamController<List<Player>> anotherPlayersController;
  late StreamController<Player> currentPlayerController;

  void loadData();
}
