import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pokefinder/model/poke_type.dart';
import 'package:pokefinder/provider/provider.dart';
import 'package:pokefinder/widget/poketype_effective_view.dart';
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
        color: Color(0xFF5e5d5d),
        child: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(16),
              child: Column(
                children: [
                  PokeTypeListView(onSelectPokeType: _onSelectPokeType),
                  Container(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Divider(color: Theme.of(context).primaryColor),
                  ),
                  const PokeTypeEffectiveView(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
