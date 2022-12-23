import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_label/simple_dart_label.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_view_controller/simple_dart_view_controller.dart';

class ChildView extends View {
  HeadedPanel headedPanel = HeadedPanel();

  ChildView() {
    id = 'child_view';
    caption = 'Child View';
    vertical = true;
    fillContent = true;
    padding = '10px';
    add(headedPanel);
    showInNavBar = false;
  }

  @override
  Future<void> init(Map<String, String> params, Map<String, String>? state) async {
    this.params = params;
    this.state = state;
    headedPanel.contentPanel.clear();
    headedPanel.caption = 'fullPath:${viewController.generateFullPath(this)}';
    headedPanel.contentPanel.add(Label()..caption = 'Params:');
    params.forEach((key, value) {
      headedPanel.contentPanel.add(Label()..caption = '$key=$value');
    });
    caption = 'Child View of ${params['name'] ?? ''}';
  }
}
