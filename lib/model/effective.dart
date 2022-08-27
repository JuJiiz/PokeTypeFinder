class Effective {
  final double multiplier;

  const Effective._(this.multiplier);

  static const MegaEffective = const Effective._(4.0);
  static const SuperEffective = const Effective._(2.0);
  static const NormalEffective = const Effective._(1.0);
  static const NotVeryEffective = const Effective._(0.5);
  static const SlightlyEffective = const Effective._(0.25);
  static const NoEffective = const Effective._(0);
}
