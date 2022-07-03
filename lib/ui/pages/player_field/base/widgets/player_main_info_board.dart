import 'package:flutter/widgets.dart';
import 'package:flutter_citadel/generated/assets.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/heroes_board.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayerMainInfoBoard extends StatelessWidget {
  const PlayerMainInfoBoard({required this.player, super.key});

  final Player player;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: HeroesBoard(
            heroes: player?.heroesCards ?? [],
          ),
        ),
        Expanded(
          child: Column(
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    Assets.iconsCoin,
                    height: 20,
                    width: 20,
                  ),
                  Text(' x ${player.goldenCoinCount}'),
                ],
              ),
              Row(
                children: [
                  Visibility(
                    visible: player.isHaveCrown,
                    child: SvgPicture.asset(
                      Assets.iconsCrow,
                      height: 40,
                      width: 40,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
