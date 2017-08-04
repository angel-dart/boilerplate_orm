library angel.src.models.user;

import 'package:angel_model/angel_model.dart';
import 'package:angel_orm/angel_orm.dart';
import 'package:angel_serialize/angel_serialize.dart';
part 'user.g.dart';

@serializable
@orm
class _User extends Model {
  String username, email, password, salt;
}