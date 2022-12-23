import 'package:simple_dart_button/simple_dart_button.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_link/simple_dart_link.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class ButtonsView extends View {
  ButtonsView() {
    fullSize();
    id = 'buttons';
    caption = 'Buttons';
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      HeadedPanel()
        ..caption = 'Buttons'
        ..width = '300px'
        ..addContent([
          Button()..caption = 'Simple button',
          Button()
            ..caption = 'Disabled button'
            ..disabled = true,
          Button()
            ..caption = 'Active button'
            ..active = true,
          Button()
            ..caption = 'Disabled active button'
            ..disabled = true
            ..active = true,
        ]),
      HeadedPanel()
        ..caption = 'Links'
        ..width = '300px'
        ..addContent([
          Link()
            ..caption = 'Simple link'
            ..href = 'https://google.com',
          Link()
            ..caption = 'Disabled link'
            ..href = 'https://google.com'
            ..disabled = true,
          Link()
            ..caption = 'Active link'
            ..href = 'https://google.com'
            ..active = true,
          Link()
            ..caption = 'Disabled active link'
            ..href = 'https://google.com'
            ..disabled = true
            ..active = true,
        ])
    ]);
  }
}
