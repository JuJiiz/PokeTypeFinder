import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/model/poke_type.dart';
import 'package:pokefinder/provider/provider.dart';
import 'package:pokefinder/widget/effective_result_view.dart';
import 'package:pokefinder/widget/poketype_list_view.dart';

class HomePage extends ConsumerStatefulWidget {
  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  _onSelectPokeType(PokeType selected) {
    ref.read(selectedTypeProvider.notifier).update(selected);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        color: Theme.of(context).backgroundColor,
        child: SafeArea(
          child: Row(
            children: [
              Flexible(
                flex: 2,
                child: Container(
                  height: double.infinity,
                  padding: EdgeInsets.all(16),
                  alignment: Alignment.center,
                  color: Theme.of(context).primaryColor,
                  child: PokeTypeListView(
                    onSelectPokeType: _onSelectPokeType,
                  ),
                ),
              ),
              VerticalDivider(
                color: Color(0xFF1A1A1A),
                width: 16,
                thickness: 16,
              ),
              Flexible(
                flex: 4,
                child: SingleChildScrollView(
                  child: Container(
                    padding: EdgeInsets.all(16),
                    child: const EffectiveResultView(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
