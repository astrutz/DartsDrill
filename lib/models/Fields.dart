class Fields {
  final List<Field> _fields = [];
  Fields() {
    _fields.add(Field('NS', 'No Score'));
    for (int i = 1; i < 21; i++) {
      _fields.add(Field('S$i', 'Single $i'));
      _fields.add(Field('D$i', 'Double $i'));
      _fields.add(Field('T$i', 'Triple $i'));
    }
    _fields.add(Field('25', 'Single Bull'));
    _fields.add(Field('BULL', 'Double Bull'));
  }

  Field getByName(name) {
    if (!_fields.any((field) => field.name == name)) {
      throw NoSuchFieldException('Field $name doesn\'t exist');
    }
    return _fields.firstWhere((field) => field.name == name);
  }
}

class Field {
  final String _name;
  final String _description;
  late int _value;
  late FieldType _type;

  Field(this._name, this._description) {
    if (_name == '25') {
      _value = 25;
    } else if (_name == 'BULL') {
      _value = 50;
    } else if (_name == 'NS') {
      _value = 0;
    } else {
      _value = int.parse(_name.substring(1));
    }
    switch (_name.substring(0, 1)) {
      case 'S':
        _type = FieldType.Single;
        break;
      case 'D':
        _type = FieldType.Double;
        _value = _value * 2;
        break;
      case 'T':
        _type = FieldType.Triple;
        _value = _value * 3;
        break;
      case '2':
        // Single bull
        _type = FieldType.Single;
        break;
      case 'B':
        // Double bull
        _type = FieldType.Double;
        break;
      default:
        // No score
        _type = FieldType.NoScore;
    }
  }

  String get name => _name;
  String get description => _description;
  int get value => _value;
  FieldType get fieldType => _type;
}

enum FieldType { Single, Double, Triple, NoScore }

class NoSuchFieldException implements Exception {
  late String _message;

  NoSuchFieldException([String message = 'Invalid value']) {
    this._message = message;
  }

  @override
  String toString() {
    return _message;
  }
}
