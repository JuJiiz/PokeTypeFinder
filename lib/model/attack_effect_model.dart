class AtkEffect {
  final double multiplier;

  const AtkEffect._(this.multiplier);

  static const MegaEffective = const AtkEffect._(4.0);
  static const SuperEffective = const AtkEffect._(2.0);
  static const NormalEffective = const AtkEffect._(1.0);
  static const NotVeryEffective = const AtkEffect._(0.5);
  static const SlightlyEffective = const AtkEffect._(0.25);
  static const NoEffective = const AtkEffect._(0);
}

class TypeAttackModel {
  final AtkEffect normal,
      fire,
      water,
      electric,
      grass,
      ice,
      fighting,
      poison,
      ground,
      flying,
      psychic,
      bug,
      rock,
      ghost,
      dragon,
      dark,
      steel,
      fairly;

  const TypeAttackModel({
    this.normal = AtkEffect.NormalEffective,
    this.fire = AtkEffect.NormalEffective,
    this.water = AtkEffect.NormalEffective,
    this.electric = AtkEffect.NormalEffective,
    this.grass = AtkEffect.NormalEffective,
    this.ice = AtkEffect.NormalEffective,
    this.fighting = AtkEffect.NormalEffective,
    this.poison = AtkEffect.NormalEffective,
    this.ground = AtkEffect.NormalEffective,
    this.flying = AtkEffect.NormalEffective,
    this.psychic = AtkEffect.NormalEffective,
    this.bug = AtkEffect.NormalEffective,
    this.rock = AtkEffect.NormalEffective,
    this.ghost = AtkEffect.NormalEffective,
    this.dragon = AtkEffect.NormalEffective,
    this.dark = AtkEffect.NormalEffective,
    this.steel = AtkEffect.NormalEffective,
    this.fairly = AtkEffect.NormalEffective,
  });
}
