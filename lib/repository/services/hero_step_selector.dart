

class HeroStepSelector extends IHeroStepSelector{
  @override
  Future<void> startSelection() {
    // TODO: implement starGame
    throw UnimplementedError();
  }

  @override
  Future<void> checkOutHeroes() {
    // TODO: implement checkOutHeroes
    throw UnimplementedError();
  }

  @override
  Future<void> heroSelection() {
    // TODO: implement heroSelection
    throw UnimplementedError();
  }


}

// отвечае за ход игры
abstract class IHeroStepSelector {

  Future<void> startSelection();

  // Step 1 - отсеиваем героев в открытую и закрытую (это только короля)  -// todo - Alex - нужно прописать как будут отсеиваться
  Future<void> checkOutHeroes();

  // Step 2 ( для каждого игрока) - выбор героя играком
  Future<void> heroSelection();


}