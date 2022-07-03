import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/another_player_field/another_player_field_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/main_player_field/player_field_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/created_districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/player_main_info_board.dart';

import 'package:flutter_citadel/utils/constants.dart';

class AnotherPlayerFieldPage extends StatefulWidget {
  //
  const AnotherPlayerFieldPage({
    required this.player,
    super.key,
  });

  final Player player;

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
    viewModel.loadData(widget.player);
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
        Visibility(
          visible: kDebugMode && kCheatMode,
          child: AspectRatio(
            aspectRatio: 2,
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
