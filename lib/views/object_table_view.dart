import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_object_table/simple_dart_object_table.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class ObjectTableView extends View {
  ObjectTableView() {
    id = 'object_table';
    caption = 'ObjectTable';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    fillContent = true;
    fullSize();
    spacing = '10px';
    final objectTable = createObjectTable();
    addAll([
      HeadedPanel()
        ..fullSize()
        ..fillContent = true
        ..caption = 'ObjectTable'
        ..addContent([objectTable]),
    ]);
  }

  ObjectTable createObjectTable() {
    final ret = ObjectTable<ObjectTableObj>(objectRowAdapter, selectable: true)
      ..fullSize()
      ..fillContent = true
      ..createColumn('column 1', 100, sortable: true)
      ..createColumn('column 2', 100, sortable: true)
      ..createColumn('column 3', 100, sortable: true);
    final rowsData = <ObjectTableObj>[];
    for (var i = 0; i < 100; i++) {
      rowsData.add(ObjectTableObj()
        ..column1 = 'string $i'
        ..column2 = i
        ..column3 = DateTime.now().add(-Duration(days: i)));
    }
    ret.objects = rowsData;
    return ret;
  }
}

class ObjectTableObj {
  String column1 = '';
  int column2 = 0;
  DateTime column3 = DateTime.now();
}

List<dynamic> objectRowAdapter(ObjectTableObj object) => [object.column1, object.column2, object.column3];
