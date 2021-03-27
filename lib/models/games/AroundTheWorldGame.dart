import 'package:dartsdrill/models/Answer.dart';
import 'package:dartsdrill/models/Fields.dart';
import 'package:dartsdrill/models/ThrowSet.dart';

import '../Game.dart';

class AroundTheWorldGame implements Game {
  final String _name = 'Around the World';
  Field _nextTarget = Fields().getByName('S1');
  String _question = 'Wie viele Felder wurden getroffen?';
  String _additionalText = '';
  List<Answer> _answers = [Answer('0', 0, true), Answer('1', 1, true), Answer('2', 2, true), Answer('3', 3, true)];
  List<ThrowSet> _lastThrows = [];
  bool _isFinished = false;
  Fields _fields = Fields();

  @override
  start() {
    _nextTarget = _fields.getByName('S1');
    _lastThrows = [];
  }

  @override
  void registerThrow(Answer answer) {
    updateLastThrows(answer);
    int nextValue = _nextTarget.value + answer.value;
    if (nextValue > 18) {
      answers[3].enabled = false;
    }
    if (nextValue > 19) {
      answers[2].enabled = false;
    }
    if (nextValue > 20) {
      _isFinished = true;
      return;
    } else {
      _nextTarget = _fields.getByName('S$nextValue');
    }
  }

  @override
  void updateLastThrows(Answer answer) {
    ThrowSet throwSet;
    switch (answer.value) {
      case 0:
        throwSet = ThrowSet('NS', 'NS', 'NS');
        break;
      case 1:
        int thisValue = _nextTarget.value;
        String? secondThrow = answers[1].enabled ? 'NS' : null;
        String? thirdThrow = answers[2].enabled ? 'NS' : null;
        throwSet = ThrowSet('S$thisValue', secondThrow, thirdThrow);
        break;
      case 2:
        int thisValue = _nextTarget.value;
        int nextValue = _nextTarget.value + 1;
        String? thirdThrow = answers[2].enabled ? 'NS' : null;
        throwSet = ThrowSet('S$thisValue', 'S$nextValue', thirdThrow);
        break;
      default:
        int thisValue = _nextTarget.value;
        int nextValue = _nextTarget.value + 1;
        int nextNextValue = _nextTarget.value + 2;
        throwSet = ThrowSet('S$thisValue', 'S$nextValue', 'S$nextNextValue');
        break;
    }
    _lastThrows.add(throwSet);
  }

  @override
  void resetThrow() {
    if (_lastThrows.isNotEmpty) {
      int _lastValue = _nextTarget.value;
      int hits = 0;
      _lastThrows.last.getThrows().forEach((field) {
        if (field?.value != 0) {
          hits++;
        }
      });
      _lastValue -= hits;
      _nextTarget = _fields.getByName('S$_lastValue');
      _lastThrows.removeLast();
    }
  }

  @override
  String getLastTargetText() {
    String throwString = 'Letzte Würfe:\n';
    if (_lastThrows.isEmpty) {
      return '';
    }
    List<ThrowSet> _lastFiveThrows = _lastThrows.length >= 5 ? _lastThrows.sublist(_lastThrows.length - 5, _lastThrows.length) : _lastThrows;
    _lastFiveThrows.forEach((throwSet) {
      if (throwSet.getScore() == 0) {
        throwString += 'No Score';
      } else {
        List<Field?> fields = throwSet.getThrows();
        if (fields[0]?.value != 0) {
          throwString += fields[0]?.description ?? '';
        }
        if (fields[1]?.value != 0) {
          throwString += ', ';
          throwString += fields[1]?.description ?? '';
        }
        if (fields[2]?.value != 0) {
          throwString += ', ';
          throwString += fields[2]?.description ?? '';
        }
      }

      throwString += '\n';
    });
    return throwString;
  }

  @override
  String getAlternativeText() {
    String _alternativeText = '';
    if (_nextTarget.value < 20) {
      int _nextValue = _nextTarget.value + 1;
      _alternativeText += _fields.getByName('S$_nextValue').description;
      _alternativeText += '\n';
      if (_nextTarget.value < 19) {
        int _nextnextValue = _nextTarget.value + 2;
        _alternativeText += _fields.getByName('S$_nextnextValue').description;
        _alternativeText += '\n';
        if (_nextTarget.value < 18) {
          int _nextnextnextValue = _nextTarget.value + 3;
          _alternativeText += _fields.getByName('S$_nextnextnextValue').description;
          _alternativeText += '\n';
        }
      }
    }
    return _alternativeText;
  }

  @override
  String getNextTargetText() {
    return _nextTarget.description;
  }

  String get name => _name;
  dynamic get nextTarget => _nextTarget;
  String get question => _question;
  String get additionalText => _additionalText;
  List<Answer> get answers => _answers;
  List<ThrowSet> get lastThrows => _lastThrows;
  bool get isFinished => _isFinished;
}
