import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/provider/provider.dart';
import 'package:pokefinder/widget/poketype_effective_item_view.dart';

class PokeTypeEffectiveView extends ConsumerWidget {
  const PokeTypeEffectiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final effective = ref.watch(effectiveTypeResultProvider);
    final megaEffective = effective.megaEffective;
    final superEffective = effective.superEffective;
    final normalEffective = effective.normalEffective;
    final notVeryEffective = effective.notVeryEffective;
    final slightlyEffective = effective.slightlyEffective;
    final noEffective = effective.noEffective;
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (megaEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x4',
              megaEffective,
            ),
          ),
        if (superEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x2',
              superEffective,
            ),
          ),
        /*if (normalEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x1',
              normalEffective,
            ),
          ),*/
        if (notVeryEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x0.5',
              notVeryEffective,
            ),
          ),
        if (slightlyEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x0.25',
              slightlyEffective,
            ),
          ),
        if (noEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x0',
              noEffective,
            ),
          ),
      ],
    );
  }
}
