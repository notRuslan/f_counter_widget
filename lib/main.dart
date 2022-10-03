import 'package:flutter/material.dart';

void main() => runApp(MyAppCounter());

class MyAppCounter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Text('App Counter'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                const Text(
                  'Tap "-" to decrement',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                  ),
                ),
                CounterWidget(),
                const Text(
                  'Tap "+" to increment',
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  State createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<StatefulWidget> {
  var _counter = 60;

  void _changeCounter(String? action) {
    setState(() {
      if ('plus' == action) {
        _counter++;
      } else {
        _counter--;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          IconButton(
            icon: Icon(Icons.remove),
            onPressed: () => _changeCounter('minnus'),
            color: Colors.black,
          ),
          Text(
            '$_counter',
            style: TextStyle(color: Colors.black, fontSize: 20),
          ),
          IconButton(
            icon: Icon(Icons.add),
            onPressed: () => _changeCounter('plus'),
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
