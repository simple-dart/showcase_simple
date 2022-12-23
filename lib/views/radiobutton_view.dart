import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_radio_field/simple_dart_radio_field.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class RadioView extends View {
  RadioView() {
    id = 'radio';
    caption = 'RadioField';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      HeadedPanel()
        ..caption = 'Row layout'
        ..width = '300px'
        ..wrap = true
        ..addContent([
          RadioField()
            ..groupName = 'row'
            ..addRadioButton('opt1', 'option1')
            ..addRadioButton('opt2', 'option2')
            ..addRadioButton('opt3', 'option3')
            ..addRadioButton('opt4', 'option4')
        ]),
      HeadedPanel()
        ..caption = 'Column layout'
        ..width = '300px'
        ..addContent([
          RadioField()
            ..vertical = true
            ..groupName = 'vertical'
            ..addRadioButton('opt1', 'option1')
            ..addRadioButton('opt2', 'option2')
            ..addRadioButton('opt3', 'option3')
            ..addRadioButton('opt4', 'option4')
        ]),
      HeadedPanel()
        ..caption = 'Disabled'
        ..width = '300px'
        ..addContent([
          RadioField()
            ..vertical = true
            ..groupName = 'vertical'
            ..addRadioButton('opt1', 'option1')
            ..addRadioButton('opt2', 'option2')
            ..addRadioButton('opt3', 'option3')
            ..addRadioButton('opt4', 'option4')
            ..disabled = true
        ])
    ]);
  }
}
