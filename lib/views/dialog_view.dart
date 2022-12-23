import 'package:simple_dart_button/simple_dart_button.dart';
import 'package:simple_dart_dialog/simple_dart_dialog.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_label/simple_dart_label.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_text_field/simple_dart_text_field.dart';

class DialogView extends View {
  DialogExample dialogExample = DialogExample();

  DialogView() {
    id = 'dialogs';
    caption = 'Dialogs';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      HeadedPanel()
        ..caption = 'Dialog example'
        ..addContent([
          Button()
            ..caption = 'Open dialog'
            ..onClick.listen((event) {
              dialogExample.showDialog();
            }),
        ])
        ..width = '300px',
    ]);
  }
}

class DialogExample extends HeadedDialog<String> {
  DialogExample() : super() {
    spacing = '5px';
    caption = 'DialogExample';
    bodyPanel
      ..spacing = '5px'
      ..addAll([Label()..caption = 'Input value', inputField]);
  }

  final inputField = TextField();

  @override
  void beforeShow() {
    inputField
      ..value = ''
      ..focus();
  }
}
