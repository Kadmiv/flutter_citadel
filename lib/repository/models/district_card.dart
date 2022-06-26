import 'package:flutter_citadel/repository/models/base_card.dart';
import 'package:flutter_citadel/repository/models/card_color_enum.dart';
import 'package:flutter_citadel/repository/models/district_type_enum.dart';

class DistrictCard extends BaseCard {
  DistrictCard({
    required this.type,
    required this.price,
    required super.color,
    this.additionalPrice = 0,
  });

  final BuildingType type;
  int price;
  int additionalPrice;

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['type'] = type.name;
    data['price'] = price;
    data['additionalPrice'] = additionalPrice;
    data['color'] = color.name;

    return data;
  }

  static DistrictCard fromJson(Map<String, dynamic> json) {
    return DistrictCard(
      type: getBuildingTypeByName(json['type']),
      price: json['price'],
      additionalPrice: json['additionalPrice'],
      color: getCardColorByName(json['color']),
    );
  }
}
