
import 'dart:async';

import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';

abstract class IPlayerFieldViewModel extends MainViewModel {
  //
  late StreamController<List<DistrictCard>> createdDistrictsController;
  late StreamController<List<DistrictCard>> districtsController;
  late StreamController<List<HeroCard>> heroesController;
  late StreamController<Player> playerController;
}