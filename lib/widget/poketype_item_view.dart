import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:pokefinder/model/poke_type.dart';

class PokeTypeItemView extends StatelessWidget {
  final PokeType item;
  final bool isSelected;
  final Function(PokeType)? onSelectPokeType;

  const PokeTypeItemView({
    required this.item,
    this.isSelected = false,
    this.onSelectPokeType,
    Key? key,
  }) : super(key: key);

  _toggleSelectPokeType() {
    onSelectPokeType?.call(item);
  }

  @override
  Widget build(BuildContext context) {
    final borderColor =
        isSelected ? Theme.of(context).backgroundColor : Color(0xFF1A1A1A);

    return InkWell(
      onTap: _toggleSelectPokeType,
      child: Container(
        margin: EdgeInsets.all(8),
        alignment: Alignment.center,
        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        decoration: BoxDecoration(
          color: item.color,
          border: Border.all(width: 4, color: borderColor),
          borderRadius: BorderRadius.all(Radius.circular(32)),
        ),
        child: AutoSizeText(
          item.name,
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
          maxLines: 1,
        ),
      ),
    );
  }
}
