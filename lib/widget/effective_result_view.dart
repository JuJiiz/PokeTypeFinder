import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/provider/provider.dart';
import 'package:pokefinder/widget/poketype_effective_view.dart';

class EffectiveResultView extends ConsumerWidget {
  const EffectiveResultView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedTypeProvider);
    if (selected != null) {
      return const PokeTypeEffectiveView();
    } else {
      return Container(
        child: Center(
          child: Text(
            'No any type is selected',
            style: TextStyle(fontSize: 24),
          ),
        ),
      );
    }
  }
}
