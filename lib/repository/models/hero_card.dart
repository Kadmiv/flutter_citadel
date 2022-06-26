import 'package:flutter_citadel/repository/models/base_card.dart';
import 'package:flutter_citadel/repository/models/card_color_enum.dart';
import 'package:flutter_citadel/repository/models/hero_type_enum.dart';

class HeroCard extends BaseCard {
  HeroCard({
    required this.type,
    required this.rank,
    required super.color,
  });

  final HeroType type;
  final int rank;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type.name;
    data['rank'] = rank;
    data['color'] = color.name;

    return data;
  }

  static HeroCard fromJson(Map<String, dynamic> json) {
    return HeroCard(
      type: getHeroTypeByName(json['type']),
      rank: json['rank'],
      color: getCardColorByName(json['color']),
    );
  }
}
