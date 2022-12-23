import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_tabs_panel/simple_dart_tabs_panel.dart';
import 'package:simple_dart_text_field/simple_dart_text_field.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class StateView extends View {
  TabsPanel tabPanel = TabsPanel()
    ..varName = 'tabsPanel'
    ..vertical = true
    ..fillContent = true
    ..fullSize();

  final tab1 = Panel()
    ..varName = 'tab1'
    ..padding = '10px'
    ..fullSize()
    ..fillContent = true
    ..vertical = true;

  final tab2 = Panel()
    ..varName = 'tab2'
    ..padding = '10px'
    ..fullSize()
    ..fillContent = true
    ..vertical = true;

  final tab3 = Panel()
    ..varName = 'tab3'
    ..padding = '10px'
    ..fullSize()
    ..fillContent = true
    ..vertical = true;

  TextField tabText1 = TextField()..varName = 'tabText1';
  TextField tabText2 = TextField()..varName = 'tabText2';
  TextField tabText3 = TextField()..varName = 'tabText3';

  StateView() {
    fullSize();
    fillContent = true;
    vertical = true;
    id = 'state_view';
    caption = 'StateView';
    padding = '10px';
    spacing = '10px';
    tabPanel
      ..addTabTag(LabelTabTag(tab1)..caption = 'Tab1')
      ..addTabTag(LabelTabTag(tab2)..caption = 'Tab2')
      ..addTabTag(LabelTabTag(tab3)..caption = 'Tab3');

    tab1.add(tabText1);
    tab2.add(tabText2);
    tab3.add(tabText3);

    addStateComponents([tabPanel, tabText1, tabText2, tabText3]);
    add(HeadedPanel()
      ..caption = caption
      ..addContent([tabPanel]));
  }

  @override
  Future<void> init(Map<String, String> params, Map<String, String>? state) async {
    this.params = params;
    this.state = state;
    tabPanel.state = state?['tabPanel'] ?? 'tab1';
    tabText1.state = state?['tabText1'] ?? '';
    tabText2.state = state?['tabText2'] ?? '';
    tabText3.state = state?['tabText3'] ?? '';
  }
}
