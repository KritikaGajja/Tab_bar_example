import 'dart:math';

import 'package:flutter/material.dart';

class PageOne extends StatefulWidget{
  @override
  State<PageOne> createState() => _PageOneState();
}

class _PageOneState extends State<PageOne> {
  var wcontainer=200.0;

  var hcontainer=100.0;

  var colorContainer = Colors.yellow;
  var radius = 21.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      body: Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AnimatedContainer(
              duration: Duration(seconds: 2),
              width: wcontainer,
              height: hcontainer,
                curve:Curves.fastLinearToSlowEaseIn,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(radius),
                  color:colorContainer,
                )
            ),
            SizedBox.square(dimension:21,),
            ElevatedButton(onPressed: (){
              setState((){
                var newHeight = Random().nextInt(500).toDouble();
                var newWidth=Random().nextInt(500).toDouble();
                print("Width: $newWidth, Height: $newHeight");
                wcontainer= newWidth;
                hcontainer=newHeight;
                colorContainer= Colors.primaries[Random().nextInt(Colors.primaries.length)];
                radius=Random().nextInt(50).toDouble();
              });
            }, child: Text('Animate'))
          ],
        )

      ),
    );
      }
}