import 'package:flutter/material.dart';
import 'package:pokefinder/element_calculator.dart';
import 'package:pokefinder/model/all_poke_element.dart';
import 'package:pokefinder/model/poke_damage_element.dart';
import 'package:pokefinder/model/poke_element_model.dart';
import 'package:pokefinder/widget/poke_element_by_effective.dart';
import 'package:pokefinder/widget/target_poke_element_view.dart';

class FixedPokeElementPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _FixedPokeElementPageState();
}

class _FixedPokeElementPageState extends State<FixedPokeElementPage> {
  final PokeElement primary = Bug;
  final PokeElement? secondary = Steel;

  PokeDamageElement effective = PokeDamageElement.getDefault();

  @override
  void initState() {
    super.initState();
    effective = ElementCalculator.findTheMostEffectiveAttackByEnemyType(
      primary: primary,
      secondary: secondary,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Container(
        padding: EdgeInsets.all(16.0),
        color: Colors.white,
        child: Column(
          children: [
            TargetPokeElementView(
              primary: primary,
              secondary: secondary,
            ),
            Container(
              margin: EdgeInsets.all(16.0),
              child: Divider(color: Colors.red),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                if (effective.megaEffective.isNotEmpty)
                  Flexible(
                    flex: 1,
                    child: PokeElementByEffectiveView(
                      'x4',
                      effective.megaEffective,
                    ),
                  ),
                if (effective.superEffective.isNotEmpty)
                  Flexible(
                    flex: 1,
                    child: PokeElementByEffectiveView(
                      'x2',
                      effective.superEffective,
                    ),
                  ),
                if (effective.normalEffective.isNotEmpty)
                  Flexible(
                    flex: 1,
                    child: PokeElementByEffectiveView(
                      'x1',
                      effective.normalEffective,
                    ),
                  ),
                if (effective.notVeryEffective.isNotEmpty)
                  Flexible(
                    flex: 1,
                    child: PokeElementByEffectiveView(
                      'x0.5',
                      effective.notVeryEffective,
                    ),
                  ),
                if (effective.slightlyEffective.isNotEmpty)
                  Flexible(
                    flex: 1,
                    child: PokeElementByEffectiveView(
                      'x0.25',
                      effective.slightlyEffective,
                    ),
                  ),
                if (effective.noEffective.isNotEmpty)
                  Flexible(
                    flex: 1,
                    child: PokeElementByEffectiveView(
                      'x0',
                      effective.noEffective,
                    ),
                  ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
