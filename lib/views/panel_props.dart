import 'package:simple_dart_checkbox/simple_dart_checkbox.dart';
import 'package:simple_dart_form_panel/simple_dart_form_panel.dart';
import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_load_indicator/simple_dart_load_indicator.dart';
import 'package:simple_dart_select_field/simple_dart_select_field.dart';
import 'package:simple_dart_text_field/simple_dart_text_field.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class PanelProps extends HeadedPanel {
  late Panel target;

  Checkbox chbVertical = Checkbox()..caption = 'vertical';
  Checkbox chbWrap = Checkbox()..caption = 'wrap';
  Checkbox chbScrollable = Checkbox()..caption = 'scrollable';
  Checkbox chbFillContent = Checkbox()..caption = 'fillContent';
  Checkbox chbLoadIndicator = Checkbox()..caption = 'loadIndicator';
  SelectField cmbVAlign = SelectField()..initOptions(Align.values.map((e) => e.name).toList());
  SelectField cmbHAlign = SelectField()..initOptions(Align.values.map((e) => e.name).toList());
  TextField txtWidth = TextField();
  TextField txtHeight = TextField();
  TextField txtPadding = TextField();
  TextField txtSpacing = TextField();
  FormPanel formPanel = FormPanel()
    ..labelsWidth = '100px'
    ..spacing = '2px';
  LoadIndicator loadIndicator = LoadIndicator();

  PanelProps(this.target) {
    caption = 'Properties';
    contentPanel
      ..wrap = true
      ..vAlign = Align.start
      ..spacing = '6px'
      ..addAll([
        chbVertical,
        chbWrap,
        chbScrollable,
        chbFillContent,
        chbLoadIndicator,
        formPanel
          ..addComponent('hAlign', cmbHAlign)
          ..addComponent('vAlign', cmbVAlign)
          ..addComponent('width', txtWidth)
          ..addComponent('height', txtHeight)
          ..addComponent('padding', txtPadding)
          ..addComponent('spacing', txtSpacing)
      ]);

    chbVertical
      ..value = target.vertical
      ..onValueChange.listen((event) {
        target.vertical = event.newValue;
      });

    chbWrap
      ..value = target.wrap
      ..onValueChange.listen((event) {
        target.wrap = event.newValue;
      });

    chbScrollable
      ..value = target.scrollable
      ..onValueChange.listen((event) {
        target.scrollable = event.newValue;
      });

    chbFillContent
      ..value = target.fillContent
      ..onValueChange.listen((event) {
        target.fillContent = event.newValue;
      });

    chbLoadIndicator
      ..value = false
      ..onValueChange.listen((event) {
        if (event.newValue) {
          loadIndicator.show(target);
        } else {
          loadIndicator.hide();
        }
      });

    cmbVAlign
      ..value = [target.vAlign.name]
      ..onValueChange.listen((event) {
        target.vAlign = Align.values.firstWhere((element) => event.newValue.first == element.name);
      });

    cmbHAlign
      ..value = [target.hAlign.name]
      ..onValueChange.listen((event) {
        target.hAlign = Align.values.firstWhere((element) => event.newValue.first == element.name);
      });

    txtWidth
      ..value = target.width
      ..onValueChange.listen((event) {
        target.width = event.newValue;
      });

    txtHeight
      ..value = target.height
      ..onValueChange.listen((event) {
        target.height = event.newValue;
      });

    txtPadding
      ..value = target.padding
      ..onValueChange.listen((event) {
        target.padding = event.newValue;
      });

    txtSpacing
      ..value = target.spacing
      ..onValueChange.listen((event) {
        target.spacing = event.newValue;
      });
  }
}
