import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_label/simple_dart_label.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_tabs_panel/simple_dart_tabs_panel.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class TabPanelView extends View {
  HeadedPanel headedPanel = HeadedPanel()..fullSize();

  TabPanelView() {
    id = 'tab_panel';
    caption = 'TabPanel';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    spacing = '10px';
    final simpleTabPanel = TabsPanel()
      ..fillContent = true
      ..fullSize();
    final tag1 = simpleTabPanel.addTabTag(
      LabelTabTag(Panel()
        ..add(Label()..caption = 'Tab1 content')
        ..padding = '5px'
        ..vertical = true
        ..fullSize()
        ..fillContent = true)
        ..caption = 'Tab1',
    );
    simpleTabPanel
      ..addTabTag(
        LabelTabTag(Panel()
          ..add(Label()..caption = 'Tab2 content')
          ..padding = '5px'
          ..vertical = true
          ..fullSize()
          ..fillContent = true)
          ..caption = 'Tab2',
      )
      ..addTabTag(
        LabelTabTag(Panel()
          ..add(Label()..caption = 'Tab3 content')
          ..padding = '5px'
          ..vertical = true
          ..fullSize()
          ..fillContent = true)
          ..caption = 'Tab3',
      )
      ..currentTag = tag1;
    headedPanel.caption = 'SimpleTabPanel';
    headedPanel.contentPanel.add(simpleTabPanel);
    add(headedPanel);
  }
}
