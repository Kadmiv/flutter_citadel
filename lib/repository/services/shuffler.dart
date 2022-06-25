import 'package:flutter_citadel/repository/models/base_card.dart';

mixin Shuffler implements IShuffler {
  @override
  Future<List<BaseCard>> shuffle(List<BaseCard> cards) {
    // TODO: implement shuffle
    throw cards;
  }
}

abstract class IShuffler {
  Future<List<BaseCard>> shuffle(List<BaseCard> cards);
}
