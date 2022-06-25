//todo - kadmiv - у этого класса есть доступ к колоде квартало
//todo - kadmiv - нужно прописать логику роботы колоды как стека - отдельный класс
class GameStepsWatcher extends IGameStepsWatcher {
  @override
  Future<void> starGameCircle() async {
    // что нужно будет проходиться по всем игрокам и его героям  - Player.heroCard
  }

  @override
  Future<void> buildDistrict() {
    // TODO: implement buildDistrict
    throw UnimplementedError();
  }

  @override
  Future<void> playerStepDecision() {
    // TODO: implement playerStepDecision
    throw UnimplementedError();
  }

  @override
  Future<void> useForce() {
    // TODO: implement useForce
    throw UnimplementedError();
  }
}

abstract class IGameStepsWatcher {
  // прохидися по всем рангам и проверяем каждого играком у кого есть герой нужного ранга
  Future<void> starGameCircle();

  // 2 варианта - взять 2 золотых либо 2 карты кварталов и выбрать 1 для себя, вторая под низ колоды
  Future<void> playerStepDecision();

  // Необязательный степ - применить супер-силу
  // todo - основная часть логики заложена на супер силы и нужно будет отслеживать разные правила на отслеживать каждый ход пердыдущего играка
  Future<void> useForce();

  // Необязательный степ - постройка квартала
  Future<void> buildDistrict();

  //todo - нужно будет как-то отлавливать от пользователя что он закончил свой ход и игра продолжается
  //todo - нужно будет сделат проверку что все играки походили и ход окончен
  //todo - проверка на окончание игры - у одного из играков должно быть 7 построек
}
