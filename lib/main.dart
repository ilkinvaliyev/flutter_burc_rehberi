import 'package:flutter/material.dart';
import 'package:flutter_burc_rehberi/burc_detail.dart';
import 'package:flutter_burc_rehberi/burc_lists.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Burc Rehberi",
      theme: ThemeData(
        primarySwatch: Colors.pink
      ),
      debugShowCheckedModeBanner: false,

      routes: {
        '/' : (context) => BurcLists(),
        '/burcLists' : (context) => BurcLists(),
      },

      onGenerateRoute: (RouteSettings settings){
        List<String> pathElements = settings.name.split("/");

        if(pathElements[1]=='burcDetail'){
          return MaterialPageRoute(builder: (context) => BurcDetail(int.parse(pathElements[2])));
        }
        return null;
      },

    );
  }
}