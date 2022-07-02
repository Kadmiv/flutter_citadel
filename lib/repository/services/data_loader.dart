import 'dart:convert';

import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter_citadel/generated/assets.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';

class DataLoader extends IDataLoader {
  factory DataLoader() {
    return _instance;
  }

  DataLoader._internal();

  static final DataLoader _instance = DataLoader._internal();

  @override
  Future<List<HeroCard>> loadHeroes() async {
    final heroesCards = <HeroCard>[];
    final heroesDataString = await loadStringFromAssetFile(Assets.heroesData);
    final heroesDataList = json.decode(heroesDataString);

    for (final hero in heroesDataList) {
      final heroCard = HeroCard.fromJson(hero);
      heroesCards.add(heroCard);
    }

    return heroesCards;
  }

  @override
  Future<List<DistrictCard>> loadDistricts() async {
    final districtsCards = <DistrictCard>[];
    final districtsDataString =
        await loadStringFromAssetFile(Assets.districtsData);
    final districtsDataList = json.decode(districtsDataString);

    for (final district in districtsDataList) {
      final districtCard = DistrictCard.fromJson(district);
      districtsCards.add(districtCard);
    }

    return districtsCards;
  }

  @override
  Future<String> loadStringFromAssetFile(String filePath) async {
    return rootBundle.loadString(filePath);
  }
}

abstract class IDataLoader {
  Future<List<HeroCard>> loadHeroes();

  Future<List<DistrictCard>> loadDistricts();

  Future<String> loadStringFromAssetFile(String filePath);
}
