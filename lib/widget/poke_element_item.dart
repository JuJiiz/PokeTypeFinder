import 'package:flutter/material.dart';
import 'package:pokefinder/model/poke_element_model.dart';
import 'package:pokefinder/widget/hex_color.dart';

class PokeElementItem extends StatelessWidget {
  final PokeElement item;
  final Function(PokeElement)? callback;
  final bool isSelected;

  const PokeElementItem(
    this.item, {
    this.callback,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => callback?.call(item),
      child: Container(
        width: 100,
        margin: EdgeInsets.all(8.0),
        alignment: Alignment.center,
        padding: EdgeInsets.only(
          top: 8.0,
          bottom: 8.0,
        ),
        decoration: BoxDecoration(
          color: HexColor(item.colorCode),
          border: Border.all(
            width: 4.0,
            color: isSelected ? Colors.black : HexColor(item.colorCode),
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(32.0),
          ),
        ),
        child: Text(
          item.name,
          style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
