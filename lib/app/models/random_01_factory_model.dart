// class RandomFactoryModel {
//   int id;
//   String name;

//   RandomFactoryModel()
//       : id = Ramdom().nextInt(1000),
//         name = "RamdomFactoryModel";
// }

import 'dart:math';

import 'package:injectable/injectable.dart';


@injectable
class RandomFactoryModel {
  final int id;
  final String name;

  RandomFactoryModel()
      : id = Random().nextInt(1000),
        name = "RandomFactoryModel"{
          print('$name: id: $id');
        }
}
