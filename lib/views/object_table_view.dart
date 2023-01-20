import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_object_table/simple_dart_object_table.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_table/simple_dart_table.dart';

class ObjectTableView extends View {
  ObjectTableView() {
    id = 'object_table';
    caption = 'ObjectTable';
    fullSize();
    padding = '10px';
    spacing = '10px';
    vertical = true;
    fillContent = true;
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
    final ret = ObjectTable<ObjectTableObj>(objectRowAdapter)
      ..fullSize()
      ..fillContent = true
      ..initColumns([
        TableColumnDescr()
          ..caption = 'column 1'
          ..width = 100
          ..sortable = true,
        TableColumnDescr()
          ..caption = 'column 2'
          ..width = 100
          ..sortable = true,
        TableColumnDescr()
          ..caption = 'column 3'
          ..width = 100
          ..sortable = true,
      ])
      ..checkboxVisible = true;
    final objects = <ObjectTableObj>[];
    for (var i = 0; i < 100; i++) {
      objects.add(ObjectTableObj()
        ..column1 = 'string $i'
        ..column2 = i
        ..column3 = DateTime.now().add(-Duration(days: i)));
    }
    ret.objects = objects;
    return ret;
  }
}

class ObjectTableObj {
  String column1 = '';
  int column2 = 0;
  DateTime column3 = DateTime.now();
}

List<dynamic> objectRowAdapter(ObjectTableObj object) => [object.column1, object.column2, object.column3];
