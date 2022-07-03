enum HeroType {
  assassin,
  thief,
  magician,
  king,
  bishop,
  merchant,
  architect,
  warlord;
}



HeroType getHeroTypeByName(String name) {
  for (final color in HeroType.values) {
    if (color.name == name) {
      return color;
    }
  }

  return HeroType.assassin;
}
