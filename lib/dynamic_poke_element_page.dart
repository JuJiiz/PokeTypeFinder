import 'package:flutter/material.dart';
import 'package:pokefinder/element_calculator.dart';
import 'package:pokefinder/model/poke_damage_element.dart';
import 'package:pokefinder/model/poke_element_model.dart';
import 'package:pokefinder/model/selected_poke_element.dart';
import 'package:pokefinder/widget/poke_element_by_effective.dart';
import 'package:pokefinder/widget/poke_element_item.dart';
import 'package:rxdart/rxdart.dart';
import 'package:rxdart/subjects.dart';

class DynamicPokeElementPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _DynamicPokeElementPageState();
}

class _DynamicPokeElementPageState extends State<DynamicPokeElementPage> {
  final BehaviorSubject<List<PokeElementItem>> forSelectPrimaryItem =
      BehaviorSubject.seeded([]);
  final BehaviorSubject<List<PokeElementItem>> forSelectSecondaryItem =
      BehaviorSubject.seeded([]);

  final BehaviorSubject<SelectedPokeElement> streamInput = BehaviorSubject();
  final BehaviorSubject<PokeElement> streamPrimaryInput = BehaviorSubject();
  final BehaviorSubject<PokeElement?> streamSecondaryInput =
      BehaviorSubject.seeded(null);
  final BehaviorSubject<PokeDamageElement> streamOutput =
      BehaviorSubject.seeded(PokeDamageElement.getDefault());

  @override
  void initState() {
    super.initState();

    _initSelectedAllPokeTypes();

    Rx.combineLatest2(
      streamPrimaryInput,
      streamSecondaryInput,
      (PokeElement primary, PokeElement? secondary) =>
          SelectedPokeElement(primary: primary, secondary: secondary),
    ).listen((SelectedPokeElement selected) {
      streamInput.sink.add(selected);

      PokeDamageElement output =
          ElementCalculator.findTheMostEffectiveAttackByEnemyType(
        primary: selected.primary,
        secondary: selected.secondary,
      );
      streamOutput.sink.add(output);
    });
  }

  _updateSelectedPrimaryPokeType(PokeElement selected) {
    streamPrimaryInput.sink.add(selected);

    List<PokeElementItem> items = forSelectPrimaryItem.value;
    List<PokeElementItem> updated = items
        .map((element) => PokeElementItem(
              element.item,
              callback: element.callback,
              isSelected: element.item == selected,
            ))
        .toList();
    forSelectPrimaryItem.sink.add(updated);
  }

  _updateSelectedSecondaryPokeType(PokeElement selected) {
    PokeElement? current = streamSecondaryInput.valueOrNull;
    if (current == selected) {
      streamSecondaryInput.sink.add(null);
    } else {
      streamSecondaryInput.sink.add(selected);
    }

    List<PokeElementItem> items = forSelectSecondaryItem.value;
    List<PokeElementItem> updated = items
        .map((element) => PokeElementItem(
              element.item,
              callback: element.callback,
              isSelected: element.item == selected && current != selected,
            ))
        .toList();
    forSelectSecondaryItem.sink.add(updated);
  }

  _initSelectedAllPokeTypes() {
    List<PokeElementItem> primary = [];
    List<PokeElementItem> secondary = [];
    ElementCalculator.allElements.forEach((element) {
      primary.add(PokeElementItem(
        element,
        callback: (selected) => _updateSelectedPrimaryPokeType(selected),
      ));

      secondary.add(PokeElementItem(
        element,
        callback: (selected) => _updateSelectedSecondaryPokeType(selected),
      ));
    });
    forSelectPrimaryItem.sink.add(primary);
    forSelectSecondaryItem.sink.add(secondary);
  }

  @override
  void dispose() {
    forSelectPrimaryItem.close();
    forSelectSecondaryItem.close();
    streamInput.close();
    streamPrimaryInput.close();
    streamSecondaryInput.close();
    streamOutput.close();
    super.dispose();
  }

  showAllTypesBottomSheet(
    BuildContext context,
    String title,
    List<PokeElementItem> types,
  ) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Container(
          color: Colors.white,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Container(
                width: double.infinity,
                color: Colors.red,
                padding: EdgeInsets.all(8),
                child: Text(
                  title,
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
              Expanded(
                child: Container(
                  child: ListView.builder(
                      itemCount: types.length,
                      itemBuilder: (context, index) => types[index]),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          color: Colors.white,
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('Select primary type: '),
                        StreamBuilder(
                          stream: forSelectPrimaryItem.stream,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<List<PokeElementItem>> snapshot,
                          ) =>
                              Wrap(
                            alignment: WrapAlignment.center,
                            children: snapshot.data ?? [],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(margin: EdgeInsets.all(16.0)),
                  Flexible(
                    flex: 1,
                    child: Column(
                      children: [
                        Text('Select secondary type: '),
                        StreamBuilder(
                          stream: forSelectSecondaryItem.stream,
                          builder: (
                            BuildContext context,
                            AsyncSnapshot<List<PokeElementItem>> snapshot,
                          ) =>
                              Wrap(
                            alignment: WrapAlignment.center,
                            children: snapshot.data ?? [],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(16.0),
                    child: Divider(color: Colors.red),
                  ),
                  Text('Damage taken:'),
                  StreamBuilder(
                    stream: streamOutput.stream,
                    builder: (
                      BuildContext context,
                      AsyncSnapshot<PokeDamageElement> snapshot,
                    ) {
                      PokeDamageElement? effective = snapshot.data;
                      if (effective != null) {
                        return Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            if (effective.megaEffective.isNotEmpty)
                              Flexible(
                                flex: 1,
                                child: PokeElementByEffectiveView(
                                  'x4',
                                  effective.megaEffective,
                                ),
                              ),
                            if (effective.superEffective.isNotEmpty)
                              Flexible(
                                flex: 1,
                                child: PokeElementByEffectiveView(
                                  'x2',
                                  effective.superEffective,
                                ),
                              ),
                            if (effective.normalEffective.isNotEmpty)
                              Flexible(
                                flex: 1,
                                child: PokeElementByEffectiveView(
                                  'x1',
                                  effective.normalEffective,
                                ),
                              ),
                            if (effective.notVeryEffective.isNotEmpty)
                              Flexible(
                                flex: 1,
                                child: PokeElementByEffectiveView(
                                  'x0.5',
                                  effective.notVeryEffective,
                                ),
                              ),
                            if (effective.slightlyEffective.isNotEmpty)
                              Flexible(
                                flex: 1,
                                child: PokeElementByEffectiveView(
                                  'x0.25',
                                  effective.slightlyEffective,
                                ),
                              ),
                            if (effective.noEffective.isNotEmpty)
                              Flexible(
                                flex: 1,
                                child: PokeElementByEffectiveView(
                                  'x0',
                                  effective.noEffective,
                                ),
                              ),
                          ],
                        );
                      } else {
                        return Container();
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
