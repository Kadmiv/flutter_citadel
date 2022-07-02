import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';
import 'package:flutter_citadel/ui/pages/chat_page/chat_page.dart';
import 'package:flutter_citadel/ui/pages/player_field/another_player_field/another_player_field_block.dart';
import 'package:flutter_citadel/ui/pages/player_field/another_player_field/another_player_field_page.dart';
import 'package:flutter_citadel/ui/pages/player_field/main_player_field/main_player_field_block.dart';
import 'package:flutter_citadel/ui/pages/player_field/main_player_field/main_player_field_page.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/created_districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/heroes_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/main_player_created_districts_board.dart';
import 'package:flutter_citadel/ui/widgets/card_item_widget.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:multi_split_view/multi_split_view.dart';

class BattleFieldPage extends StatefulWidget {
  //
  const BattleFieldPage({super.key});

  @override
  State<BattleFieldPage> createState() => _BattleFieldPageState();
}

class _BattleFieldPageState
    extends ViewModelState<IMainPlayerFieldViewModel, BattleFieldPage> {
  //

  @override
  void initState() {
    super.initState();

    viewModel = MainPlayerFieldViewModel();
    viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    return MultiSplitView(
      children: [
        GridView.count(
          crossAxisCount: 3,
          // physics: const NeverScrollableScrollPhysics(),
          children: List.generate(
            6,
            (index) {
              return AnotherPlayerFieldPage();
            },
          ),
        ),
        Drawer(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              AspectRatio(
                aspectRatio: 2.7,
                child: Row(
                  children: [
                    Flexible(
                      child: StreamBuilder<List<HeroCard>>(
                        stream: viewModel.heroesController.stream,
                        initialData: [],
                        builder: (context, snapshot) {
                          //
                          return HeroesBoard(
                            heroes: snapshot.data ?? [],
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ),
              AspectRatio(
                aspectRatio: 2.0,
                child: StreamBuilder<List<DistrictCard>>(
                  stream: viewModel.districtsController.stream,
                  initialData: [],
                  builder: (context, snapshot) {
                    //
                    return DistrictsBoard(
                      districts: snapshot.data ?? [],
                    );
                  },
                ),
              ),
              Flexible(
                flex: 8,
                child: StreamBuilder<List<DistrictCard>>(
                  stream: viewModel.createdDistrictsController.stream,
                  initialData: [],
                  builder: (context, snapshot) {
                    //
                    return CreatedDistrictsBoard(
                      districts: snapshot.data ?? [],
                    );
                  },
                ),
              ),

            ],
          ),
        ),
      ],
      // resizable: false,
      initialAreas: [Area(weight: 0.75)],
    );
  }
}
