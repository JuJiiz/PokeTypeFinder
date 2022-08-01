import 'package:flutter/material.dart';
import 'package:pokefinder/model/poke_type.dart';
import 'package:pokefinder/widget/poketype_item_view.dart';

class PokeTypeEffectiveItemView extends StatelessWidget {
  final String name;
  final List<PokeType> items;

  const PokeTypeEffectiveItemView(this.name, this.items, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),
        ),
        Wrap(
          alignment: WrapAlignment.center,
          children: items.map((e) => PokeTypeItemView(item: e)).toList(),
        ),
      ],
    );
  }
}
