enum BuildingType {
  none,
  battlefield,
  castle,
  cathedral,
  church,
  docks,
  dragongate,
  fortress,
  graveyard,
  greatwall,
  harbor,
  hauntedcity,
  keep,
  laboratory,
  library,
  manor,
  market,
  monastery,
  observatory,
  palace,
  prison,
  schoolofmagic,
  smithy,
  tavern,
  temple,
  townhall,
  tradingpost,
  university,
  watchtower;
}


BuildingType getBuildingTypeByName(String name) {
  for (final color in BuildingType.values) {
    if (color.name == name) {
      return color;
    }
  }

  return BuildingType.none;
}
