// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'selected_poke_type_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SelectedPokeTypeInput {
  PokeType get primary => throw _privateConstructorUsedError;
  PokeType? get secondary => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SelectedPokeTypeInputCopyWith<SelectedPokeTypeInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SelectedPokeTypeInputCopyWith<$Res> {
  factory $SelectedPokeTypeInputCopyWith(SelectedPokeTypeInput value,
          $Res Function(SelectedPokeTypeInput) then) =
      _$SelectedPokeTypeInputCopyWithImpl<$Res>;
  $Res call({PokeType primary, PokeType? secondary});

  $PokeTypeCopyWith<$Res> get primary;
  $PokeTypeCopyWith<$Res>? get secondary;
}

/// @nodoc
class _$SelectedPokeTypeInputCopyWithImpl<$Res>
    implements $SelectedPokeTypeInputCopyWith<$Res> {
  _$SelectedPokeTypeInputCopyWithImpl(this._value, this._then);

  final SelectedPokeTypeInput _value;
  // ignore: unused_field
  final $Res Function(SelectedPokeTypeInput) _then;

  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
  }) {
    return _then(_value.copyWith(
      primary: primary == freezed
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as PokeType,
      secondary: secondary == freezed
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as PokeType?,
    ));
  }

  @override
  $PokeTypeCopyWith<$Res> get primary {
    return $PokeTypeCopyWith<$Res>(_value.primary, (value) {
      return _then(_value.copyWith(primary: value));
    });
  }

  @override
  $PokeTypeCopyWith<$Res>? get secondary {
    if (_value.secondary == null) {
      return null;
    }

    return $PokeTypeCopyWith<$Res>(_value.secondary!, (value) {
      return _then(_value.copyWith(secondary: value));
    });
  }
}

/// @nodoc
abstract class _$$_SelectedPokeTypeInputCopyWith<$Res>
    implements $SelectedPokeTypeInputCopyWith<$Res> {
  factory _$$_SelectedPokeTypeInputCopyWith(_$_SelectedPokeTypeInput value,
          $Res Function(_$_SelectedPokeTypeInput) then) =
      __$$_SelectedPokeTypeInputCopyWithImpl<$Res>;
  @override
  $Res call({PokeType primary, PokeType? secondary});

  @override
  $PokeTypeCopyWith<$Res> get primary;
  @override
  $PokeTypeCopyWith<$Res>? get secondary;
}

/// @nodoc
class __$$_SelectedPokeTypeInputCopyWithImpl<$Res>
    extends _$SelectedPokeTypeInputCopyWithImpl<$Res>
    implements _$$_SelectedPokeTypeInputCopyWith<$Res> {
  __$$_SelectedPokeTypeInputCopyWithImpl(_$_SelectedPokeTypeInput _value,
      $Res Function(_$_SelectedPokeTypeInput) _then)
      : super(_value, (v) => _then(v as _$_SelectedPokeTypeInput));

  @override
  _$_SelectedPokeTypeInput get _value =>
      super._value as _$_SelectedPokeTypeInput;

  @override
  $Res call({
    Object? primary = freezed,
    Object? secondary = freezed,
  }) {
    return _then(_$_SelectedPokeTypeInput(
      primary: primary == freezed
          ? _value.primary
          : primary // ignore: cast_nullable_to_non_nullable
              as PokeType,
      secondary: secondary == freezed
          ? _value.secondary
          : secondary // ignore: cast_nullable_to_non_nullable
              as PokeType?,
    ));
  }
}

/// @nodoc

class _$_SelectedPokeTypeInput implements _SelectedPokeTypeInput {
  const _$_SelectedPokeTypeInput({required this.primary, this.secondary});

  @override
  final PokeType primary;
  @override
  final PokeType? secondary;

  @override
  String toString() {
    return 'SelectedPokeTypeInput(primary: $primary, secondary: $secondary)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SelectedPokeTypeInput &&
            const DeepCollectionEquality().equals(other.primary, primary) &&
            const DeepCollectionEquality().equals(other.secondary, secondary));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(primary),
      const DeepCollectionEquality().hash(secondary));

  @JsonKey(ignore: true)
  @override
  _$$_SelectedPokeTypeInputCopyWith<_$_SelectedPokeTypeInput> get copyWith =>
      __$$_SelectedPokeTypeInputCopyWithImpl<_$_SelectedPokeTypeInput>(
          this, _$identity);
}

abstract class _SelectedPokeTypeInput implements SelectedPokeTypeInput {
  const factory _SelectedPokeTypeInput(
      {required final PokeType primary,
      final PokeType? secondary}) = _$_SelectedPokeTypeInput;

  @override
  PokeType get primary;
  @override
  PokeType? get secondary;
  @override
  @JsonKey(ignore: true)
  _$$_SelectedPokeTypeInputCopyWith<_$_SelectedPokeTypeInput> get copyWith =>
      throw _privateConstructorUsedError;
}
