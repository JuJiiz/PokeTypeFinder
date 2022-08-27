import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
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
    /*return ListView.builder(
      shrinkWrap: true,
      itemCount: selector.length,
      physics: NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        final item = selector[index];
        return PokeTypeItemView(
          item: item.type,
          isSelected: item.isSelected,
          onSelectPokeType: onSelectPokeType,
        );
      },
    );*/
    return StaggeredGrid.count(
      crossAxisCount: 1 +
          (MediaQuery.of(context).size.width ~/
              MediaQuery.of(context).size.height),
      children: selector
          .map((item) => PokeTypeItemView(
                item: item.type,
                isSelected: item.isSelected,
                onSelectPokeType: onSelectPokeType,
              ))
          .toList(),
    );
  }
}
