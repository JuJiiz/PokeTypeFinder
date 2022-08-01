import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/provider/provider.dart';
import 'package:pokefinder/widget/poketype_effective_item_view.dart';

class PokeTypeEffectiveView extends ConsumerWidget {
  const PokeTypeEffectiveView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final effective = ref.watch(poketypeDamageResultProvider);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        if (effective.megaEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x4',
              effective.megaEffective,
            ),
          ),
        if (effective.superEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x2',
              effective.superEffective,
            ),
          ),
        if (effective.normalEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x1',
              effective.normalEffective,
            ),
          ),
        if (effective.notVeryEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x0.5',
              effective.notVeryEffective,
            ),
          ),
        if (effective.slightlyEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x0.25',
              effective.slightlyEffective,
            ),
          ),
        if (effective.noEffective.isNotEmpty)
          Flexible(
            flex: 1,
            child: PokeTypeEffectiveItemView(
              'x0',
              effective.noEffective,
            ),
          ),
      ],
    );
  }
}
