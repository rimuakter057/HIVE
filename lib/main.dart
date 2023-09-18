import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/adapters.dart';

import 'Screens/HomePage.dart';
import 'Screens/hivemodel.dart';
void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  Hive.registerAdapter(UserInformationHiveModelAdapter());
  Hive.openBox<UserInformationHiveModel>("MyBox");
  runApp(const hive_database_project ());
}
class hive_database_project extends StatefulWidget {
  const hive_database_project({super.key});

  @override
  State<hive_database_project> createState() => _hive_database_projectState();
}

class _hive_database_projectState extends State<hive_database_project> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  HomePage(),
    );
  }
}
