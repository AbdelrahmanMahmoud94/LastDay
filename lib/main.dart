import 'package:bmi/appbar.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_xlider/flutter_xlider.dart';

void main() {
  runApp(MaterialApp(
    home: MyApp(),
    debugShowCheckedModeBanner: false,
  ));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  MyAppbar b = MyAppbar();

  double _lowerValue = 0;
  double h = 0;
 int w=0;
  int age=0;
  double _upperValue = 200;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: b.changeTitle("BMI"),
        body: Container(
            color: Color(0xff1d2136),
            child: Column(children: [
              FittedBox(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff24263b),
                        ),
                        width: 180,
                        height: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.merge_type_outlined,
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              "Male",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff24263b),
                        ),
                        width: 180,
                        height: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.pregnant_woman_outlined,
                              color: Colors.white,
                              size: 100,
                            ),
                            Text(
                              "Female",
                              style:
                                  TextStyle(fontSize: 30, color: Colors.white),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.all(12),
                child: Container(
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Color(0xff24263b)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          "Height",
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 15),
                        child: Text(
                          h.toString(),
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ),
                      FlutterSlider(
                        values: [h],
                        max: 200,
                        min: 0,
                        onDragging: (handlerIndex, lowerValue, upperValue) {
                          _lowerValue = lowerValue;
                          _upperValue = upperValue;
                          setState(() {
                            h = _lowerValue;
                          });
                        },
                        trackBar: FlutterSliderTrackBar(
                          inactiveTrackBarHeight: 14,
                          activeTrackBarHeight: 10,
                          inactiveTrackBar: BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Colors.black12,
                            // border: Border.all(width: 3, color: Colors.blue),
                          ),
                          activeTrackBar: BoxDecoration(
                              borderRadius: BorderRadius.circular(4),
                              color: Colors.pink.withOpacity(0.5)),
                        ),
                        // step: FlutterSliderStep(step: 20),
                      ),
                    ],
                  ),
                ),
              ),
              FittedBox(
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff24263b),
                        ),
                        width: 180,
                        height: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Weight",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                w.toString(),
                                style: TextStyle(
                                    fontSize: 50, color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                GestureDetector(
                                  onTap:(){
                                    setState(() {
                                      w++;
                                    });
                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xff5d5f6e),
                                    child: Icon(Icons.add),
                                  ),
                                ),
                                GestureDetector(
                                  onTap: (){
                                    setState(() {
                                      w==0?0: w--;
                                    });

                                  },
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: Color(0xff5d5f6e),
                                    child: Padding(
                                      padding: EdgeInsets.only(bottom: 15),
                                      child: Icon(Icons.minimize),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(12),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Color(0xff24263b),
                        ),
                        width: 180,
                        height: 180,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Age",
                                style: TextStyle(
                                    fontSize: 30, color: Colors.white),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(top: 8.0),
                              child: Text(
                                "60",
                                style: TextStyle(
                                    fontSize: 50, color: Colors.white),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xff5d5f6e),
                                  child: Icon(Icons.add),
                                ),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundColor: Color(0xff5d5f6e),
                                  child: Padding(
                                    padding: EdgeInsets.only(bottom: 15),
                                    child: Icon(Icons.minimize),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ])));
  }
}
