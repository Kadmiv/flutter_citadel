import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/repository/models/district_card.dart';
import 'package:flutter_citadel/repository/models/hero_card.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/base/base_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/another_player_field/another_player_field_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/card_selection/card_selection_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/main_player_field/player_field_view_model.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/created_districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/districts_board.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/player_main_info_board.dart';

import 'package:flutter_citadel/utils/constants.dart';

class CardSelectionPage extends StatefulWidget {
  //
  const CardSelectionPage({
    required this.player,
    super.key,
  });

  final Player player;

  @override
  State<CardSelectionPage> createState() => _CardSelectionPageState();
}

class _CardSelectionPageState
    extends ViewModelState<ICardSelectionViewModel, CardSelectionPage> {
  //

  @override
  void initState() {
    super.initState();

    viewModel = CardSelectionViewModel();
    viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    //
    return AspectRatio(
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
    );
  }
}
