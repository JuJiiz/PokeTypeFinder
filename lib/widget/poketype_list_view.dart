import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/model/poke_type.dart';
import 'package:pokefinder/provider/provider.dart';
import 'package:pokefinder/widget/poketype_item_view.dart';

class PokeTypeListView extends ConsumerWidget {
  final Function(PokeType) onSelectPokeType;

  const PokeTypeListView({
    Key? key,
    required this.onSelectPokeType,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selector = ref.watch(typeSelectorProvider);
    return GridView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
      ),
      itemCount: selector.length,
      itemBuilder: (context, index) {
        final item = selector[index];
        return PokeTypeItemView(
          item: item.type,
          isSelected: item.isSelected,
          onSelectPokeType: onSelectPokeType,
        );
      },
    );
    /*return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: selector.length,
      itemBuilder: (context, index) {
        final item = selector[index];
        return PokeTypeItemView(
          item: item.type,
          isSelected: item.isSelected,
          onSelectPokeType: onSelectPokeType,
        );
      },
    );*/
  }
}
