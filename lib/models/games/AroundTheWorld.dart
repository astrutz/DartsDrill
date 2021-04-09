import 'package:dartsdrill/models/Answer.dart';
import 'package:dartsdrill/models/Fields.dart';
import 'package:dartsdrill/models/ThrowSet.dart';
import 'package:dartsdrill/services/localizations.dart';

import '../Game.dart';

class AroundTheWorld implements Game {
  AroundTheWorld(this.localizations) {
    _name = localizations.translate('AroundTheWorld', 'name');
    _description = localizations.translate('AroundTheWorld', 'description');
    _metaText = localizations.translate('AroundTheWorld', 'metaText');
    _question = localizations.translate('AroundTheWorld', 'question');
  }

  AppLocalizations localizations;
  late String _name;
  late String _description;
  late String _metaText;
  Field _nextTarget = Fields().getByName('S1');
  late String _question;
  String _additionalText = '';
  List<Answer> _answers = [Answer('0', 0, true), Answer('1', 1, true), Answer('2', 2, true), Answer('3', 3, true)];
  List<ThrowSet> _lastThrows = [];
  bool _isFinished = false;
  final Fields _fields = Fields();

  @override
  start() {
    _nextTarget = _fields.getByName('S1');
    _lastThrows = [];
  }

  @override
  void registerThrow(Answer answer) {
    updateLastThrows(answer);
    int _nextValue = _nextTarget.value + answer.value;
    if (_nextValue > 18) {
      answers[3].disable();
    }
    if (_nextValue > 19) {
      answers[2].disable();
    }
    if (_nextValue > 20) {
      _isFinished = true;
      return;
    } else {
      _nextTarget = _fields.getByName('S$_nextValue');
    }
  }

  @override
  void updateLastThrows(Answer answer) {
    ThrowSet _throwSet;
    switch (answer.value) {
      case 0:
        _throwSet = ThrowSet('NS', 'NS', 'NS');
        break;
      case 1:
        int _thisValue = _nextTarget.value;
        String? _secondThrow = answers[1].enabled ? 'NS' : null;
        String? _thirdThrow = answers[2].enabled ? 'NS' : null;
        _throwSet = ThrowSet('S$_thisValue', _secondThrow, _thirdThrow);
        break;
      case 2:
        int _thisValue = _nextTarget.value;
        int _nextValue = _nextTarget.value + 1;
        String? _thirdThrow = answers[2].enabled ? 'NS' : null;
        _throwSet = ThrowSet('S$_thisValue', 'S$_nextValue', _thirdThrow);
        break;
      default:
        int _thisValue = _nextTarget.value;
        int _nextValue = _nextTarget.value + 1;
        int _nextNextValue = _nextTarget.value + 2;
        _throwSet = ThrowSet('S$_thisValue', 'S$_nextValue', 'S$_nextNextValue');
        break;
    }
    _lastThrows.add(_throwSet);
  }

  @override
  void resetThrow() {
    if (_lastThrows.isNotEmpty) {
      int _lastValue = _nextTarget.value;
      int _hits = 0;
      _lastThrows.last.getThrows().forEach((field) {
        if (field?.value != 0) {
          _hits++;
        }
      });
      _lastValue -= _hits;
      _nextTarget = _fields.getByName('S$_lastValue');
      _lastThrows.removeLast();
    }
  }

  @override
  String getLastTargetText() {
    String _throwString = localizations.translate('GameMode', 'lastThrows') + '\n';
    if (_lastThrows.isEmpty) {
      return '';
    }
    List<ThrowSet> _lastFiveThrows = _lastThrows.length >= 5 ? _lastThrows.sublist(_lastThrows.length - 5, _lastThrows.length) : _lastThrows;
    _lastFiveThrows.forEach((throwSet) {
      if (throwSet.getScore() == 0) {
        _throwString += localizations.translate('GameMode', 'noScore');
      } else {
        List<Field?> fields = throwSet.getThrows();
        if (fields[0]?.value != 0) {
          _throwString += fields[0]?.description ?? '';
        }
        if (fields[1]?.value != 0) {
          _throwString += ', ';
          _throwString += fields[1]?.description ?? '';
        }
        if (fields[2]?.value != 0) {
          _throwString += ', ';
          _throwString += fields[2]?.description ?? '';
        }
      }
      _throwString += '\n';
    });
    return _throwString;
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

  @override
  String getStatStringTMP() {
    // TODO
    return 'Dauer: tbd\n\nGetroffene Finishes: tbd\n\nHöchstes Finish: 85\n\nNiedrigstes Finish: 53';
  }

  String get name => _name;
  String get description => _description;
  String get metaText => _metaText;
  dynamic get nextTarget => _nextTarget;
  String get question => _question;
  String get additionalText => _additionalText;
  List<Answer> get answers => _answers;
  List<ThrowSet> get lastThrows => _lastThrows;
  bool get isFinished => _isFinished;
}
