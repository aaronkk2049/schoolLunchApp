import 'package:flutter/material.dart';
import 'Lunch.dart';
import 'LunchDetail.dart';
void main() {
  runApp(const SchoolLunchApp());
}

class SchoolLunchApp extends StatelessWidget {
  const SchoolLunchApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    final ThemeData theme= ThemeData();
    return MaterialApp(
      title: 'School Lunch',
      theme: theme.copyWith(
        colorScheme: theme.colorScheme.copyWith(
          primary: Colors.blueAccent,
          secondary: Colors.orange[700],
        ),
      ),
      home: const MyHomePage(title: 'School Lunch'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is statefulmeaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: GridView.builder(
          itemCount: Lunch.schedule.length,
          itemBuilder: (BuildContext context, int index){
            return GestureDetector(
              onTap: (){
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context){
                      return LunchDetail(lunch: Lunch.schedule[index]);
                    },
                  ),
                );
              },
              child: buildLunchCard(Lunch.schedule[index]),
            );
          },
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              childAspectRatio: 2.85/3, crossAxisCount:2,),
          ),
        ),
      );
  }
  Widget buildLunchCard(Lunch lunch){
    double Width =MediaQuery.of(context).size.width;
    return Card(
      elevation:2.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            AspectRatio(
                aspectRatio: 505/451,
              child: Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    fit:BoxFit.contain,
                    alignment: FractionalOffset.topCenter,
                    image: AssetImage(lunch.imageUrl),
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 0.03*Width,
            ),
            Text(
              lunch.day,
              style: TextStyle(
                fontSize: 0.03*Width,
                fontWeight: FontWeight.w700,
                fontFamily: 'Arial',
              ),
            )
          ],
        ),
      ),
    );
  }
}

