import 'dart:async';

import 'package:flutter_citadel/repository/game_repository.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/main_player_field/player_field_view_model.dart';

class CardSelectionViewModel extends ICardSelectionViewModel {
  CardSelectionViewModel() {
    districtsController = createController();
  }

  //

  final IGameRepository _gameRepository = GameRepository();

  @override
  Future<void> loadData() async {
    // _gameRepository.cardsForSelection().then((cards)=>districtsController.sink.add(cards));
  }
}

abstract class ICardSelectionViewModel extends MainViewModel{
  //
  late StreamController<List<DistrictCard>> districtsController;

  void loadData();
}
