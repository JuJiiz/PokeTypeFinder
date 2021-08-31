import 'package:flutter/material.dart';
import 'package:pokefinder/model/poke_element_model.dart';
import 'package:pokefinder/widget/poke_element_item.dart';

class PokeElementByEffectiveView extends StatelessWidget {
  final String name;
  final List<PokeElement> items;

  const PokeElementByEffectiveView(this.name, this.items, {Key? key})
      : super(key: key);

  List<PokeElementItem> _initEffectiveItems(List<PokeElement> elements) {
    return elements.map((e) => PokeElementItem(e)).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(name, style: TextStyle(fontSize: 20.0)),
        Wrap(
          alignment: WrapAlignment.center,
          children: _initEffectiveItems(items),
        ),
      ],
    );
  }
}
