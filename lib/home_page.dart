import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, sum = 0;
  // controller that controls text fields
  final TextEditingController t1 = TextEditingController(text: " ");
  final TextEditingController t2 = TextEditingController(text: " ");
  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 - num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 ~/ num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      sum = num1 * num2;
    });
  }

  void clear() {
    setState(() {
      t1.text = " ";
      t2.text = " ";
      sum = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calculator"),
      ),
      body: Container(
        padding: EdgeInsets.all(40.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Text("Output: $sum",
                    style: TextStyle(
                        fontSize: 20.0,
                        color: Colors.amberAccent,
                        fontWeight: FontWeight.bold)),
                Padding(
                  padding: EdgeInsets.only(right: 100.0),
                ),
                MaterialButton(
                  // color: Colors.white70,
                  child: Icon(
                    Icons.clear_all,
                    color: Colors.amberAccent,
                    size: 35.0,
                  ),
                  onPressed: clear,
                )
              ],
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 40.0),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("+"),
                  color: Colors.amberAccent,
                  onPressed: add,
                ),
                MaterialButton(
                  child: Text("-"),
                  color: Colors.amberAccent,
                  onPressed: sub,
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                MaterialButton(
                  child: Text("*"),
                  color: Colors.amberAccent,
                  onPressed: mul,
                ),
                MaterialButton(
                  child: Text("/"),
                  color: Colors.amberAccent,
                  onPressed: div,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
