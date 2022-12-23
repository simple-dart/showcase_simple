import 'package:simple_dart_date_field/simple_dart_date_field.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_num_field/simple_dart_num_field.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_text_area_field/simple_dart_text_area_field.dart';
import 'package:simple_dart_text_field/simple_dart_text_field.dart';

class FieldsView extends View {
  FieldsView() {
    id = 'text_fields';
    caption = 'Fields';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    addAll([
      HeadedPanel()
        ..caption = 'TextField'
        ..width = '300px'
        ..addContent([TextField()]),
      HeadedPanel()
        ..caption = 'TextAreaField'
        ..width = '300px'
        ..addContent([TextAreaField()]),
      HeadedPanel()
        ..caption = 'NumField'
        ..width = '300px'
        ..addContent([NumField()]),
      HeadedPanel()
        ..caption = 'DateField'
        ..width = '300px'
        ..addContent([DateField()..value = DateTime.now()]),
      HeadedPanel()
        ..caption = 'DateTimeField'
        ..width = '300px'
        ..addContent([DateTimeField()..value = DateTime.now()])
    ]);
  }
}
