import 'dart:async';

import 'package:flutter_citadel/repository/game_repository.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';

class MainPlayerFieldViewModel extends IMainPlayerFieldViewModel {
  MainPlayerFieldViewModel() {
    createdDistrictsController = createController();
    districtsController = createController();
    heroesController = createController();
    playerController = createController();
  }

  //

  final IGameRepository _gameRepository = GameRepository();
  late Player player;

  @override
  Future<void> loadData() async {
    _gameRepository.currentPlayerSubject.listen((value) {
      player = value;
      createdDistrictsController.sink.add(player.createdDistricts);
      districtsController.sink.add(player.districts);
      heroesController.sink.add(player.heroesCards);
      playerController.sink.add(player);
    });
  }
}

abstract class IMainPlayerFieldViewModel extends IPlayerFieldViewModel {
  //

  void loadData();
}

abstract class IPlayerFieldViewModel extends MainViewModel {
  //
  late StreamController<List<DistrictCard>> createdDistrictsController;
  late StreamController<List<DistrictCard>> districtsController;
  late StreamController<List<HeroCard>> heroesController;
  late StreamController<Player> playerController;

}
