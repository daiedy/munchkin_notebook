import 'package:munchkin_notebook1/features/choose_gender_page/presentation/gender_button.dart';

class GenderButtonGroup {
  GenderButtonGroup(this.genderButtonGroup);

  final List<GenderButton> genderButtonGroup;

  setButtonGroupState() {
    genderButtonGroup.forEach((genderButton) { 
      genderButton.createState().setState(() {
        
      });
    });
  }
}
