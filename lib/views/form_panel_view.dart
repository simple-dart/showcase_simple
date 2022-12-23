import 'package:simple_dart_button/simple_dart_button.dart';
import 'package:simple_dart_form_panel/simple_dart_form_panel.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_text_area_field/simple_dart_text_area_field.dart';
import 'package:simple_dart_text_field/simple_dart_text_field.dart';

class FormPanelView extends View {
  HeadedPanel headedPanel = HeadedPanel();
  FormPanel formPanel = FormPanel();

  FormPanelView() {
    id = 'form_panel';
    caption = 'FormPanel';
    fullSize();
    vertical = true;
    fillContent = true;
    padding = '10px';
    spacing = '10px';
    formPanel
      ..labelsWidth = '150px'
      ..spacing = '5px'
      ..formSpacing = '5px'
      ..addComponent('TextField', TextField()..fullWidth())
      ..addComponent('TextAreaField', TextAreaField()..fullWidth())
      ..addLabel('Label1', 'Label1')
      ..addComponent('Button', Button()..caption = 'Button');
    headedPanel.caption = 'Form Panel';
    headedPanel.contentPanel.add(formPanel);
    headedPanel.width = '500px';
    add(headedPanel);
  }
}
