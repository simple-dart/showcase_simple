import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_list_field/simple_dart_list_field.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class ListFieldView extends View {
  ListFieldView() {
    id = 'list_field';
    caption = 'ListField';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      HeadedPanel()
        ..caption = 'Simple'
        ..width = '300px'
        ..addContent([
          ListField()..value = ['Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5']
        ]),
      HeadedPanel()
        ..caption = 'Disabled'
        ..width = '300px'
        ..addContent([
          ListField()
            ..value = ['Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5']
            ..disabled = true
        ])
    ]);
  }
}
