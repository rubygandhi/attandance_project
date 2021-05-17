import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:velocity_x/velocity_x.dart';
class Attendance extends StatefulWidget {
  const Attendance({Key key}) : super(key: key);

  @override
  _AttendanceState createState() => _AttendanceState();
}

class _AttendanceState extends State<Attendance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Vx.amber500,
        title: Center(child: "Attendance".text.semiBold.maxFontSize(38).make()),

      ),

      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.orangeAccent,
        onPressed: () {

          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
            ),
          );
        },
        label: Text('Check in'),
        icon: Icon(Icons.add),
      ),
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [

                      Text("Start Date"),
                      Text('25/05/21'),
                    ],
                  ),
                  Column(
                    children: [

                      Text('End Date'),
                      Text('21/05/21'),
                    ],
                  ),
                  Column(
                    children: [

                      "Search".text.center.make().box.alignCenter.roundedLg.color(Colors.orangeAccent).height(30).width(100).make(),
                    ],
                  ),
                ],
              ),

            ),
          ),
          Card(

            color: Colors.grey[300],
            child: Row(
              children:["Attendance Date 16/05/21".text.align(TextAlign.center).semiBold.make().p12().box.height(40).make()],


            ),
          ),
          HeightBox(0),
          Card(


              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,

                children: [
                   Row(
                    children: [
                      "Check in".text.align(TextAlign.center).make().box.height(context.screenHeight*0.03).width(context.screenWidth*0.14).make(),
                      "15:06".text.align(TextAlign.center).make().box.height(context.screenHeight*0.03).width(context.screenWidth*0.14).gray300.make(),


                      Row(
                        children: [

                          "Check out".text.align(TextAlign.center).make().box.height(context.screenHeight*0.03).width(context.screenWidth*0.14).make(),
                          "15:06".text.align(TextAlign.center).make().box.height(context.screenHeight*0.03).width(context.screenWidth*0.14).gray300.make(),

                        ],
                      ),
                      Row(
                        children: [
                          "Total time".text.align(TextAlign.center).make().box.height(context.screenHeight*0.03).width(context.screenWidth*0.14).make(),
                          "15:06".text.align(TextAlign.center).make().box.height(context.screenHeight*0.03).width(context.screenWidth*0.14).gray300.make(),

                        ],
                      ),


                    ],
                  ),
                ],

              ),

            ),
          HeightBox(20),
          Container(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                "Check in Location".text.make(),
                "Check out Location".text.make(),

              ],
            ),
          ),
          Container(
            child:
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                "Pune".text.color(Colors.orangeAccent).make(),
                "Pune".text.color(Colors.orangeAccent).make(),

              ],
            ),
          ),


        ],
      ),






    );
  }
}
