import 'package:flutter_app1/model/home_model_example_entity.dart';
import 'package:flutter_app1/model/user2_entity.dart';
import 'package:flutter_app1/model/userbean_entity.dart';

class EntityFactory {
  static T generateOBJ<T>(json) {
    if (1 == 0) {
      return null;
    } else if (T.toString() == "HomeModelExampleEntity") {
      return HomeModelExampleEntity.fromJson(json) as T;
    } else if (T.toString() == "User2Entity") {
      return User2Entity.fromJson(json) as T;
    } else if (T.toString() == "UserbeanEntity") {
      return UserbeanEntity.fromJson(json) as T;
    } else {
      return null;
    }
  }
}