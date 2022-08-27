import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefinder/model/poke_type.dart';

part 'selected_poke_type_input.freezed.dart';

@freezed
class SelectedPokeTypeInput with _$SelectedPokeTypeInput {
  const factory SelectedPokeTypeInput({
    required PokeType primary,
    PokeType? secondary,
  }) = _SelectedPokeTypeInput;
}
