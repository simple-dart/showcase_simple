import 'package:simple_dart_button/simple_dart_button.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

import 'panel_props.dart';

class PanelView extends View {
  late PanelProps panelProps;
  Panel examplePanel = Panel()
    ..addCssClass('ExamplePanel')
    ..vertical = true
    ..width = '300px'
    ..height = '200px';

  PanelView() {
    id = 'panel';
    caption = 'Panel';
    fullSize();
    fillContent = true;
    padding = '10px';
    vAlign = Align.start;
    examplePanel.addAll([
      Button()..caption = 'item1',
      Button()..caption = 'item2',
      Button()..caption = 'item3',
      Button()..caption = 'item4',
      Button()..caption = 'item5',
    ]);
    panelProps = PanelProps(examplePanel)..width = '300px';
    addAll([
      Panel()
        ..vertical = true
        ..fillContent = true
        ..fullSize()
        ..padding = '10px'
        ..spacing = '5px'
        ..add(examplePanel),
      panelProps,
    ]);
  }
}
