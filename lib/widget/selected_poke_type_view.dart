import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/model/poke_type.dart';
import 'package:pokefinder/provider/provider.dart';
import 'package:pokefinder/widget/poketype_item_view.dart';

class SelectedPokeTypeView extends ConsumerWidget {
  const SelectedPokeTypeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(selectedTypeProvider);
    PokeType? primary;
    PokeType? secondary;
    if (selected.isNotEmpty) {
      primary = selected.first;
      if (selected.length > 1) {
        secondary = selected[1];
      }
    }

    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 32),
          child: Text('Selected: '),
        ),
        if (primary != null)
          Container(
            margin: EdgeInsets.only(right: 16),
            child: PokeTypeItemView(item: primary),
          ),
        if (secondary != null)
          Container(
            margin: EdgeInsets.only(right: 16),
            child: PokeTypeItemView(item: secondary),
          ),
      ],
    );
  }
}
