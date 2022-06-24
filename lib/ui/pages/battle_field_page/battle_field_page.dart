import 'package:flutter/material.dart';
import 'package:flutter_citadel/ui/widgets/card_item_widget.dart';

class BattleFieldPage extends StatefulWidget {
  const BattleFieldPage({super.key});

  @override
  State<BattleFieldPage> createState() => _BattleFieldPageState();
}

class _BattleFieldPageState extends State<BattleFieldPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CardItemWidget(),
    );
  }
}
