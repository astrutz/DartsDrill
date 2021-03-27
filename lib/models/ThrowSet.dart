import 'Fields.dart';

class ThrowSet {
  final Fields fields = Fields();
  Field? _firstThrow;
  Field? _secondThrow;
  Field? _thirdThrow;

  ThrowSet(String? firstFieldName, String? secondFieldName, String? thirdFieldName) {
    _firstThrow = firstFieldName == null ? null : fields.getByName(firstFieldName);
    _secondThrow = secondFieldName == null ? null : fields.getByName(secondFieldName);
    _thirdThrow = thirdFieldName == null ? null : fields.getByName(thirdFieldName);
  }

  List<Field?> getThrows() {
    return [_firstThrow, _secondThrow, _thirdThrow];
  }

  int getThrownDarts() {
    int validDarts = 0;
    if (_firstThrow != null) {
      validDarts++;
    }
    if (_secondThrow != null) {
      validDarts++;
    }
    if (_thirdThrow != null) {
      validDarts++;
    }
    return validDarts;
  }

  int getScore() {
    return (_firstThrow?.value ?? 0) + (_secondThrow?.value ?? 0) + (_thirdThrow?.value ?? 0);
  }
}
