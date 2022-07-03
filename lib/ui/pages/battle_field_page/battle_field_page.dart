import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';
import 'package:flutter_citadel/ui/pages/battle_field_page/battle_field_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/another_player_field/another_player_field_page.dart';
import 'package:flutter_citadel/ui/pages/player_field/main_player_field/main_player_field_page.dart';
import 'package:flutter_citadel/utils/constants.dart';
import 'package:multi_split_view/multi_split_view.dart';

class BattleFieldPage extends StatefulWidget {
  //
  const BattleFieldPage({super.key});

  @override
  State<BattleFieldPage> createState() => _BattleFieldPageState();
}

class _BattleFieldPageState
    extends ViewModelState<IBattleFieldViewModel, BattleFieldPage> {
  //

  @override
  void initState() {
    super.initState();

    viewModel = BattleFieldViewModel();
    viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSplitView(
      initialAreas: [Area(weight: 0.75)],
      children: [
        StreamBuilder<List<Player>>(
          stream: viewModel.anotherPlayersController.stream,
          initialData: [],
          builder: (context, snapshot) {
            //
            if (snapshot.data == null) {
              return SizedBox();
            }

            return GridView.count(
              crossAxisCount: 3,
              // physics: const NeverScrollableScrollPhysics(),
              childAspectRatio: kDebugMode && kCheatMode ? 0.6 : 0.9,
              children: List.generate(
                snapshot.data!.length,
                (index) {
                  final player = snapshot.data![index];

                  return Card(child: AnotherPlayerFieldPage(player: player));
                },
              ),
            );
          },
        ),
        Drawer(
          child: MainPlayerFieldPage(),
        ),
      ],
    );
  }
}
