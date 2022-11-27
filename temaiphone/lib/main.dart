import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
      home: IphonePage(),
    );
  }
}

class IphonePage extends StatefulWidget {
  IphonePage({super.key});

  @override
  State<IphonePage> createState() => _IphonePageState();
}

class _IphonePageState extends State<IphonePage> {
  DateTime date = DateTime(2022, 11, 22);

  void _showdialog(Widget child) {
    showCupertinoModalPopup<void>(
        context: context,
        builder: (BuildContext) => Container(
              height: 250,
              padding: EdgeInsets.only(top: 10.0),
              margin: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              color: CupertinoColors.systemBackground.resolveFrom(context),
              child: SafeArea(
                top: false,
                child: child,
              ),
            ));
  }

  showActionSheet(){
    showCupertinoModalPopup(
      context: context, 
      builder: (BuildContext context) => 
      CupertinoActionSheet(
        title: Text('Pilih Salah Satu'),
        actions: [
          CupertinoActionSheetAction(
            onPressed: (){
              print('S1 Informatika');
            }, 
            child: Text('S1 Informatika'),
          ),
          CupertinoActionSheetAction(
            onPressed: (){
              print('S1 Sistem Informasi');
            }, 
            child: Text('S1 Sistem Informasi'),
          ),
          CupertinoActionSheetAction(
            onPressed: (){
              print('S1 Bisnis Digital');
            }, 
            child: Text('S1 Bisnis Digital'),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(10),
        child: Column(
          children: [
            CupertinoButton(
              child: Text('Pilih Program Studi'),
              onPressed: () {
                showActionSheet();
              },
            ),
            CupertinoButton(
              child: Text('Pilih Tanggal'),
              onPressed: () {
                _showdialog(
                  CupertinoDatePicker(
                    onDateTimeChanged: (DateTime newDate) {
                      setState(() => date = newDate);
                    },
                    initialDateTime: date,
                    mode: CupertinoDatePickerMode.date,
                    use24hFormat: true,
                  )
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
