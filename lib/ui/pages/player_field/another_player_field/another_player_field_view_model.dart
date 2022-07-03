import 'dart:async';

import 'package:flutter_citadel/repository/game_repository.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/player_field/main_player_field/player_field_view_model.dart';

class AnotherPlayerFieldViewModel extends IAnotherPlayerFieldViewModel {
  AnotherPlayerFieldViewModel() {
    playerController = createController();
    createdDistrictsController = createController();
    districtsController = createController();
    heroesController = createController();
  }

  //

  final IGameRepository _gameRepository = GameRepository();
  late Player _player;

  @override
  Future<void> loadData(Player player) async {
    _player = player;

    playerController.sink.add(_player);
    createdDistrictsController.sink.add(_player.createdDistricts);
    districtsController.sink.add(_player.districts);
    heroesController.sink.add(_player.heroesCards);
  }
}

abstract class IAnotherPlayerFieldViewModel extends IPlayerFieldViewModel {
  //

  void loadData(Player player);
}
