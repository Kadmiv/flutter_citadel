import 'package:flutter/material.dart';

import 'package:flutter_citadel/app.dart';
import 'package:flutter_citadel/repository/game_repository.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  GameRepository().init();
  runApp(const App());
}
