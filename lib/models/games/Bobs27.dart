import 'package:dartsdrill/models/ThrowSet.dart';
import 'package:dartsdrill/models/Answer.dart';
import 'package:dartsdrill/services/localizations.dart';

import '../Fields.dart';
import '../Game.dart';

class Bobs27 implements Game {
  Bobs27(this.localizations) {
    _name = localizations.translate('Bobs27', 'name');
    _description = localizations.translate('Bobs27', 'description');
    _metaText = localizations.translate('Bobs27', 'metaText');
    _question = localizations.translate('Bobs27', 'question');
  }

  AppLocalizations localizations;
  late String _name;
  late String _description;
  late String _metaText;
  Field _nextTarget = Fields().getByName('D1');
  late String _question;
  String _additionalText = '';
  List<Answer> _answers = [Answer('0', 0, true), Answer('1', 1, true), Answer('2', 2, true), Answer('3', 3, true)];
  List<ThrowSet> _lastThrows = [];
  bool _isFinished = false;
  final Fields _fields = Fields();

  @override
  void start() {
    _nextTarget = _fields.getByName('D1');
    _lastThrows = [];
  }

  @override
  void registerThrow(Answer answer) {
    updateLastThrows(answer);
    int _nextValue = _nextTarget.segment + 1;
    if (_nextValue == 21) {
      _nextTarget = _fields.getByName('BULL');
      return;
    } else if (_nextValue == 26) {
      _isFinished = true;
      return;
    } else {
      _nextTarget = _fields.getByName('D$_nextValue');
    }
  }

  @override
  void updateLastThrows(Answer answer) {
    ThrowSet _throwSet;
    int _fieldValue = _nextTarget.segment;
    switch (answer.value) {
      case 0:
        _throwSet = ThrowSet('NS', 'NS', 'NS');
        break;
      case 1:
        _throwSet = ThrowSet('D$_fieldValue', 'NS', 'NS');
        break;
      case 2:
        _throwSet = ThrowSet('D$_fieldValue', 'D$_fieldValue', 'NS');
        break;
      default:
        _throwSet = ThrowSet('D$_fieldValue', 'D$_fieldValue', 'D$_fieldValue');
        break;
    }
    _lastThrows.add(_throwSet);
  }

  @override
  void resetThrow() {
    if (_lastThrows.isNotEmpty) {
      if (_nextTarget.segment == 25) {
        _nextTarget = _fields.getByName('D20');
      } else {
        int _lastTarget = _nextTarget.segment - 1;
        _nextTarget = _fields.getByName('D$_lastTarget');
      }
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
    if (_nextTarget.segment < 20) {
      int _nextValue = _nextTarget.segment + 1;
      _alternativeText += _fields.getByName('D$_nextValue').description;
      _alternativeText += '\n';
      if (_nextTarget.segment < 19) {
        int _nextnextValue = _nextTarget.segment + 2;
        _alternativeText += _fields.getByName('D$_nextnextValue').description;
        _alternativeText += '\n';
        if (_nextTarget.segment < 18) {
          int _nextnextnextValue = _nextTarget.segment + 3;
          _alternativeText += _fields.getByName('D$_nextnextnextValue').description;
          _alternativeText += '\n';
        }
      }
    }
    if (_nextTarget.segment > 17 && _nextTarget.segment != 25) {
      _alternativeText += _fields.getByName('BULL').description;
      _alternativeText += '\n';
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
