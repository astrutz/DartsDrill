import 'Game.dart';

class Plan {
  late final String _name;
  late final String _description;
  late final String _metaText;
  late int _currentGameIndex;
  late final List<Game> _games;

  String get name => _name;
  String get description => _description;
  String get metaText => _metaText;
  int get currentGameIndex => _currentGameIndex;
  void incrementIndex() {}
  void resetGames() {}
  String getStatStringTMP() => '';
  List<Game> get games => _games;
}
