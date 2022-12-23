import 'package:simple_dart_button/simple_dart_button.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class MessagesView extends View {
  MessagesView() {
    id = 'errors';
    caption = 'Errors';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      HeadedPanel()
        ..caption = 'Errors'
        ..width = '300px'
        ..addContent([
          Button()
            ..caption = 'Show error'
            ..onClick.listen((event) => showError('error')),
          Button()
            ..caption = 'Show fatal error'
            ..onClick.listen((event) => showFatalError('error'))
        ]),
    ]);
  }
}
