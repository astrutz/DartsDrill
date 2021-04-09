import 'package:dartsdrill/models/Finishes.dart';
import 'package:dartsdrill/models/ThrowSet.dart';
import 'package:dartsdrill/models/Answer.dart';
import 'package:dartsdrill/services/localizations.dart';

import '../Game.dart';

class Survive61 implements Game {
  Survive61(this.localizations) {
    _name = localizations.translate('Survive61', 'name');
    _description = localizations.translate('Survive61', 'description');
    _metaText = localizations.translate('Survive61', 'metaText');
    _question = localizations.translate('Survive61', 'question');
  }

  AppLocalizations localizations;
  late final String _name;
  late final String _description;
  late final String _metaText;
  Finish _nextTarget = Finishes().getByValue(61);
  late String _question;
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
      Answer(localizations.translate('General', 'no'), 0, true),
      Answer(localizations.translate('General', 'yes') + '\n(1 Dart)', 1, _nextTarget.minimumDarts == 1),
      Answer(localizations.translate('General', 'yes') + '\n(2 Darts)', 2, _nextTarget.minimumDarts <= 2),
      Answer(localizations.translate('General', 'yes') + '\n(3 Darts)', 3, _nextTarget.minimumDarts <= 3)
    ];
    _isFinished = false;
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
      Answer(localizations.translate('General', 'no'), 0, true),
      Answer(localizations.translate('General', 'yes') + '\n(1 Dart)', 1, _nextTarget.minimumDarts == 1),
      Answer(localizations.translate('General', 'yes') + '\n(2 Darts)', 2, _nextTarget.minimumDarts <= 2),
      Answer(localizations.translate('General', 'yes') + '\n(3 Darts)', 3, _nextTarget.minimumDarts <= 3)
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
    String _throwString = localizations.translate('GameMode', 'lastThrows') + '\n';
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
