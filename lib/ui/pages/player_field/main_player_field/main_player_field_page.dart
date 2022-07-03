import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_citadel/generated/l10n.dart';
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
    viewModel.cardSelectionController.stream
        .listen((event) => _showCardSelectionDialog());
    viewModel.loadData();
  }

  @override
  Widget build(BuildContext context) {
    final tr = S.of(context);

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
        AspectRatio(
          aspectRatio: 1.3,
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
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: OutlinedButton(
                  onPressed: viewModel.onGetCardsClick,
                  child: AutoSizeText(
                    tr.getCards,
                    // style: const TextStyle(fontSize: 20),
                    minFontSize: 4,
                    maxLines: 1,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(4),
                child: OutlinedButton(
                  onPressed: viewModel.onGetCoinsClick,
                  child: AutoSizeText(
                    tr.getCoins,
                    // style: const TextStyle(fontSize: 20),
                    minFontSize: 4,
                    maxLines: 1,
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }

  //todo - Alex - need create dialog for cards selection
  void _showCardSelectionDialog() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        // title: title,
        // content: CardSelectionDialog(),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('CLOSE'),
          ),
        ],
      ),
    );
  }
}
