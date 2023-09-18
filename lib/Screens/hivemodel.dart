
import 'package:hive/hive.dart';
part 'hivemodel.g.dart';


@ HiveType(typeId: 0)
class UserInformationHiveModel extends HiveObject {
  @HiveField(0)
  String? Name;
  @HiveField(1)
  String? Roll;
  @HiveField(2)
  String? Deparment;
  @HiveField(3)
  String? semester;
  UserInformationHiveModel({  required this.Name,required this.Roll,required this.Deparment,required this.semester});
}