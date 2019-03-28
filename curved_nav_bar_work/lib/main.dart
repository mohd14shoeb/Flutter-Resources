import 'package:flutter/material.dart';
import 'package:curved_nav_bar_work/HomePage.dart';
import 'package:curved_nav_bar_work/SearchPage.dart';
import 'package:curved_nav_bar_work/WorkPage.dart';


import 'package:curved_navigation_bar/curved_navigation_bar.dart';

void main() => runApp(MyApp());


class MyApp extends StatefulWidget{




  @override
  State<StatefulWidget> createState(){
    return MyAppState();


  }
}

class MyAppState extends State<MyApp> {


  //This is important,to set every page for a value.

  int _selectPage = 0;


  //depends on _selectPage int,then set _pageOption in body ,example _pageOption  (which put index = _selectpage = 1)
  final _pageOption = [
    //This presents 1
    HomePage(),
    //This presents 2
    SearchPage(),
    //This presents 3
    WorkPage(),

  ];


  @override
  Widget build(BuildContext context) {

    //This is the whole app
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',

      theme: ThemeData(

      ),
      home: Scaffold(

        //There are three parts of app : appBar (Top),  body (Middle), bottomNavigationBar (Bottom)

        //Part 1

          appBar:

          PreferredSize(
              preferredSize: Size.fromHeight(0.0),
              child: AppBar(title: Text(''))











          ),


          //Part 2
          //***This is the code makes array works as page changing method,it sets body as _pageOption[**line 32]
          body: _pageOption[_selectPage],

          //Part 3
          bottomNavigationBar:

          PreferredSize(
            //preferredSize: Size.fromWidth(0.0),
            child:



            CurvedNavigationBar(









              //each index represent a number,when tap,var a number then switch to that page.
              onTap: (int index) {
                setState(() {

                  //set _selectpage as index,which is items array int
                  _selectPage = index;
                });
              },


              //It is a array,icon 1 = 1 = index,refers to onTap setState
              items: <Widget>[
                Icon(Icons.home, size: 25),
                Icon(Icons.search, size: 25),
                Icon(Icons.person, size: 25),




              ],
              //animation
              animationDuration: Duration(milliseconds: 600),
              animationCurve: Curves.easeInOut,
              backgroundColor: Colors.blueAccent,

            ),)


      ),
    );
  }

}