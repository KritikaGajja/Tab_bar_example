import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'pageone.dart';
import 'pagetwo.dart';
import 'pagethree.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.yellow,
      ),
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      animationDuration: Duration(seconds:1),
      length: 3,
      child: Scaffold(
        appBar: AppBar(
         bottom:TabBar(
           unselectedLabelColor: Colors.grey,
           indicatorColor: Colors.deepPurple,
           enableFeedback: true,
           isScrollable: true,
           indicatorWeight: 10,
           tabs: [
             Tab(
                 child:
                 Row(
                   children: [
                     FaIcon(FontAwesomeIcons.message,size: 20),
                     SizedBox(width: 14,),
                     Text("chat"),
                   ],
                 )
             ),
             Tab(
               child:
               Row(
                 children: [
                   Icon(Icons.image,size: 20,),
                   SizedBox(width: 14,),
                   Text("Status"),
                 ],
               ),
             ),
             Tab(
               child:
               Row(
                 children: [
                   Icon(Icons.call,size: 20),
                   SizedBox(width: 14,),
                   Text("calls"),
                 ],
               )
             )

           ],
         ) ,
          title: Text('tab bar'),
        ),
        body: TabBarView(
          children: [
            PageOne(),
            PageTwo(),
            PageThree(),
          ],
        )
      ),
    );
  }
}
