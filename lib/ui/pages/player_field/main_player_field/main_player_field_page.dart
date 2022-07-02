import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/main_player_field/main_player_field_block.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/created_districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/heroes_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/main_player_created_districts_board.dart';

class MainPlayerFieldPage extends StatefulWidget {
  //
  const MainPlayerFieldPage({super.key});

  @override
  State<MainPlayerFieldPage> createState() => _MainPlayerFieldPageState();
}

class _MainPlayerFieldPageState
    extends ViewModelState<IMainPlayerFieldViewModel, MainPlayerFieldPage> {
  //

  @override
  void initState() {
    super.initState();

    viewModel = MainPlayerFieldViewModel();
    viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    //

    return Row(
      children: [
        Expanded(
          child: StreamBuilder<List<DistrictCard>>(
            stream: viewModel.createdDistrictsController.stream,
            initialData: [],
            builder: (context, snapshot) {
              //
              return MainPlayerCreatedDistrictsBoard(
                districts: snapshot.data ?? [],
              );
            },
          ),
        ),
        SizedBox(
          width: 400,
          height: 200,
          child: Row(
            children: [
              Flexible(
                flex: 2,
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
              // Flexible(
              //   flex: 3,
              //   child:
              // ),
            ],
          ),
        ),
        Expanded(
          child: SizedBox(
            height: 190,
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
        ),
      ],
    );
  }
}
