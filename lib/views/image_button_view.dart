import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_image_button/simple_dart_image_button.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class ImageButtonView extends View {
  ImageButtonView() {
    fullSize();
    id = 'image_buttons';
    caption = 'ImageButtons';
    fillContent = true;
    padding = '10px';
    spacing = '10px';
    addAll([
      HeadedPanel()
        ..caption = 'ImageButton'
        ..width = '500px'
        ..addContent([
          ImageButton()
            ..source = 'images/add.svg'
            ..width = '16px'
            ..tooltip = 'Add',
          ImageButton()
            ..source = 'images/add.svg'
            ..width = '32px'
            ..tooltip = 'Add',
          ImageButton()
            ..source = 'images/add.svg'
            ..width = '64px'
            ..tooltip = 'Add',
        ]),
    ]);
  }
}
