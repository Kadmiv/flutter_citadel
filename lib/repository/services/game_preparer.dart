import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/repository/services/shuffler.dart';

class GamePreparer with Shuffler implements IGamePreparer  {
  @override
  List<HeroCard> heroesCards = [];

  @override
  Future<void> prepareGame() {
    // TODO: implement prepareGame
    throw UnimplementedError();
  }

  @override
  Future<void> prepareDistrictCards() {
    // TODO: implement prepareDistrictCards
    throw UnimplementedError();
  }

  @override
  Future<void> prepareHeroesCards() {
    // TODO: implement prepareHeroesCards
    throw UnimplementedError();
  }

  @override
  Future<void> preparePlayersCards() {
    // TODO: implement preparePlayersCards
    throw UnimplementedError();
  }

  @override
  Future<void> removeExtraHeroCards() {
    // TODO: implement removeExtraHeroCards
    throw UnimplementedError();
  }
}

abstract class IGamePreparer {
  List<HeroCard> heroesCards = [];

  /// Подготовка к основной игре
  Future<void> prepareGame();

  // Прежде, чем игра начнется, удалите все дополнительные карты персонажей из игры.
  Future<void> prepareHeroesCards();

  // Перетасуйте восемь оставшихся карт персонажей и поместите их в одну колоду. Эта колода называется колодой персонажей.
  Future<void> removeExtraHeroCards();

  // Перетасуйте карты районов и сложите вместе в другую колоду. Эта колода называется колодой районов.
  Future<void> prepareDistrictCards();

  // Раздайте каждому игроку по четыре карты районов.
  // Каждый игрок получает два золота из банка.
  // Самый старший игрок получает корону.
  Future<void> preparePlayersCards();
}
