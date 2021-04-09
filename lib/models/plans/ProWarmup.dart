import 'package:dartsdrill/models/Game.dart';
import 'package:dartsdrill/models/Plan.dart';
import 'package:dartsdrill/models/games/AroundTheWorld.dart';
import 'package:dartsdrill/models/games/Survive61.dart';
import 'package:dartsdrill/services/localizations.dart';

class ProWarmup implements Plan {
  ProWarmup(this.localizations) {
    _games = [AroundTheWorld(localizations), Survive61(localizations)];
    _name = localizations.translate('ProWarmup', 'name');
    _description = localizations.translate('ProWarmup', 'description');
    _metaText = localizations.translate('ProWarmup', 'metaText');
  }

  late AppLocalizations localizations;
  late final String _name;
  late final String _description;
  late final String _metaText;
  int _currentGameIndex = 0;
  late List<Game> _games;

  String get name => _name;
  String get description => _description;
  String get metaText => _metaText;
  int get currentGameIndex => _currentGameIndex;

  void incrementIndex() {
    _currentGameIndex++;
  }

  void resetGames() {
    _currentGameIndex = 0;
    _games = [AroundTheWorld(localizations), Survive61(localizations)];
  }

  String getStatStringTMP() => 'TODO'; // TODO

  List<Game> get games => _games;
}
