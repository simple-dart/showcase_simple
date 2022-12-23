import 'package:simple_dart_checkbox/simple_dart_checkbox.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class CheckboxView extends View {
  CheckboxView() {
    id = 'checkbox';
    caption = 'CheckboxField';
    fullSize();
    fillContent = true;
    vertical = true;
    padding = '10px';
    spacing = '10px';
    add(HeadedPanel()
      ..caption = 'Checkbox fields'
      ..width = '300px'
      ..addContent([
        Checkbox()
          ..caption = 'Option 1'
          ..value = true,
        Checkbox()..caption = 'Option 2',
        Checkbox()
          ..caption = 'Disabled'
          ..disabled = true,
      ]));
  }
}
