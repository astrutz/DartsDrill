import 'Answer.dart';
import 'ThrowSet.dart';

class Game {
  late final String _name;
  late final String _description;
  late final String _metaText;
  // ignore: unused_field
  late var _nextTarget;
  late String _question;
  late String _additionalText;
  late List<Answer> _answers;
  late List<ThrowSet> _lastThrows;
  late bool _isFinished;

  void start() {}
  void registerThrow(Answer answer) {}
  void updateLastThrows(Answer answer) {}
  void resetThrow() {}
  String getNextTargetText() => '';
  String getAlternativeText() => '';
  String getLastTargetText() => '';
  String getStatStringTMP() => '';

  String get name => _name;
  dynamic get nextTarget => _nextTarget;
  String get description => _description;
  String get metaText => _metaText;
  String get question => _question;
  String get additionalText => _additionalText;
  List<Answer> get answers => _answers;
  List<ThrowSet> get lastThrows => _lastThrows;
  bool get isFinished => _isFinished;
}
