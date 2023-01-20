import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_loadable_object_table/simple_dart_loadable_object_table.dart';
import 'package:simple_dart_object_table/simple_dart_object_table.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';
import 'package:simple_dart_table/simple_dart_table.dart';

class RepositoryTableView extends View {
  RepositoryTableView() {
    id = 'loadable_object_table';
    caption = 'LoadableObjectTable';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    fillContent = true;
    fullSize();
    spacing = '10px';
    final exampleObjectTable = ExampleObjectTable();
    final exampleRepository = ExampleRepository();
    LoadableObjectTable<ExampleRepositoryObject>(exampleObjectTable, exampleRepository.loadNext).handleLoadNext();
    addAll([
      HeadedPanel()
        ..caption = 'RepositoryTable'
        ..addContent([exampleObjectTable])
        ..fillContent = true,
    ]);
  }
}

class ExampleRepositoryObject {
  String column1 = '';
  int column2 = 0;
  bool column3 = false;
}

class ExampleRepository {
  ExampleRepository();

  int totalCount = 0;
  int lastKey = 0;
  int loadedCount = 0;
  int pageSize = 100;

  Future<List<ExampleRepositoryObject>> loadNext() async {
    var lastId = 0;
    totalCount = 10000000000;
    final parsedAfter = lastKey;
    lastId = parsedAfter;
    lastKey = lastId + pageSize;
    final ret = <ExampleRepositoryObject>[];
    for (var i = lastId; i < lastId + pageSize; i++) {
      final obj = ExampleRepositoryObject()
        ..column1 = 'column1 $i'
        ..column2 = i
        ..column3 = i % 2 == 0;
      ret.add(obj);
      loadedCount++;
    }
    return ret;
  }
}

List<dynamic> exampleObjectRowAdapter(ExampleRepositoryObject object) => [
      object.column1,
      object.column2,
      object.column3,
    ];

class ExampleObjectTable extends ObjectTable<ExampleRepositoryObject> {
  ExampleObjectTable() : super(exampleObjectRowAdapter) {
    fillContent = true;
    fullSize();
    initColumns([
      TableColumnDescr()
        ..caption = 'column 1'
        ..width = 100,
      TableColumnDescr()
        ..caption = 'column 2'
        ..width = 100,
      TableColumnDescr()
        ..caption = 'column 3'
        ..width = 100,
    ]);
  }
}
