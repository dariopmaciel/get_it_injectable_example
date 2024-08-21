import 'dart:math';

import 'package:injectable/injectable.dart';
@injectable
class RandomSingletonModel {
  final int id;
  final String name;

  RandomSingletonModel()
      : id = Random().nextInt(1000),
        name = "RandomSingletonModel" {
    print('$name: id: $id');
  }
}
