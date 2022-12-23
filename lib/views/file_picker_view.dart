import 'package:simple_dart_file_picker/simple_dart_file_picker.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class FilePickerView extends View {
  FilePickerView() {
    vertical = true;
    fullSize();
    fillContent = true;
    padding = '10px';
    spacing = '10px';
    id = 'file_picker';
    caption = 'FilePicker';
    addAll([
      HeadedPanel()
        ..caption = 'File Picker'
        ..width = '300px'
        ..addContent([FilePicker()..caption = 'Caption'])
    ]);
  }
}
