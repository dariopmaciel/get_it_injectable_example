import 'dart:math';

import 'package:injectable/injectable.dart';

@lazySingleton
class RandomLazySingletonModel {
  final int id;
  final String name;

  RandomLazySingletonModel()
      : id = Random().nextInt(1000),
        name = "RandomLazySingletonModel" {
    print('$name: id: $id');
  }
}
