import 'package:flutter/material.dart';
import 'package:pokefinder/model/poke_element_model.dart';
import 'package:pokefinder/widget/poke_element_item.dart';

class TargetPokeElementView extends StatelessWidget {
  final PokeElement? primary;
  final PokeElement? secondary;

  const TargetPokeElementView({
    Key? key,
    this.primary,
    this.secondary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          margin: EdgeInsets.only(right: 32.0),
          child: Text('Target Type: '),
        ),
        if (primary != null)
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: PokeElementItem(primary!),
          ),
        if (secondary != null && secondary != primary)
          Container(
            margin: EdgeInsets.only(right: 16.0),
            child: PokeElementItem(secondary!),
          ),
      ],
    );
  }
}
