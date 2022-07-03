enum CardColor {
  none,
  violet,
  white,
  yellow,
  green,
  blue,
  red;
}

CardColor getCardColorByName(String name) {
  for (final color in CardColor.values) {
    if (color.name == name) {
      return color;
    }
  }

  return CardColor.none;
}
