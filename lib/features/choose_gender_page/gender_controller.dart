import 'package:munchkin_notebook1/features/choose_gender_page/gender.dart';

class GenderController {
  static const Gender _defaultGender = Gender.male;

  GenderController({Gender initialGender = _defaultGender})
      : _currentGender = initialGender;

  Gender _currentGender = Gender.male;

  Gender get getCurrentGender => _currentGender;

  Function(Gender)? _onGenderChange;

  void setGenderListener(Function(Gender) onGenderChange) {
    _onGenderChange = onGenderChange;
  }

  void setGender(Gender gender) {
    _currentGender = gender;
    _onGenderChange?.call(gender);
  }
}
