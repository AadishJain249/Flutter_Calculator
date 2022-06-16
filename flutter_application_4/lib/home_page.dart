import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var num1 = 0, num2 = 0, result = 0;
  final TextEditingController t1 = new TextEditingController(text: '0');
  final TextEditingController t2 = new TextEditingController(text: '0');
  void add() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 + num2;
    });
  }

  void sub() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 - num2;
    });
  }

  void mul() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 * num2;
    });
  }

  void div() {
    setState(() {
      num1 = int.parse(t1.text);
      num2 = int.parse(t2.text);
      result = num1 ~/ num2;
    });
  }

  void clr() {
    setState(() {
      t1.text = "0";
      t2.text = "0";
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Calculator'),
        ),
        body: new Container(
          padding: const EdgeInsets.all(60.0),
          child: new Column(children: <Widget>[
            new Text('Output:$result',
                style: new TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w900,
                    color: Colors.purple)),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter the 1st Number",
                // border: OutlineInputBorder(),
              ),
              style: TextStyle(fontSize: 20.0),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              decoration: new InputDecoration(
                hintText: "Enter the 2nd Number",
                // border: OutlineInputBorder(),
              ),
              style: TextStyle(fontSize: 20.0),
              controller: t2,
            ),
            new Padding(padding: const EdgeInsets.only(top: 40.0)),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "+",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  color: Colors.black,
                  onPressed: add,
                ),
                new MaterialButton(
                  child: new Text(
                    "-",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  color: Colors.black,
                  onPressed: sub,
                ),
                new Padding(padding: const EdgeInsets.only(top: 60.0)),
              ],
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new MaterialButton(
                  child: new Text(
                    "/",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  color: Colors.black,
                  onPressed: div,
                ),
                new MaterialButton(
                  child: new Text(
                    "*",
                    style: new TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.w900,
                        color: Colors.white),
                  ),
                  color: Colors.black,
                  onPressed: mul,
                ),
                new Padding(padding: const EdgeInsets.only(top: 60.0)),
              ],
            ),
            new Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  new MaterialButton(
                      color: Colors.red,
                      minWidth: 150,
                      height: 30.0,
                      child: new Text(
                        'Clear',
                        style:
                            new TextStyle(fontSize: 30.0, color: Colors.white),
                      ),
                      onPressed: clr)
                ])
          ]),
        ));
  }
}
