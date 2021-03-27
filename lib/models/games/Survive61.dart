import 'package:dartsdrill/models/Finishes.dart';
import 'package:dartsdrill/models/ThrowSet.dart';
import 'package:dartsdrill/models/Answer.dart';

import '../Game.dart';

class Survive61 implements Game {
  final String _name = 'Survive 61';
  Finish _nextTarget = Finishes().getByValue(61);
  String _question = 'Wurde das Finish getroffen?';
  String _additionalText = '';
  List<Answer> _answers = [];
  List<ThrowSet> _lastThrows = [];
  List<int> _lastTargets = [];
  bool _isFinished = false;

  @override
  void start() {
    _nextTarget = Finishes().getByValue(61);
    _lastThrows = [];
    _lastTargets = [];
    _answers = [
      Answer('Nein', 0, true),
      Answer('Ja\n(1 Dart)', 1, Finishes().getByValue(61).minimumDarts == 1),
      Answer('Ja\n(2 Darts)', 2, Finishes().getByValue(61).minimumDarts <= 2),
      Answer('Ja\n(3 Darts)', 3, Finishes().getByValue(61).minimumDarts <= 3)
    ];
  }

  @override
  void registerThrow(Answer answer) {
    updateLastThrows(answer);
    if ((_nextTarget.value > 89 && answer.value > 0) || (_nextTarget.value == 50 && answer.value == 0)) {
      _isFinished = true;
      return;
    }
    if (answer.value == 0) {
      _nextTarget = Finishes().getByValue(_nextTarget.value - 1);
    } else {
      _nextTarget = Finishes().getByValue(_nextTarget.value + 10);
    }
    _answers = [
      Answer('Nein', 0, true),
      Answer('Ja\n(1 Dart)', 1, _nextTarget.minimumDarts == 1),
      Answer('Ja\n(2 Darts)', 2, _nextTarget.minimumDarts <= 2),
      Answer('Ja\n(3 Darts)', 3, _nextTarget.minimumDarts <= 3)
    ];
  }

  @override
  void updateLastThrows(Answer answer) {
    ThrowSet _throwSet;
    if (answer.value == 0) {
      _throwSet = ThrowSet('NS', 'NS', 'NS');
    } else {
      _throwSet = _nextTarget.ways[0];
    }
    _lastTargets.add(_nextTarget.value);
    _lastThrows.add(_throwSet);
  }

  @override
  void resetThrow() {
    if (_lastThrows.isNotEmpty) {
      int _difference = _lastThrows.last.getScore() == 0 ? -1 : 10;
      _nextTarget = Finishes().getByValue((_nextTarget.value - _difference));
      _lastThrows.removeLast();
      _lastTargets.removeLast();
    }
  }

  @override
  String getLastTargetText() {
    String _throwString = 'Letzte Würfe:\n';
    if (_lastThrows.isEmpty) {
      return '';
    }
    List<int> _lastFiveTargets = _lastTargets.length >= 5 ? _lastTargets.sublist(_lastTargets.length - 5, _lastTargets.length) : _lastTargets;
    List<ThrowSet> _lastFiveThrows = _lastThrows.length >= 5 ? _lastThrows.sublist(_lastThrows.length - 5, _lastThrows.length) : _lastThrows;
    _lastFiveTargets.forEach((target) {
      ThrowSet _throwSet = _lastFiveThrows[_lastFiveTargets.indexOf(target)];
      _throwString += '$target    ';
      _throwString += '${_throwSet.getScore() > 0 ? '✓' : '✕'}';
      _throwString += '\n';
    });
    return _throwString;
  }

  @override
  String getAlternativeText() {
    String _alternativeText = '';
    _nextTarget.ways.forEach((way) {
      _alternativeText += way.getThrows()[0] != null ? way.getThrows()[0]!.name + ' ' : '';
      _alternativeText += way.getThrows()[1] != null ? way.getThrows()[1]!.name + ' ' : '';
      _alternativeText += way.getThrows()[2] != null ? way.getThrows()[2]!.name + ' ' : '';
      _alternativeText += '\n';
    });
    return _alternativeText;
  }

  @override
  String getNextTargetText() {
    return '${_nextTarget.value}';
  }

  String get name => _name;
  dynamic get nextTarget => _nextTarget;
  String get question => _question;
  String get additionalText => _additionalText;
  List<Answer> get answers => _answers;
  List<ThrowSet> get lastThrows => _lastThrows;
  bool get isFinished => _isFinished;
}
