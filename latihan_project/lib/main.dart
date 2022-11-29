import 'package:flutter/material.dart';
import 'pages/myactionbutton.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project UI',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProjectPage(),
    );
  }
}

class ProjectPage extends StatelessWidget {
  const ProjectPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: MyActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: MyAppBar(),
      body: Container(
        child: ListView(
          children: [
            SizedBox(
              height: 16.0,
            ),
            MyAppBar(),
            SizedBox(
              height: 16.0,
            ),
            FoodListView(),
            SizedBox(
              height: 16.0,
            ),
            SekectTyoeSection(),
            SizedBox(
              height: 16.0,
            ),
            MenuItemList(),
          ],
        ),
      ),
    );
  }
}
