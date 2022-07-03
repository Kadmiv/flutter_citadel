import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/created_districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/player_main_info_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/main_player_field/player_field_view_model.dart';

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
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AspectRatio(
          aspectRatio: 3,
          child: StreamBuilder<Player>(
            stream: viewModel.playerController.stream,
            initialData: null,
            builder: (context, snapshot) {
              //
              if (snapshot.data == null) {
                return const SizedBox();
              }

              return PlayerMainInfoBoard(player: snapshot.data!);
            },
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
    );
  }
}
