import 'package:dartsdrill/models/Game.dart';
import 'package:dartsdrill/models/Plan.dart';
import 'package:dartsdrill/models/games/AroundTheWorldGame.dart';
import 'package:dartsdrill/models/games/Survive61.dart';

class ProWarmup implements Plan {
  final String _name = 'Pro Warmup';
  final String _description = 'Aufwärmroutine für Turniere, die Liga oder das Training.';
  final String _metaText = 'Level: Anfänger\nFokus: Aufwärmen\nDauer: 15 Minuten';
  int _currentGameIndex = 0;
  List<Game> _games = [AroundTheWorldGame(), Survive61()];

  String get name => _name;
  String get description => _description;
  String get metaText => _metaText;
  int get currentGameIndex => _currentGameIndex;

  void incrementIndex() {
    _currentGameIndex++;
  }

  void resetGames() {
    _currentGameIndex = 0;
    _games = [AroundTheWorldGame(), Survive61()];
  }

  String getStatStringTMP() => 'TODO';

  List<Game> get games => _games;
}
