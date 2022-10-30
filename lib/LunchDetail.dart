import 'package:flutter/material.dart';
import 'Lunch.dart';

class LunchDetail extends StatefulWidget {
  final Lunch lunch;

  const LunchDetail({
    Key? key,
    required this.lunch,
  }) : super (key: key);

  @override
  _LunchDetailState createState() {
    return _LunchDetailState();
  }
}
  class _LunchDetailState extends State<LunchDetail>{
    @override
    Widget build(BuildContext context){
      return Scaffold(
        appBar: AppBar(
          title: Text(widget.lunch.day),
        ),
        body: SafeArea(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 300,
                width: double.infinity,
                child:Image(
                  image: AssetImage(widget.lunch.imageUrl),
                ),
              ),
              const SizedBox(
                height:4,
              ),
              Text(
                widget.lunch.day,
                style: const TextStyle(fontSize:30),
              ),
              Expanded(
                 child: ListView.builder(
                  padding: const EdgeInsets.all(7.0),
                  itemCount: widget.lunch.foods.length,
                  itemBuilder: (BuildContext contex, int index){
                    final food= widget.lunch.foods[index];
                    return Text(food, style: const TextStyle(fontSize:20));
                  },
                 ),
              ),
             ]
          )
        )
      );
    }
  }

