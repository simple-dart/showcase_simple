import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_select_field/simple_dart_select_field.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class SelectableObject {
  String name = '';

  SelectableObject(this.name);
}

class SelectFieldView extends View {
  SelectFieldView() {
    id = 'select_field';
    caption = 'SelectFiled';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      HeadedPanel()
        ..caption = 'Single'
        ..width = '300px'
        ..addContent([
          SelectField<String>()..initOptions(['option1', 'option2', 'option3', 'option4', 'option5'])
        ]),
      HeadedPanel()
        ..caption = 'Single disabled'
        ..width = '300px'
        ..addContent([
          SelectField<String>()
            ..initOptions(['option1', 'option2', 'option3', 'option4', 'option5'])
            ..disabled = true
        ]),
      HeadedPanel()
        ..caption = 'Multi'
        ..width = '300px'
        ..addContent([
          SelectField<String>()
            ..size = 4
            ..multiple = true
            ..initOptions(['option1', 'option2', 'option3', 'option4', 'option5'])
        ]),
      HeadedPanel()
        ..caption = 'Multi disabled'
        ..width = '300px'
        ..addContent([
          SelectField<String>()
            ..multiple = true
            ..size = 4
            ..initOptions(['option1', 'option2', 'option3', 'option4', 'option5'])
            ..disabled = true,
        ]),
      HeadedPanel()
        ..caption = 'Object Single'
        ..width = '300px'
        ..addContent([
          SelectField<SelectableObject>()
            ..adapter = ((obj) => obj.name)
            ..initOptions([
              SelectableObject('object1'),
              SelectableObject('object2'),
              SelectableObject('object3'),
              SelectableObject('object4')
            ])
            ..onValueChange.listen((value) {
              for (var i = 0; i < value.newValue.length; i++) {
                print(value.newValue[i].name);
              }
            })
        ]),
      HeadedPanel()
        ..caption = 'Object Multi'
        ..width = '300px'
        ..addContent([
          SelectField<SelectableObject>()
            ..adapter = ((obj) => obj.name)
            ..multiple = true
            ..initOptions([
              SelectableObject('object1'),
              SelectableObject('object2'),
              SelectableObject('object3'),
              SelectableObject('object4')
            ])
            ..onValueChange.listen((value) {
              for (var i = 0; i < value.newValue.length; i++) {
                print(value.newValue[i].name);
              }
            })
        ]),
    ]);
  }
}
