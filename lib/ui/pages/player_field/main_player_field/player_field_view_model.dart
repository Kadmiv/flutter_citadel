import 'dart:async';

import 'package:flutter_citadel/repository/game_repository.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/base/base_player_field_view_model.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';

class MainPlayerFieldViewModel extends IMainPlayerFieldViewModel {
  MainPlayerFieldViewModel() {
    createdDistrictsController = createController();
    districtsController = createController();
    heroesController = createController();
    playerController = createController();
    cardSelectionController = createController();
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

  @override
  void onGetCardsClick() {
    // _gameRepository.onGetCardsPlayerClick();
    cardSelectionController.sink.add(true);
  }

  @override
  void onGetCoinsClick() {
    // _gameRepository.onGetCoinsPlayerClick();
  }
}

abstract class IMainPlayerFieldViewModel extends IPlayerFieldViewModel {
  //
  late StreamController<dynamic> cardSelectionController;

  void loadData();

  void onGetCardsClick();

  void onGetCoinsClick();
}

