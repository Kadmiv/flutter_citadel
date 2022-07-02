import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/player_field_block.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/created_districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/heroes_board.dart';

class PlayerFieldPage extends StatefulWidget {
  //
  const PlayerFieldPage({super.key});

  @override
  State<PlayerFieldPage> createState() => _PlayerFieldPageState();
}

class _PlayerFieldPageState
    extends ViewModelState<IPlayerFieldViewModel, PlayerFieldPage> {
  //

  @override
  void initState() {
    super.initState();

    viewModel = PlayerFieldViewModel();
    viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    //

    return Column(
      mainAxisSize: MainAxisSize.min  ,
      children: [
        SizedBox(
          width: 500,
          height: 100,
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
            width: 500,
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
        ),
        SizedBox(
          height: 190,
          width: 500,
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
      ],
    );
  }
}
