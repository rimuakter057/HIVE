import 'package:flutter/material.dart';
import 'package:hive/hive.dart';

import 'package:hive_flutter/adapters.dart';
import 'hivemodel.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _rollController = TextEditingController();
  final TextEditingController _depController = TextEditingController();
  final TextEditingController _semController = TextEditingController();
  List data = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.black,
        title: Text("SignIn",
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.w200,
                color: Colors.white)),
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    TextField(
                      controller: _nameController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.amber.shade100,
                        hintText: "Name",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _rollController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.blue.shade200,
                        hintText: "Roll",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _depController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.cyanAccent.shade100,
                        hintText: "deparment",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextField(
                      controller: _semController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.deepPurple.shade100,
                        hintText: "Semester",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey, width: 5),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    InkWell(
                        onTap: () async {
                          Box abc = Hive.box<UserInformationHiveModel>('MyBox');
                          await abc.add(UserInformationHiveModel(
                            Name: _nameController.text,
                            Roll: _rollController.text,
                            Deparment: _depController.text,
                            semester: _semController.text,
                          ));
                        },
                        child: Card(
                          color: Colors.black,
                          shape: OutlineInputBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                              borderSide: BorderSide.none),
                          child: SizedBox(
                            height: 60,
                            width: 330,
                            child: Center(
                                child: Text(
                              "Save",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 40),
                            )),
                          ),
                        )),
                    Row(
                      children: [
                        InkWell(
                            onTap: () async {
                              Box abc = Hive.box<UserInformationHiveModel>('MyBox');
                              data = abc.values.toList();
                              setState(() {});
                            },
                            child: Card(
                              color: Colors.black,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  borderSide: BorderSide.none),
                              child: SizedBox(
                                height: 60,
                                width: 100,
                                child: Center(
                                    child: Text(
                                  "See",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                              ),
                            )),
                        InkWell(
                            onTap: () async {
                              Box abc = Hive.box<UserInformationHiveModel>('MyBox');
                              await abc.clear();
                              data = abc.values.toList();
                              setState(() {});
                            },
                            child: Card(
                              color: Colors.black,
                              shape: OutlineInputBorder(
                                  borderRadius: BorderRadius.all(Radius.circular(30)),
                                  borderSide: BorderSide.none),
                              child: SizedBox(
                                height: 60,
                                width: 100,
                                child: Center(
                                    child: Text(
                                  "delet",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w400,
                                  ),
                                )),
                              ),
                            )),
                      ],
                    ),

                  ],
                ),
              ),
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListView.builder(
                        shrinkWrap: true,
                        itemCount: data.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            title: Text('${data[index].Name}  ${data[index].Roll}'),
                            subtitle: Text(
                                '${data[index].Deparment}  ${data[index].semester}'),
                          );
                        }),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
