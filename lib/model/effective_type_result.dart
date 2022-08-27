import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pokefinder/model/poke_type.dart';

part 'effective_type_result.freezed.dart';

@freezed
class EffectiveTypeResult with _$EffectiveTypeResult {

  const factory EffectiveTypeResult({
    @Default([]) List<PokeType> megaEffective,
    @Default([]) List<PokeType> superEffective,
    @Default([]) List<PokeType> normalEffective,
    @Default([]) List<PokeType> notVeryEffective,
    @Default([]) List<PokeType> slightlyEffective,
    @Default([]) List<PokeType> noEffective,
  }) = _EffectiveTypeResult;
}
