import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_citadel/generated/assets.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';

class DataLoader {
  Future<List<HeroCard>> loadHeroes(String filePath) async {
    final heroesCards = <HeroCard>[];
    final heroesDataString = await loadStringFromAssetFile(Assets.herouseData);
    final heroesDataList = json.decode(heroesDataString);
    for (final hero in heroesDataList) {
      // final heroCard = HeroCard.fromJson(hero);
    }
    return heroesCards;
  }

  Future<String> loadDistricts(String filePath) async {
    return rootBundle.loadString(filePath);
  }

  Future<String> loadStringFromAssetFile(String filePath) async {
    return rootBundle.loadString(filePath);
  }
}
