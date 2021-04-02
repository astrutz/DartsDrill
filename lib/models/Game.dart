import 'Answer.dart';
import 'ThrowSet.dart';

class Game {
  late final String _name;
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
  String getAdditionalText() => '';
  String getLastTargetText() => '';

  String get name => _name;
  String get question => _question;
  String get additionalText => _additionalText;
  List<Answer> get answers => _answers;
  List<ThrowSet> get lastThrows => _lastThrows;
  bool get isFinished => _isFinished;
}
