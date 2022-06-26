enum HeroType {
  //todo - kadmiv - поменять порядок как на совновной карте
  none,
  architect,
  assassin,
  bishop,
  king,
  magician,
  merchant,
  thief,
  warlord;
}


HeroType getHeroTypeByName(String name) {
  for (final color in HeroType.values) {
    if (color.name == name) {
      return color;
    }
  }

  return HeroType.none;
}
