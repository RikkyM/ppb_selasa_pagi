import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // scrollBehavior: CustomScrollBehavior(),
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: ListViewPage(),
    );
  }
}

class ListViewPage extends StatefulWidget {
  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView(
      children: [
        for (int i = 1; i <= 10; i++) ...[
          Container(
            height: 250,
            decoration:
                BoxDecoration(color: i % 2 != 0 ? Colors.red : Colors.blue),
            child: Center(child: Text('$i')),
          )

          // if (i % 2 == 0) ...[
          //   Container(
          //     height: 250,
          //     color: Colors.blue,
          //     child: Center(
          //       child: Text(
          //         '$i',
          //         style: TextStyle(
          //           fontSize: 40,
          //         ),
          //       ),
          //     ),
          //   )
          // ] else ...[
          //   Container(
          //     height: 250,
          //     color: Colors.red,
          //     child: Center(
          //         child: Text(
          //       '$i',
          //       style: TextStyle(fontSize: 40),
          //     )),
          //   )
          // ]
        ]
      ],
    )

        // body: ListView(
        //   scrollDirection: Axis.horizontal,

        //   children: [
        //     Container(
        //       // height: 250,
        //       width: 250,
        //       decoration: BoxDecoration(color: Colors.black),
        //       child: Center(
        //         child: Text(
        //           '1',
        //           style: TextStyle(fontSize: 20, color: Colors.white),
        //         ),
        //       ),
        //     ),
        //     Container(
        //       // height: 150,
        //       width: 250,
        //       color: Colors.red,
        //       child: Center(child: Text('2', style: TextStyle(color: Colors.white),)),
        //     ),
        //     Container(
        //       child: Center(child: Text('3', style: TextStyle(color: Colors.white),)),
        //       color: Colors.yellow,
        //       // height: 200,
        //       width: 250,
        //     ),
        //     Container(
        //       child: Center(child: Text('4', style: TextStyle(color: Colors.white))),
        //       color: Colors.green,
        //       // height: 350,
        //       width: 250,
        //     )
        //   ],
        // ),
        );
  }
}
