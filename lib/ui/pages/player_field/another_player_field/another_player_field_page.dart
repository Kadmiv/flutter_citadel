import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/another_player_field/another_player_field_block.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/created_districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/widgets/heroes_board.dart';

class AnotherPlayerFieldPage extends StatefulWidget {
  //
  const AnotherPlayerFieldPage({super.key});

  @override
  State<AnotherPlayerFieldPage> createState() => _AnotherPlayerFieldPageState();
}

class _AnotherPlayerFieldPageState extends ViewModelState<
    IAnotherPlayerFieldViewModel, AnotherPlayerFieldPage> {
  //

  @override
  void initState() {
    super.initState();

    viewModel = AnotherPlayerFieldViewModel();
    viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    //

    return Column(
      // mainAxisSize: MainAxisSize.min  ,
      children: [
        Flexible(
          flex: 2,
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
        Flexible(
          flex: 6,
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
    );
  }
}
