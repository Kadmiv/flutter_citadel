import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_citadel/generated/assets.dart';
import 'package:flutter_citadel/generated/l10n.dart';
import 'package:flutter_citadel/repository/models/player.dart';
import 'package:flutter_citadel/ui/pages/player_field/base/widgets/heroes_board.dart';
import 'package:flutter_svg/flutter_svg.dart';

class PlayerMainInfoBoard extends StatelessWidget {
  const PlayerMainInfoBoard({required this.player, super.key});

  final Player player;

  @override
  Widget build(BuildContext context) {
    final tr = S.of(context);

    return Row(
      children: [
        Flexible(
          child: HeroesBoard(
            heroes: player.heroesCards,
          ),
        ),
        AspectRatio(
          aspectRatio: 0.7,
          child: Column(
            children: [
              Row(
                children: [
                  Flexible(
                    flex: 3,
                    child: Image.asset(
                      Assets.iconsCoin,
                    ),
                  ),
                  Flexible(
                    flex: 6,
                    child: AutoSizeText(
                      tr.playerCoins(player.goldenCoinCount),
                      // style:  TextStyle(fontSize: 30),
                      minFontSize: 4,
                      maxFontSize: 30,
                      maxLines: 1,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(4),
          child: AspectRatio(
            aspectRatio: 1,
            child: Column(
              children: [
                Stack(
                  children: [
                    AspectRatio(
                      aspectRatio: 1.3,
                      child: CircleAvatar(
                        backgroundColor: Colors.brown.shade800,
                        child: Image.asset(Assets.iconsAvatarExample),
                      ),
                    ),
                    Visibility(
                      visible: player.isHaveCrown,
                      child: AspectRatio(
                        aspectRatio: 3.2,
                        child: Row(
                          children: [
                            Container(
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(100),
                                ),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(2),
                                child: Image.asset(
                                  Assets.iconsCrow,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: AutoSizeText(
                    player.nickName,
                    // style: const TextStyle(fontSize: 20),
                    minFontSize: 4,
                    maxLines: 2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
