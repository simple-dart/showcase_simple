import 'package:simple_dart_checkbox/simple_dart_checkbox.dart';
import 'package:simple_dart_dropdown/simple_dart_dropdown.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_label/simple_dart_label.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class DropdownView extends View {
  DropdownView() {
    id = 'dropdown';
    caption = 'Dropdown';
    vertical = true;
    padding = '10px';
    spacing = '10px';
    fillContent = true;
    final checkboxDropdown = CheckboxDropdown()
      ..initOptions(['Option 1', 'Option 2', 'Option 3', 'Option 4', 'Option 5']);
    add(HeadedPanel()
      ..caption = 'CheckboxDropdown'
      ..addContent([checkboxDropdown]));
  }
}

class CheckboxDropdown extends Dropdown {
  Label displayLabel = Label();
  List<Checkbox> checkboxes = <Checkbox>[];

  CheckboxDropdown() : super() {
    add(displayLabel);
    dropPanel
      ..padding = '5px'
      ..spacing = '5px';
  }

  void initOptions(List<String> options) {
    checkboxes.clear();
    for (final option in options) {
      final checkbox = Checkbox()..caption = option;
      checkbox.onValueChange.listen((event) {
        refreshDisplay();
      });
      checkboxes.add(checkbox);
      dropPanel.add(checkbox);
    }
    refreshDisplay();
  }

  void refreshDisplay() {
    final selected = checkboxes.where((element) => element.value).toList();
    if (selected.isEmpty) {
      displayLabel.caption = 'Select an option';
    } else {
      displayLabel.caption = selected.map((e) => e.caption).join(', ');
    }
  }
}
