import 'package:flutter/material.dart';
class ShowData extends StatefulWidget {
  const ShowData({super.key,this.Name, this.Roll, this.Deparment, this.semester,});
final String? Name;
final String? Roll;
final String? Deparment;
final String? semester;

  @override
  State<ShowData> createState() => _ShowDataState();
}

class _ShowDataState extends State<ShowData> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body:SingleChildScrollView(
        child: Column(
          children: [
            Card(
              shadowColor: Colors.red,
              elevation: 5,
              shape: OutlineInputBorder(borderSide: BorderSide.none,
              borderRadius: BorderRadius.all(Radius.circular(10))),
              child:SizedBox(height: 100,
              width: 330,
              child: Center(child: Text(widget.Name.toString())),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              shadowColor: Colors.blue,
              elevation: 5,
              shape: OutlineInputBorder(borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child:SizedBox(height: 100,
                width: 330,
                child: Center(child: Text(widget.Roll.toString())),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              shadowColor: Colors.green,
              elevation: 5,
              shape: OutlineInputBorder(borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child:SizedBox(height: 100,
                width: 330,
                child: Center(child: Text(widget.Deparment.toString())),
              ),
            ),
            SizedBox(height: 10,),
            Card(
              shadowColor: Colors.black,
              elevation: 5,
              shape: OutlineInputBorder(borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(10))),
              child:SizedBox(height: 100,
                width: 330,
                child: Center(child: Text(widget.semester.toString())),
              ),
            ),
        ],),
      )
    );
  }
}
