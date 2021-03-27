import 'Answer.dart';
import 'ThrowSet.dart';

class Game {
  final String _name;
  late var _nextTarget;
  late String _question;
  late String _additionalText;
  late List<Answer> _answers;
  late List<ThrowSet> _lastThrows;
  late bool _isFinished;

  Game(this._name);

  void start() {}
  void registerThrow(Answer answer) {}
  void updateLastThrows(Answer answer) {}
  void resetThrow() {}
  String getNextTargetText() => '';
  String getAlternativeText() => '';
  String getLastTargetText() => '';

  String get name => _name;
  dynamic get nextTarget => _nextTarget;
  String get question => _question;
  String get additionalText => _additionalText;
  List<Answer> get answers => _answers;
  List<ThrowSet> get lastThrows => _lastThrows;
  bool get isFinished => _isFinished;
}
