class Answer {
  final String _title;
  final int _value;
  bool _enabled;

  Answer(this._title, this._value, this._enabled);

  String get title => _title;
  int get value => _value;
  bool get enabled => _enabled;
  enable() {
    _enabled = true;
  }

  disable() {
    _enabled = false;
  }
}
