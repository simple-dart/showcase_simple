import 'package:simple_dart_headed_panel/simple_dart_headed_panel.dart';
import 'package:simple_dart_repository_table/simple_dart_repository_table.dart';
import 'package:simple_dart_starter_simple/simple_dart_starter_simple.dart';

class RepositoryTableView extends View {
  RepositoryTableView() {
    id = 'repository_table';
    caption = 'RepositoryTable';
    fullSize();
    fillContent = true;
    padding = '10px';
    vertical = true;
    fillContent = true;
    fullSize();
    spacing = '10px';
    final exampleRepositoryTable = ExampleRepositoryTable()..loadMore();
    addAll([
      HeadedPanel()
        ..caption = 'RepositoryTable'
        ..addContent([exampleRepositoryTable])
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

  Future<List<ExampleRepositoryObject>> loadMore() async {
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

ExampleRepository exampleRepository = ExampleRepository();

class ExampleRepositoryTable extends RepositoryTable<ExampleRepositoryObject> {
  ExampleRepositoryTable() : super(exampleRepository.loadMore, exampleObjectRowAdapter) {
    fillContent = true;
    fullSize();
    createColumn('column1', 100);
    createColumn('column2', 100);
    createColumn('column3', 100);
    onLoadMore.listen((event) {
      headerLabel.caption = 'Loaded: ${exampleRepository.loadedCount}/${exampleRepository.totalCount}';
    });
  }
}
